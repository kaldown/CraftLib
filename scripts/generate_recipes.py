#!/usr/bin/env python3
"""Generate CraftLib recipe Lua files from DB2 data.

Usage:
    python generate_recipes.py --bucket tbc
"""

import argparse
import sys
from dataclasses import dataclass, field
from pathlib import Path

import db2
from buckets import (BUCKETS, PROFESSIONS, Profession, UnknownProfessionError,
                     add_bucket_argument, get_bucket)
from db2 import CanaryError, ColumnContractError
from pipeline_io import atomic_write_text, load_json

REPO_ROOT = Path(__file__).resolve().parent.parent


EMITTABLE_SOURCE_TYPES = ("TRAINER", "REPUTATION", "VENDOR", "DROP", "QUEST", "DISCOVERY", "STARTER")
EXCEPTION_CATEGORIES = {"exclude": "exclude", "reagentless": "reagentless",
                        "shipNeedsReview": "ship_needs_review"}


class GenerateError(ValueError):
    """A data gap that must be aligned (or explicitly excepted with a reason) before release."""


@dataclass(frozen=True)
class Exceptions:
    """spell id (str) -> reason, per category, for ONE bucket."""
    exclude: dict = field(default_factory=dict)
    reagentless: dict = field(default_factory=dict)
    ship_needs_review: dict = field(default_factory=dict)


def load_exceptions(path: Path, bucket) -> Exceptions:
    """Read this bucket's entries from generate_exceptions.json.

    WHY a missing file is an empty Exceptions: exceptions only ever RELAX a hard failure,
    so absence can only make generation stricter. WHY the whole file is validated (not just
    this bucket): a typo'd bucket key would otherwise silently exempt nothing.
    """
    path = Path(path)
    if not path.is_file():
        return Exceptions()
    raw = load_json(path)
    result = {k: {} for k in EXCEPTION_CATEGORIES.values()}
    for key, body in raw.items():
        if key == "_doc":
            continue
        if key not in BUCKETS:
            raise GenerateError(f"{path.name}: unknown bucket key {key!r}; valid: {sorted(BUCKETS)}")
        seen: set[str] = set()
        for category, groups in body.items():
            if category not in EXCEPTION_CATEGORIES:
                raise GenerateError(f"{path.name} {key}: unknown category {category!r}; "
                                    f"valid: {sorted(EXCEPTION_CATEGORIES)}")
            for group in groups:
                spells, reason = group.get("spells"), group.get("reason")
                if not spells:
                    raise GenerateError(f"{path.name} {key}/{category}: empty 'spells' list")
                if not isinstance(reason, str) or not reason.strip():
                    raise GenerateError(f"{path.name} {key}/{category}: every entry needs a reason")
                for sp in spells:
                    # bool is an int subclass; reject it explicitly.
                    if not isinstance(sp, int) or isinstance(sp, bool):
                        raise GenerateError(f"{path.name} {key}/{category}: spell {sp!r} is not an int")
                    if str(sp) in seen:
                        raise GenerateError(f"{path.name} {key}: spell {sp} listed twice in one bucket")
                    seen.add(str(sp))
                    if key == bucket.key:
                        result[EXCEPTION_CATEGORIES[category]][str(sp)] = reason
    return Exceptions(**result)


def escape_lua_string(s: str) -> str:
    """Escape special characters for Lua string literals."""
    return s.replace("\\", "\\\\").replace('"', '\\"')



def load_verified_sources(sources_dir: Path, profession_name: str) -> dict | None:
    """Load verified sources from Sources/{Profession}.json.

    Returns dict mapping spell_id (str) to recipe dict (with source and difficulty),
    or None if file doesn't exist.
    """
    sources_file = sources_dir / f"{profession_name.replace(' ', '')}.json"
    if not sources_file.exists():
        return None

    data = load_json(sources_file)

    # Convert to spell_id -> full recipe data lookup (includes source and difficulty)
    return {
        spell_id: recipe
        for spell_id, recipe in data.get("recipes", {}).items()
    }



def load_vendor_reagents(path: Path) -> dict:
    """Load the curated allowlist: itemIdStr -> {name, verified, flavors?}.

    Strict on purpose (like pipeline_io.load_keep_trainer): a missing or misspelled
    key must not read as an empty allowlist, or the bucket would ship an empty
    VendorPrices.lua and every vendor reagent would silently lose its price.
    """
    data = load_json(path)
    if not isinstance(data, dict) or not isinstance(data.get("vendorReagents"), dict):
        raise GenerateError(f"{path}: expected an object with a 'vendorReagents' object "
                            f"(itemId -> {{name, verified}})")
    return data["vendorReagents"]


def load_item_details(data_dir: Path, bucket) -> dict:
    """itemIdStr -> ItemSparse row (column contract enforced by db2.load_table)."""
    return {row["ID"]: row for row in db2.load_table(data_dir, "ItemSparse", bucket)}


def compute_vendor_prices(allowlist: dict, item_details: dict, scope: str) -> list[dict]:
    """Per-unit vendor BUY prices for the allowlisted reagents present in this vendor scope.

    WHY divide by VendorStackCount: DB2 BuyPrice is the price for one VendorStackCount
    BATCH, not per unit; vials sell in stacks of 5, so storing the raw value would
    5x-overprice every Alchemy recipe. WHY fail loud (not emit 0/nil): an allowlisted
    reagent we cannot price is a release blocker to align by hand, exactly like the
    VENDOR-without-cost seam -- a silent 0 reads downstream as "free" and corrupts the
    cheapest path (PROJECT MANTRA: data truth over convenience).
    """
    entries: list[dict] = []
    for item_id_str, meta in allowlist.items():
        flavors = meta.get("flavors")
        # WHY skip (not fail) when flavor-scoped out: a DEFAULT-only reagent (e.g. Simple
        # Flour, absent from the Era/SoD build) must be ABSENT from the SoD table, not an error.
        if flavors and scope not in flavors:
            continue
        name = meta.get("name", f"item {item_id_str}")
        row = item_details.get(item_id_str)
        if row is None:
            raise ValueError(
                f"Vendor reagent '{name}' (item {item_id_str}) is allowlisted but absent "
                f"from ItemSparse for scope {scope}; recover the true price or align the "
                f"allowlist before release (data-truth)."
            )
        buy_price = int(row.get("BuyPrice") or 0)
        if buy_price <= 0:
            raise ValueError(
                f"Vendor reagent '{name}' (item {item_id_str}) has BuyPrice<=0 in ItemSparse "
                f"(scope {scope}); cannot derive a true vendor price - align before release "
                f"(data-truth)."
            )
        vsc = max(1, int(row.get("VendorStackCount") or 1))
        per_unit = round(buy_price / vsc)
        if buy_price % vsc != 0:
            print(f"  WARNING: {name} ({item_id_str}) BuyPrice {buy_price} not divisible by "
                  f"VendorStackCount {vsc}; per-unit rounded to {per_unit}", file=sys.stderr)
        entries.append({
            "itemId": int(item_id_str), "perUnit": per_unit, "buyPrice": buy_price,
            "vsc": vsc, "name": name, "verified": bool(meta.get("verified")),
        })
    entries.sort(key=lambda e: e["itemId"])
    return entries


def generate_vendor_prices_lua(entries: list[dict], bucket) -> str:
    """Emit Data/<Folder>/VendorPrices.lua text; folder and load-guard profile come from the registry."""
    folder = bucket.folder
    profile_token = bucket.profile
    lines = [
        f"-- Data/{folder}/VendorPrices.lua",
        "-- AUTO-GENERATED by scripts/generate_recipes.py (--vendor-prices-only). Do not edit by hand.",
        "-- Per-unit vendor BUY price (copper) for CONFIRMED vendor-stocked reagents only.",
        "-- WHY a separate itemId-keyed table (not a field on each reagent): a reagent like Silken",
        "-- Thread appears in hundreds of recipes; one keyed table avoids duplicating the price and",
        "-- the drift that invites. WHY per-unit (not raw BuyPrice): BuyPrice is a per-",
        "-- VendorStackCount BATCH price (vials sell in 5s); storing it raw 5x-overprices Alchemy.",
        "-- WHY an allowlist (not BuyPrice>0): 73% of all items carry an intrinsic BuyPrice incl.",
        "-- drops/herbs/ore; vendor-buyability is human-verified. See Data/Sources/vendor_reagents.json.",
        "local ADDON_NAME, CraftLib = ...",
        "",
        "CraftLib:RegisterVendorPrices({",
    ]
    # Emit profile unconditionally - the runtime load-guard keys on this field for every bucket.
    # This generalizes the old SoD-only flavor field to all profiles (TBC, Vanilla, WotLK, etc.).
    lines.append(f'    profile = "{profile_token}",  -- runtime load-guard: registers only on the matching client profile')
    lines.append("    prices = {")
    for e in entries:
        lines.append(
            f'        [{e["itemId"]}] = {e["perUnit"]},'
            f'  -- {e["name"]} (BuyPrice {e["buyPrice"]} / VendorStackCount {e["vsc"]})'
        )
    lines.append("    },")
    lines.append("})")
    lines.append("")
    return "\n".join(lines)


def emit_vendor_prices(item_details: dict, bucket, output_dir: Path, allowlist_path: Path) -> Path:
    """Compute + write Data/<folder>/VendorPrices.lua; warn loudly on unverified entries."""
    allowlist = load_vendor_reagents(allowlist_path)
    # WHY bucket.vendor_scope: the allowlist 'flavors' field uses the legacy DEFAULT/SOD
    # vocabulary. Vanilla and SoD share the Era build, where DEFAULT-only reagents (e.g.
    # Simple Flour) are absent, so both scope to "SOD"; the emitted guard tag still
    # carries the real profile.
    entries = compute_vendor_prices(allowlist, item_details, bucket.vendor_scope)  # may fail loud
    unverified = [e for e in entries if not e["verified"]]
    if unverified:
        names = ", ".join(f"{e['name']}({e['itemId']})" for e in unverified)
        print(f"  NOTE: {len(unverified)} vendor reagents are NOT in-game verified yet "
              f"(verified:false) - confirm before release: {names}", file=sys.stderr)
    lua = generate_vendor_prices_lua(entries, bucket)
    out_dir = output_dir / bucket.folder
    out_dir.mkdir(parents=True, exist_ok=True)
    out_file = out_dir / "VendorPrices.lua"
    atomic_write_text(out_file, lua)
    print(f"Generated {out_file}: {len(entries)} vendor reagents", file=sys.stderr)
    return out_file


def load_all_data(data_dir: Path, bucket) -> dict:
    """Load the DB2 tables the generator reads, through the column contract.

    Spell/Item/SkillLine are not loaded: they were never read.
    """
    print(f"Loading data from {data_dir}...", file=sys.stderr)
    data = {}
    for table in ("SpellName", "SpellEffect", "SpellReagents", "ItemSparse",
                  "SkillLineAbility", "ItemEffect", "Faction"):
        data[table] = db2.load_table(data_dir, table, bucket)
        print(f"  Loaded {table}: {len(data[table])} rows", file=sys.stderr)
    return data


def load_removed(sources_dir: Path, bucket) -> dict[str, set[str]]:
    """profession display name -> removed spell ids; {} when the bucket names no list."""
    if bucket.removed_recipes is None:
        print(f"Bucket '{bucket.key}' has no removed-recipes list; none applied.", file=sys.stderr)
        return {}
    path = sources_dir / bucket.removed_recipes
    if not path.is_file():
        # Registry names this file, so its absence is a config error, not "nothing removed".
        raise FileNotFoundError(
            f"bucket '{bucket.key}': removed-recipes file {bucket.removed_recipes} not found at {path}")
    removed_data = load_json(path)
    removed = {name: {str(r["spellId"]) for r in recs}
               for name, recs in removed_data.get("recipes", {}).items()}
    print(f"Loaded {sum(len(v) for v in removed.values())} removed recipes from {bucket.removed_recipes}",
          file=sys.stderr)
    return removed


def build_indexes(data: dict) -> dict:
    """Build lookup indexes from raw data."""
    indexes = {}

    # Spell names: spell_id -> name
    indexes["spell_names"] = {
        row["ID"]: row.get("Name_lang", "")
        for row in data["SpellName"]
        if row.get("Name_lang")
    }

    # Item names: item_id -> name
    indexes["item_names"] = {
        row["ID"]: row.get("Display_lang", "")
        for row in data["ItemSparse"]
        if row.get("Display_lang")
    }

    # Item details: item_id -> full row
    indexes["item_details"] = {
        row["ID"]: row
        for row in data["ItemSparse"]
    }

    # Faction names: faction_id -> name
    indexes["faction_names"] = {
        row["ID"]: row.get("Name_lang", "")
        for row in data["Faction"]
        if row.get("Name_lang")
    }

    # Spell reagents: spell_id -> [(item_id, count), ...]
    indexes["spell_reagents"] = {}
    for row in data["SpellReagents"]:
        spell_id = row.get("SpellID") or row.get("ID")
        if not spell_id:
            continue
        reagents = []
        for i in range(8):
            item_id = row.get(f"Reagent_{i}", "0")
            count = row.get(f"ReagentCount_{i}", "0")
            if item_id and item_id != "0" and count and count != "0":
                reagents.append((item_id, int(count)))
        if reagents:
            indexes["spell_reagents"][spell_id] = reagents

    # Spell effects - crafted items: spell_id -> item_id (Effect=24)
    indexes["crafted_items"] = {}
    for row in data["SpellEffect"]:
        if row.get("Effect") == "24":  # SPELL_EFFECT_CREATE_ITEM
            spell_id = row.get("SpellID")
            item_id = row.get("EffectItemType", "0")
            if spell_id and item_id and item_id != "0":
                indexes["crafted_items"][spell_id] = item_id

    # Recipe items: spell_id -> item_id (items that teach spells)
    indexes["recipe_items"] = {}
    for row in data["ItemEffect"]:
        spell_id = row.get("SpellID")
        item_id = row.get("ParentItemID")
        if spell_id and item_id and item_id != "0":
            indexes["recipe_items"][spell_id] = item_id

    return indexes


def build_trivial_ranks(data: dict) -> dict:
    """spell_id -> (yellow=TrivialLow, gray=TrivialHigh) from SkillLineAbility."""
    out = {}
    for row in data["SkillLineAbility"]:
        spell_id = row.get("Spell")
        if not spell_id:
            continue
        try:
            low = int(row.get("TrivialSkillLineRankLow", "0"))
            high = int(row.get("TrivialSkillLineRankHigh", "0"))
        except ValueError:
            continue
        if high > 0:
            out[spell_id] = (low, high)
    return out


def extract_recipes(
    data: dict,
    indexes: dict,
    profession: Profession,
    bucket,
    verified_sources: dict | None = None,
    removed: set[str] | None = None,
    exceptions: Exceptions | None = None,
    used: set[str] | None = None,
) -> tuple[list[dict], list[dict]]:
    """Extract recipes for a profession from SkillLineAbility.

    Returns:
        Tuple of (recipes, skipped_recipes) where skipped_recipes are those
        without verified difficulty data (likely removed/never-implemented).
    """
    skill_line_id = profession.skill_line
    exceptions = exceptions or Exceptions()
    used = used if used is not None else set()
    sources = verified_sources or {}
    force_expansion = bucket.fixed_expansion
    exclude_seasonal = bucket.exclude_seasonal
    recipes = []
    skipped_recipes = []
    # WHY seen_spell_ids: WotLK SkillLineAbility carries class-specific duplicate rows for the
    # same Spell within a SkillLine (e.g. First Aid spell 3276 has a general row with ClassMask
    # 1503 AND a Death-Knight-specific row with ClassMask 32). CraftLib serves exactly one recipe
    # per spell, so the first row wins and later duplicates are skipped.
    seen_spell_ids: set[str] = set()

    for row in data["SkillLineAbility"]:
        if row.get("SkillLine") != str(skill_line_id):
            continue

        spell_id = row.get("Spell")
        if not spell_id:
            continue

        # Skip class-specific duplicate rows (same spell already processed above)
        if spell_id in seen_spell_ids:
            continue
        seen_spell_ids.add(spell_id)

        # Skip explicitly removed recipes
        if removed and spell_id in removed:
            continue

        # Get crafted item (optional - enchantments don't create items)
        item_id = indexes["crafted_items"].get(spell_id)

        # Sources first: a spell absent from them was never a recipe of this bucket (rank
        # rows, removed/never-implemented). Only reagent-bearing ones are worth logging.
        verified_recipe = sources.get(spell_id)
        has_reagents = bool(indexes["spell_reagents"].get(spell_id))
        spell_name = indexes["spell_names"].get(spell_id, "")
        if verified_recipe is None:
            if has_reagents:
                skipped_recipes.append({"id": spell_id, "name": spell_name or f"spell {spell_id}",
                                        "reason": "not in sources"})
            continue

        where = (f"bucket '{bucket.key}' {profession.name} spell {spell_id} "
                 f"({spell_name or verified_recipe.get('name', '?')!r})")

        # WHY exclude_seasonal: the Era build's Wowhead /classic listview returns BOTH
        # Vanilla and Season-of-Discovery recipes; SoD-only ones carry seasonId==2. These
        # do not exist on a non-SoD Era/Vanilla client and must be excluded from the Vanilla
        # bucket (registry field exclude_seasonal).
        if exclude_seasonal and verified_recipe.get("seasonId"):
            skipped_recipes.append({"id": spell_id, "name": spell_name, "reason": "seasonal (seasonId)"})
            continue

        if spell_id in exceptions.exclude:
            used.add(spell_id)
            skipped_recipes.append({"id": spell_id, "name": spell_name,
                                    "reason": f"excluded: {exceptions.exclude[spell_id]}"})
            continue

        # Get verified difficulty — Wowhead data is REQUIRED, no DB2 fallback
        verified_difficulty = verified_recipe.get("difficulty") if verified_recipe else None

        if not verified_difficulty or verified_difficulty.get("certainty") not in ("WOWHEAD", "CRAFTDUMP"):
            skipped_recipes.append({"id": spell_id, "name": spell_name, "reason": "no WOWHEAD difficulty"})
            continue

        # Fail-loud gates, in the order the exceptions file documents. WHY here (after the
        # difficulty skip): recipes without difficulty are not shipped, so they cannot ship bad data.
        if not has_reagents:
            if spell_id not in exceptions.reagentless:
                raise GenerateError(f"{where} has no reagents; add it to generate_exceptions.json "
                                    f"reagentless with a reason, or fix the data")
            used.add(spell_id)
        if not spell_name:
            raise GenerateError(f"{where} has no name in SpellName (build data gap)")
        for reagent_id, _count in indexes["spell_reagents"].get(spell_id, []):
            if not indexes["item_names"].get(reagent_id):
                raise GenerateError(f"{where}: reagent item {reagent_id} has no name in ItemSparse")
        source = verified_recipe.get("source")
        if not source:
            raise GenerateError(f"{where} has no source data. Run fetch_wowhead_sources.py to populate.")
        if source.get("certainty") == "PENDING":
            raise GenerateError(f"{where} has a PENDING source. Run fetch_wowhead_sources.py to verify.")
        if source.get("type") not in EMITTABLE_SOURCE_TYPES:
            raise GenerateError(f"{where} has source type {source.get('type')!r}, which cannot be emitted; "
                                f"add it to generate_exceptions.json exclude with a reason, or align the source")
        if source.get("needsReview") or source.get("reviewReason"):
            if spell_id not in exceptions.ship_needs_review:
                raise GenerateError(f"{where} source is flagged for review "
                                    f"({source.get('reviewReason') or 'needsReview'}); align it, or add it to "
                                    f"generate_exceptions.json shipNeedsReview with a reason")
            used.add(spell_id)
        if source["type"] == "REPUTATION":
            missing = [k for k in ("factionId", "factionName", "level", "itemId", "cost") if k not in source]
            if missing:
                raise GenerateError(f"{where} REPUTATION source is missing {missing}; align before release")

        orange = verified_difficulty["orange"]
        yellow = verified_difficulty["yellow"]
        green = verified_difficulty["green"]
        gray = verified_difficulty["gray"]

        db2_ranks = indexes.get("trivial_ranks", {}).get(spell_id)
        if db2_ranks:
            db2_yellow, db2_gray = db2_ranks
            if (yellow, gray) != (db2_yellow, db2_gray):
                print(f"  CROSS-CHECK MISMATCH spell {spell_id}: "
                      f"wowhead y/g={yellow}/{gray} vs db2={db2_yellow}/{db2_gray}",
                      file=sys.stderr)

        # Determine skill_required (minimum skill to acquire AND craft this recipe)
        #
        # IMPORTANT: orange=0 handling (see ADR-005 in docs/architecture/DECISIONS.md)
        #
        # When orange=0, the recipe is "always orange" (100% skillup) until yellow.
        # However, orange=0 appears in two different contexts:
        #
        # 1. EARLY-GAME recipes (yellow <= 75): Meant to be available from skill 1
        #    Example: Delicate Copper Wire (JC) - orange=0, yellow=20
        #    These are starter recipes that should show at skill 1.
        #
        # 2. LATE-GAME recipes (yellow > 75): High-level recipes with skill requirements
        #    Example: Flask of Fortification (Alchemy) - orange=0, yellow=390
        #    These require high skill to LEARN from trainer, even though once learned
        #    they're "always orange". Players shouldn't see these at skill 1.
        #
        # The threshold of 75 corresponds to the first profession milestone (Journeyman).
        # Recipes below this are "Apprentice level" and meant to be available from start.
        #
        # Without this fix, the pathfinder would suggest Flask of Fortification at skill 1
        # if the player has AH prices for the reagents (Fel Lotus, etc.).
        #
        EARLY_GAME_THRESHOLD = 75  # First profession milestone (Apprentice -> Journeyman)

        if orange > 0:
            skill_required = orange
        elif yellow == 0:
            # Special case: orange=0, yellow=0 means recipe is always trivial (gray)
            # but requires specific skill to LEARN. Use gray as the requirement.
            # Example: Large Prismatic Shard (orange=0, yellow=0, gray=335)
            skill_required = gray
        elif yellow <= EARLY_GAME_THRESHOLD:
            # Early-game recipe: available from skill 1
            skill_required = 1
        else:
            # Late-game recipe: use yellow as the effective skill requirement
            # This prevents high-level recipes from appearing at low skill levels
            skill_required = yellow

        # Get reagents
        reagents = []
        for reagent_id, count in indexes["spell_reagents"].get(spell_id, []):
            reagents.append({
                "itemId": int(reagent_id),
                "name": indexes["item_names"][reagent_id],
                "count": count,
            })

        # Determine expansion based on skill required
        # Vanilla: 1-300, TBC: 301-375, WotLK: 376-450, Cata: 451-525, MoP: 526-600
        if force_expansion:
            expansion = force_expansion
        elif skill_required <= 300:
            expansion = "VANILLA"
        elif skill_required <= 375:
            expansion = "TBC"
        elif skill_required <= 450:
            expansion = "WOTLK"
        elif skill_required <= 525:
            expansion = "CATA"
        elif skill_required <= 600:
            expansion = "MOP"
        else:
            raise ValueError(f"Unknown expansion for skill_required={skill_required} (spell {spell_id})")

        recipe = {
            "id": int(spell_id),
            "name": spell_name,
            "skillRequired": skill_required,
            "skillRange": {
                "orange": orange,
                "yellow": yellow,
                "green": green,
                "gray": gray,
            },
            "reagents": reagents,
            "expansion": expansion,
            "recipe_item": indexes["recipe_items"].get(spell_id),
        }

        if item_id:
            recipe["itemId"] = int(item_id)
            recipe["itemName"] = indexes["item_names"].get(item_id, f"Unknown-{item_id}")

        recipe["source"] = source

        recipes.append(recipe)

    # Sort by skill required
    recipes.sort(key=lambda r: (r["skillRequired"], r["id"]))

    return recipes, skipped_recipes


def generate_lua(recipes: list[dict], profession: Profession, bucket) -> str:
    """Generate Lua code for recipes."""
    profile = bucket.profile
    exp_name = bucket.folder
    prof_name = profession.name
    prof_key = profession.key
    prof_constant = profession.constant

    lines = [
        f"-- Data/{exp_name}/{prof_name.replace(' ', '')}/Recipes.lua",
        f"-- {prof_name} recipes for {exp_name} Classic",
        f"-- Generated from DB2 data",
        "local ADDON_NAME, CraftLib = ...",
        "local C = CraftLib.Constants",
        "",
        "local recipes = {",
    ]

    for recipe in recipes:
        # Reagents (escape names for Lua strings)
        reagent_lines = []
        for r in recipe["reagents"]:
            escaped_name = escape_lua_string(r["name"])
            reagent_lines.append(
                f'            {{ itemId = {r["itemId"]}, name = "{escaped_name}", count = {r["count"]} }},'
            )
        reagents_str = "\n".join(reagent_lines) if reagent_lines else ""

        # Source
        source = recipe["source"]
        source_lines = [f'            type = C.SOURCE_TYPE.{source["type"]},']
        if source["type"] == "TRAINER":
            source_lines.append(f'            npcName = "Any {prof_name} Trainer",')
            if "trainingCost" in source:
                source_lines.append(f'            trainingCost = {source["trainingCost"]},')
        elif source["type"] == "REPUTATION":
            escaped_faction = escape_lua_string(source["factionName"])
            source_lines.append(f'            factionId = {source["factionId"]},')
            source_lines.append(f'            factionName = "{escaped_faction}",')
            source_lines.append(f'            level = "{source["level"]}",')
            source_lines.append(f'            itemId = {source["itemId"]},')
            source_lines.append(f'            cost = {source["cost"]},')
        elif source["type"] == "VENDOR":
            if "itemId" not in source or "cost" not in source:
                raise ValueError(f"VENDOR source for spell {recipe['id']} ({recipe['name']!r}) "
                                 f"missing cost/itemId; align before release")
            source_lines.append(f'            itemId = {source["itemId"]},')
            source_lines.append(f'            cost = {source["cost"]},')
        elif source["type"] == "DROP":
            if "itemId" in source:
                source_lines.append(f'            itemId = {source["itemId"]},')
        elif source["type"] == "QUEST":
            if "itemId" in source:
                source_lines.append(f'            itemId = {source["itemId"]},')
        elif source["type"] == "DISCOVERY":
            # DISCOVERY recipes are learned by interacting with a world object/puzzle (e.g. the
            # SoD New Avalon Mage Tower), not bought or trained. Mirror QUEST/DROP: emit the
            # teaching formula/recipe itemId when known so consumers can link it, but GUARD it --
            # a pure puzzle recipe may have no item, in which case the bare type line is correct.
            if "itemId" in source:
                source_lines.append(f'            itemId = {source["itemId"]},')
        elif source["type"] == "STARTER":
            pass   # structural source: bare type line only (no itemId/cost)
        else:
            raise ValueError(f"Unhandled source type {source['type']!r} for spell "
                             f"{recipe['id']} ({recipe['name']!r})")
        source_str = "\n".join(source_lines)

        # Skill range
        sr = recipe["skillRange"]

        # Escape recipe name for Lua strings
        escaped_recipe_name = escape_lua_string(recipe["name"])

        lines.append(f"    -- {recipe['name']} ({recipe['skillRequired']})")
        lines.append("    {")
        lines.append(f"        id = {recipe['id']},")
        lines.append(f'        name = "{escaped_recipe_name}",')
        if recipe.get("itemId"):
            lines.append(f"        itemId = {recipe['itemId']},")
        lines.append(f"        skillRequired = {recipe['skillRequired']},")
        lines.append(f"        skillRange = {{ orange = {sr['orange']}, yellow = {sr['yellow']}, green = {sr['green']}, gray = {sr['gray']} }},")
        lines.append("        reagents = {")
        if reagents_str:
            lines.append(reagents_str)
        lines.append("        },")
        lines.append("        source = {")
        lines.append(source_str)
        lines.append("        },")
        lines.append(f"        expansion = C.EXPANSION.{recipe['expansion']},")
        lines.append("    },")

    lines.append("}")
    lines.append("")

    milestones = "{ " + ", ".join(str(m) for m in bucket.milestones) + " }"

    # Highest expansion tier present among this bucket's recipes.
    _EXP_ORDER = {"VANILLA": 1, "TBC": 2, "WOTLK": 3, "CATA": 4, "MOP": 5, "SOD": 12}
    max_exp = bucket.fixed_expansion or max(
        (r["expansion"] for r in recipes),
        key=lambda e: _EXP_ORDER.get(e, 0), default="VANILLA")

    lines.append(f'CraftLib:RegisterProfession("{prof_key}", {{')
    lines.append(f"    id = C.PROFESSION_ID.{prof_constant},")
    lines.append(f'    name = "{prof_name}",')
    lines.append(f"    expansion = C.EXPANSION.{max_exp},")
    lines.append(f'    profile = "{profile}",')  # runtime load-guard tag; generalizes the old SoD-only flavor field
    lines.append(f"    milestones = {milestones},")
    lines.append("    recipes = recipes,")
    lines.append("})")
    lines.append("")

    return "\n".join(lines)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Generate CraftLib recipes from DB2")
    add_bucket_argument(parser)
    parser.add_argument("--version", help="DB2 build version (default: the bucket's pinned build)")
    parser.add_argument("--data-dir", type=Path, default=REPO_ROOT / "vendor" / "db2-parser" / "artifacts",
                        help="DB2 artifacts directory")
    parser.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources",
                        help="Directory holding <Bucket>/<Prof>.json, removed_recipes.json, vendor_reagents.json")
    parser.add_argument("--output-dir", type=Path, default=REPO_ROOT / "Data",
                        help="Output directory for Lua files")
    parser.add_argument("--profession", help="Generate only this profession (optional)")
    parser.add_argument("--vendor-prices-only", action="store_true",
                        help="Emit only Data/<Bucket>/VendorPrices.lua (skips recipe generation)")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)

    bucket = get_bucket(args.bucket)
    version = args.version or bucket.build
    data_dir = args.data_dir / version
    if not data_dir.exists():
        print(f"ERROR: bucket '{bucket.key}': data directory not found: {data_dir}", file=sys.stderr)
        return 1

    if args.profession:
        try:
            professions = [bucket.profession(args.profession)]
        except UnknownProfessionError as e:
            print(f"Unknown profession: {e}", file=sys.stderr)
            return 1
    else:
        professions = [PROFESSIONS[f] for f in bucket.professions]

    try:
        # Vendor-price emission is DECOUPLED from recipe generation on purpose: it has a
        # different input (the curated allowlist + ItemSparse only) and must NOT trigger a
        # full recipe regen (which could drift the committed Recipes.lua).
        if args.vendor_prices_only:
            emit_vendor_prices(load_item_details(data_dir, bucket), bucket, args.output_dir,
                               args.sources_dir / "vendor_reagents.json")
            return 0

        data = load_all_data(data_dir, bucket)
        indexes = build_indexes(data)
        indexes["trivial_ranks"] = build_trivial_ranks(data)
        print(f"Built indexes: {len(indexes['spell_names'])} spells, "
              f"{len(indexes['item_names'])} items, "
              f"{len(indexes['recipe_items'])} recipe items", file=sys.stderr)

        # Canaries run once, before anything is written: a broken join must not
        # produce a plausible-looking partial output.
        result = db2.measure_canaries(
            data["SkillLineAbility"], {PROFESSIONS[f].skill_line for f in bucket.professions},
            indexes["crafted_items"], indexes["spell_reagents"], indexes["recipe_items"])
        db2.check_canaries(bucket, result, version)

        removed_spells = load_removed(args.sources_dir, bucket)
        bucket_sources = args.sources_dir / bucket.folder
        exceptions_path = args.sources_dir / "generate_exceptions.json"
        exceptions = load_exceptions(exceptions_path, bucket)

        for profession in professions:
            verified_sources = load_verified_sources(bucket_sources, profession.name)
            if verified_sources:
                print(f"Loaded {len(verified_sources)} verified sources for {profession.name}", file=sys.stderr)

            used: set[str] = set()
            recipes, skipped = extract_recipes(
                data, indexes, profession, bucket, verified_sources,
                removed_spells.get(profession.name, set()), exceptions, used)

            if skipped:
                print(f"Skipped {len(skipped)} recipes for {profession.name}:", file=sys.stderr)
                for r in skipped:
                    print(f"  - {r['id']}: {r['name']} ({r.get('reason', 'unknown')})", file=sys.stderr)

            # WHY stale-entry warnings: an exception that no longer fires means the data was
            # aligned (or the spell left the sources); keeping it would hide a future regression.
            for category, entries in (("exclude", exceptions.exclude),
                                      ("reagentless", exceptions.reagentless),
                                      ("shipNeedsReview", exceptions.ship_needs_review)):
                for spell, _reason in entries.items():
                    if spell in (verified_sources or {}) and spell not in used:
                        nm = (verified_sources[spell] or {}).get("name", "?")
                        print(f"WARNING: generate_exceptions.json {bucket.key}/{category} spell "
                              f"{spell} ({nm}) is no longer needed", file=sys.stderr)

            if not recipes:
                raise GenerateError(f"bucket '{bucket.key}': no recipes emitted for {profession.name}; "
                                    f"check its sources and exceptions")

            lua_code = generate_lua(recipes, profession, bucket)
            output_file = args.output_dir / bucket.folder / profession.folder / "Recipes.lua"
            output_file.parent.mkdir(parents=True, exist_ok=True)
            atomic_write_text(output_file, lua_code)
            print(f"Generated {output_file}: {len(recipes)} recipes", file=sys.stderr)
    except (ValueError, ColumnContractError, CanaryError, FileNotFoundError) as e:
        # Always name the bucket (vanilla and sod share one DB2 build); GenerateErrors already do.
        msg = str(e)
        print(f"ERROR: {msg if f'bucket {chr(39)}{bucket.key}{chr(39)}' in msg else f'bucket {chr(39)}{bucket.key}{chr(39)}: {msg}'}",
              file=sys.stderr)
        return 2

    return 0


if __name__ == "__main__":
    sys.exit(main())
