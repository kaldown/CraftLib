#!/usr/bin/env python3
"""Generate CraftLib recipe Lua files from DB2 data.

Usage:
    python generate_recipes.py --version 2.5.5.65463 --expansion 2
"""

import argparse
import csv
import json
import sys
from pathlib import Path


# Profession SkillLine IDs
PROFESSIONS = {
    129: {"key": "firstAid", "name": "First Aid", "constant": "FIRST_AID"},
    185: {"key": "cooking", "name": "Cooking", "constant": "COOKING"},
    171: {"key": "alchemy", "name": "Alchemy", "constant": "ALCHEMY"},
    164: {"key": "blacksmithing", "name": "Blacksmithing", "constant": "BLACKSMITHING"},
    333: {"key": "enchanting", "name": "Enchanting", "constant": "ENCHANTING"},
    202: {"key": "engineering", "name": "Engineering", "constant": "ENGINEERING"},
    755: {"key": "jewelcrafting", "name": "Jewelcrafting", "constant": "JEWELCRAFTING"},
    165: {"key": "leatherworking", "name": "Leatherworking", "constant": "LEATHERWORKING"},
    197: {"key": "tailoring", "name": "Tailoring", "constant": "TAILORING"},
    186: {"key": "mining", "name": "Mining", "constant": "MINING"},
    773: {"key": "inscription", "name": "Inscription", "constant": "INSCRIPTION"},
}


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

    with open(sources_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    # Convert to spell_id -> full recipe data lookup (includes source and difficulty)
    return {
        spell_id: recipe
        for spell_id, recipe in data.get("recipes", {}).items()
    }



def load_csv(path: Path) -> list[dict]:
    """Load CSV file as list of dicts."""
    with open(path, "r", encoding="utf-8") as f:
        return list(csv.DictReader(f))


# Build-time path to the curated vendor-reagent allowlist (see Data/Sources/vendor_reagents.json).
VENDOR_REAGENTS_PATH = Path(__file__).parent.parent / "Data" / "Sources" / "vendor_reagents.json"


def load_vendor_reagents(path: Path = VENDOR_REAGENTS_PATH) -> dict:
    """Load the curated allowlist: itemIdStr -> {name, verified, flavors?}."""
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f).get("vendorReagents", {})


def load_item_details(data_dir: Path) -> dict:
    """itemIdStr -> ItemSparse row (only the columns we need exist on every build)."""
    return {row["ID"]: row for row in load_csv(data_dir / "ItemSparse.csv")}


def compute_vendor_prices(allowlist: dict, item_details: dict, flavor: str) -> list[dict]:
    """Per-unit vendor BUY prices for the allowlisted reagents present in this flavor.

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
        if flavors and flavor not in flavors:
            continue
        name = meta.get("name", f"item {item_id_str}")
        row = item_details.get(item_id_str)
        if row is None:
            raise ValueError(
                f"Vendor reagent '{name}' (item {item_id_str}) is allowlisted but absent "
                f"from ItemSparse for flavor {flavor}; recover the true price or align the "
                f"allowlist before release (data-truth)."
            )
        buy_price = int(row.get("BuyPrice") or 0)
        if buy_price <= 0:
            raise ValueError(
                f"Vendor reagent '{name}' (item {item_id_str}) has BuyPrice<=0 in ItemSparse "
                f"(flavor {flavor}); cannot derive a true vendor price - align before release "
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


def generate_vendor_prices_lua(entries: list[dict], profile_token: str) -> str:
    """Emit Data/<Profile>/VendorPrices.lua text for the computed entries.

    profile_token is the runtime PROFILE tag ("SOD"/"VANILLA"/"TBC"/"WOTLK"), not a flavor
    string - it both selects the display folder and is emitted as the load-guard field.
    """
    # Map profile token to its display folder name so the header comment is correct for all profiles.
    # (The old code hardcoded "SoD"/"TBC", which mislabeled WotLK and Vanilla as "TBC".)
    _FOLDER = {"SOD": "SoD", "VANILLA": "Vanilla", "TBC": "TBC", "WOTLK": "WotLK", "CATA": "Cata"}
    folder = _FOLDER.get(profile_token, "TBC")
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


def emit_vendor_prices(item_details: dict, profile_token: str, exp_name: str, output_dir: Path,
                       allowlist_path: Path = VENDOR_REAGENTS_PATH) -> Path:
    """Compute + write Data/<exp_name>/VendorPrices.lua; warn loudly on unverified entries."""
    allowlist = load_vendor_reagents(allowlist_path)
    # WHY the flavor mapping: the allowlist 'flavors' field uses the LEGACY DEFAULT/SOD vocabulary,
    # but the runtime guard now keys on the 4-value PROFILE (VANILLA/TBC/WOTLK/SOD). The continuous
    # TBC/WotLK tiers share the DEFAULT scoping. VANILLA and SOD both use the Era DB2 build
    # (1.15.8.x), so reagents absent from that build (e.g. Simple Flour/30817, which only exists
    # in TBC ItemSparse) must be excluded from BOTH; this is enforced by mapping VANILLA -> "SOD"
    # for the allowlist scoping check (flavors:["DEFAULT"] items skip the Era build). The EMITTED
    # guard tag still carries the real PROFILE so the right client loads it.
    if profile_token in ("SOD", "VANILLA"):
        flavor = "SOD"   # both use the Era build; DEFAULT-only reagents (e.g. Simple Flour) must be absent
    else:
        flavor = "DEFAULT"
    entries = compute_vendor_prices(allowlist, item_details, flavor)  # may fail loud
    unverified = [e for e in entries if not e["verified"]]
    if unverified:
        names = ", ".join(f"{e['name']}({e['itemId']})" for e in unverified)
        print(f"  NOTE: {len(unverified)} vendor reagents are NOT in-game verified yet "
              f"(verified:false) - confirm before release: {names}", file=sys.stderr)
    lua = generate_vendor_prices_lua(entries, profile_token)
    out_dir = output_dir / exp_name
    out_dir.mkdir(parents=True, exist_ok=True)
    out_file = out_dir / "VendorPrices.lua"
    out_file.write_text(lua)
    print(f"Generated {out_file}: {len(entries)} vendor reagents", file=sys.stderr)
    return out_file


def load_all_data(data_dir: Path) -> dict:
    """Load all required CSV tables."""
    print(f"Loading data from {data_dir}...", file=sys.stderr)

    data = {}

    # Load each table
    tables = [
        "Spell", "SpellName", "SpellEffect", "SpellReagents",
        "Item", "ItemSparse", "SkillLine", "SkillLineAbility",
        "ItemEffect", "Faction"
    ]

    for table in tables:
        path = data_dir / f"{table}.csv"
        if not path.exists():
            raise FileNotFoundError(f"Required DB2 table not found: {path}")
        else:
            data[table] = load_csv(path)
            print(f"  Loaded {table}: {len(data[table])} rows", file=sys.stderr)

    return data


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
    skill_line_id: int,
    verified_sources: dict = None,
    removed: set[str] = None,
    force_expansion: str | None = None,
    exclude_seasonal: bool = False,
) -> tuple[list[dict], list[dict]]:
    """Extract recipes for a profession from SkillLineAbility.

    Returns:
        Tuple of (recipes, skipped_recipes) where skipped_recipes are those
        without verified difficulty data (likely removed/never-implemented).
    """
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

        # Must have reagents to be a crafting/enchanting recipe
        if not indexes["spell_reagents"].get(spell_id):
            continue

        # Skip recipes not in verified sources (likely removed/never-implemented)
        if verified_sources:
            verified_recipe = verified_sources.get(spell_id)
            if not verified_recipe:
                spell_name = indexes["spell_names"].get(spell_id, f"Unknown-{spell_id}")
                skipped_recipes.append({"id": spell_id, "name": spell_name, "reason": "not in sources"})
                continue

            # WHY exclude_seasonal: the Era build's Wowhead /classic listview returns BOTH
            # Vanilla and Season-of-Discovery recipes; SoD-only ones carry seasonId==2. These
            # do not exist on a non-SoD Era/Vanilla client and must be excluded from the Vanilla
            # bucket. The SoD bucket keeps them via its own pipeline (--flavor sod). This flag
            # defaults OFF so TBC/WotLK/SoD generation is unaffected.
            if exclude_seasonal and verified_recipe.get("seasonId"):
                spell_name = indexes["spell_names"].get(spell_id, f"Unknown-{spell_id}")
                skipped_recipes.append({"id": spell_id, "name": spell_name, "reason": "seasonal (seasonId)"})
                continue

        # Get verified difficulty — Wowhead data is REQUIRED, no DB2 fallback
        verified_recipe = verified_sources.get(spell_id) if verified_sources else None
        verified_difficulty = verified_recipe.get("difficulty") if verified_recipe else None

        if not verified_difficulty or verified_difficulty.get("certainty") not in ("WOWHEAD", "CRAFTDUMP"):
            spell_name = indexes["spell_names"].get(spell_id, f"Unknown-{spell_id}")
            skipped_recipes.append({"id": spell_id, "name": spell_name, "reason": "no WOWHEAD difficulty"})
            continue

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
                "name": indexes["item_names"].get(reagent_id, f"Unknown-{reagent_id}"),
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
            "name": indexes["spell_names"].get(spell_id, f"Unknown-{spell_id}"),
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

        # Source from verified sources — REQUIRED
        if verified_recipe:
            source = verified_recipe.get("source")
            if not source:
                raise ValueError(
                    f"Recipe '{recipe['name']}' (spell {spell_id}) has no source data. "
                    f"Run fetch_wowhead_sources.py to populate."
                )
            if source.get("certainty") == "PENDING":
                raise ValueError(
                    f"Recipe '{recipe['name']}' (spell {spell_id}) has PENDING source. "
                    f"Run fetch_wowhead_sources.py to verify."
                )
            recipe["source"] = source
        else:
            raise ValueError(
                f"Recipe '{recipe['name']}' (spell {spell_id}) has no verified source entry. "
                f"Run extract_db2_sources.py then fetch_wowhead_sources.py first."
            )

        recipes.append(recipe)

    # Sort by skill required
    recipes.sort(key=lambda r: (r["skillRequired"], r["id"]))

    return recipes, skipped_recipes


def generate_lua(recipes: list[dict], profession: dict, expansion: int, flavor=None) -> str:
    """Generate Lua code for recipes."""
    is_sod = (flavor == "sod")
    # Client PROFILE tag the runtime load-guard keys on (one cumulative bucket per profile).
    profile = "SOD" if is_sod else {1: "VANILLA", 2: "TBC", 3: "WOTLK", 4: "CATA"}.get(expansion, "TBC")
    exp_name = "SoD" if is_sod else {1: "Vanilla", 2: "TBC", 3: "WotLK", 4: "Cata"}.get(expansion, "TBC")
    prof_name = profession["name"]
    prof_key = profession["key"]
    prof_constant = profession["constant"]

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
        if source["type"] == "UNKNOWN":
            print(f"  Ejected UNKNOWN-source recipe: {recipe['id']} ({recipe['name']!r})",
                  file=sys.stderr)
            continue
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

    # Milestones per client profile (drives the cap LazyProf levels to).
    _MILESTONES = {
        "VANILLA": "{ 75, 150, 225, 300 }",
        "SOD":     "{ 75, 150, 225, 300 }",
        "TBC":     "{ 75, 150, 225, 300, 375 }",
        "WOTLK":   "{ 75, 150, 225, 300, 375, 450 }",
    }
    milestones = _MILESTONES.get(profile, "{ 75, 150, 225, 300 }")

    # Highest expansion tier present among this bucket's recipes.
    _EXP_ORDER = {"VANILLA": 1, "TBC": 2, "WOTLK": 3, "CATA": 4, "MOP": 5, "SOD": 12}
    max_exp = "SOD" if is_sod else max(
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


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate CraftLib recipes from DB2")
    parser.add_argument("--version", required=True, help="Build version (e.g., 2.5.5.65463)")
    parser.add_argument("--expansion", type=int, default=2, help="Expansion number (default: 2 for TBC)")
    parser.add_argument("--data-dir", type=Path, default=Path("artifacts"),
                        help="DB2 artifacts directory")
    parser.add_argument("--output-dir", type=Path, default=Path("Data"),
                        help="Output directory for Lua files")
    parser.add_argument("--profession", help="Generate only this profession (optional)")
    parser.add_argument("--flavor", help="Data flavor (e.g. 'sod'); selects SoD folder + flavor tag")
    parser.add_argument("--vendor-prices-only", action="store_true",
                        help="Emit only Data/<Flavor>/VendorPrices.lua (skips recipe generation)")
    parser.add_argument("--exclude-seasonal", action="store_true",
                        help="Skip recipes whose source JSON carries a truthy seasonId. "
                             "Use for the Vanilla bucket: the Era build's Wowhead /classic "
                             "data includes SoD-season recipes (seasonId==2) that do not "
                             "exist on a non-SoD Era/Vanilla client. Default OFF so "
                             "TBC/WotLK/SoD generation is unaffected.")
    args = parser.parse_args()

    # Build data path
    data_dir = args.data_dir / args.version
    if not data_dir.exists():
        print(f"Data directory not found: {data_dir}", file=sys.stderr)
        return 1

    # Load all data
    data = load_all_data(data_dir)

    # Build indexes
    indexes = build_indexes(data)
    indexes["trivial_ranks"] = build_trivial_ranks(data)
    print(f"Built indexes: {len(indexes['spell_names'])} spells, "
          f"{len(indexes['item_names'])} items, "
          f"{len(indexes['recipe_items'])} recipe items", file=sys.stderr)

    # Expansion name for paths
    is_sod = (args.flavor or "").lower() == "sod"
    exp_name = "SoD" if is_sod else {1: "Vanilla", 2: "TBC", 3: "WotLK", 4: "Cata"}.get(args.expansion, "TBC")
    force_expansion = "SOD" if is_sod else None

    # Vendor-price emission is DECOUPLED from recipe generation on purpose: it has a
    # different input (the curated allowlist + ItemSparse only) and must NOT trigger a
    # full recipe regen (which could drift the committed Recipes.lua). This branch emits
    # just the vendor table and returns.
    if args.vendor_prices_only:
        profile_token = "SOD" if is_sod else {1: "VANILLA", 2: "TBC", 3: "WOTLK"}.get(args.expansion, "TBC")
        emit_vendor_prices(load_item_details(data_dir), profile_token, exp_name, args.output_dir)
        return 0

    # Load removed recipes (flavor-specific; do NOT reuse the TBC list for SoD)
    removed_name = "removed_recipes.sod.json" if is_sod else "removed_recipes.json"
    removed_path = Path(__file__).parent.parent / "Data" / "Sources" / removed_name
    removed_spells: dict[str, set[str]] = {}
    if removed_path.exists():
        with open(removed_path) as f:
            removed_data = json.load(f)
        for prof_name, prof_recipes in removed_data.get("recipes", {}).items():
            removed_spells[prof_name] = {str(r["spellId"]) for r in prof_recipes}
        total = sum(len(s) for s in removed_spells.values())
        print(f"Loaded {total} removed recipes from {removed_name}", file=sys.stderr)
    elif is_sod:
        print("No SoD removed-recipes file (Data/Sources/removed_recipes.sod.json); none applied.",
              file=sys.stderr)

    # Load verified sources (per-expansion, per-profession)
    sources_dir = Path(__file__).parent.parent / "Data" / "Sources" / exp_name

    # Filter professions if specified
    professions_to_generate = PROFESSIONS.items()
    if args.profession:
        prof_key = args.profession.lower()
        professions_to_generate = [
            (sid, p) for sid, p in PROFESSIONS.items()
            if p["key"].lower() == prof_key or p["name"].lower() == prof_key
        ]
        if not professions_to_generate:
            print(f"Unknown profession: {args.profession}", file=sys.stderr)
            return 1

    # Generate for each profession
    for skill_line_id, profession in professions_to_generate:
        # Load verified sources for this profession
        verified_sources = load_verified_sources(sources_dir, profession["name"])
        if verified_sources:
            print(f"Loaded {len(verified_sources)} verified sources for {profession['name']}", file=sys.stderr)

        try:
            prof_removed = removed_spells.get(profession["name"], set())
            recipes, skipped = extract_recipes(
                data, indexes, skill_line_id, verified_sources, prof_removed, force_expansion,
                exclude_seasonal=args.exclude_seasonal,
            )
        except ValueError as e:
            print(f"ERROR: {e}", file=sys.stderr)
            return 2

        if skipped:
            print(f"Skipped {len(skipped)} recipes for {profession['name']}:", file=sys.stderr)
            for r in skipped:
                reason = r.get("reason", "unknown")
                print(f"  - {r['id']}: {r['name']} ({reason})", file=sys.stderr)

        if not recipes:
            print(f"No recipes found for {profession['name']}", file=sys.stderr)
            continue

        # Generate Lua
        lua_code = generate_lua(recipes, profession, args.expansion, args.flavor)

        # Write output
        output_dir = args.output_dir / exp_name / profession["name"].replace(" ", "")
        output_dir.mkdir(parents=True, exist_ok=True)
        output_file = output_dir / "Recipes.lua"

        output_file.write_text(lua_code)
        # Count EMITTED recipes only: generate_lua ejects UNKNOWN-source recipes.
        emitted = sum(1 for r in recipes if r["source"]["type"] != "UNKNOWN")
        print(f"Generated {output_file}: {emitted} recipes", file=sys.stderr)

    return 0


if __name__ == "__main__":
    sys.exit(main())
