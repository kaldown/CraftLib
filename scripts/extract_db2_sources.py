#!/usr/bin/env python3
"""Extract recipe sources from DB2 data.

Identifies sources with certainty from DB2:
- TRAINER: No recipe item (ItemEffect, or ItemXItemEffect on Forever; see
  db2.teaching_items)
- REPUTATION: MinFactionID > 0 on recipe item
- QUEST: BuyPrice=0 AND SellPrice=0 on recipe item

Marks uncertain sources as PENDING for Wowhead verification:
- Recipe item exists with BuyPrice > 0 (could be VENDOR or DROP)

Usage:
    python extract_db2_sources.py --bucket tbc --profession FirstAid
"""

import argparse
import sys
from collections import Counter
from datetime import date
from pathlib import Path

import db2
from buckets import PROFESSIONS, Profession, UnknownProfessionError, add_bucket_argument, get_bucket
from db2 import CanaryError, ColumnContractError, REQUIRED_COLUMNS, load_csv_checked, load_table
from pipeline_io import atomic_write_json, load_json

REPO_ROOT = Path(__file__).resolve().parent.parent

# Certainties DB2 can re-derive on every run. Anything else (WOWHEAD, MANUAL, CROSS,
# REMOVED, ...) is verified or curated state that a re-extract must not overwrite.
RECOMPUTABLE_CERTAINTIES = frozenset({"DB2", "PENDING"})

REP_LEVELS = {
    4: "Friendly",
    5: "Honored",
    6: "Revered",
    7: "Exalted",
}


def load_existing_sources(sources_file: Path) -> dict | None:
    """Load the existing sources file, or None when this profession is new."""
    if sources_file.exists():
        return load_json(sources_file)
    return None


def build_indexes(data_dir: Path, bucket, check: bool = True) -> dict:
    """Build lookup indexes from DB2 CSVs and check the canaries.

    data_dir is the build directory (e.g. artifacts/2.5.5.65895). Tables go
    through the column contract so a renamed column fails here, not as silently
    missing reagents or teaching items later.
    """
    data_dir = Path(data_dir)
    indexes = {}

    def table(name):
        return load_table(data_dir, name, bucket)

    indexes["spell_names"] = {
        row["ID"]: row["Name_lang"] for row in table("SpellName") if row["Name_lang"]
    }

    item_sparse = table("ItemSparse")
    indexes["item_details"] = {row["ID"]: row for row in item_sparse}
    indexes["item_names"] = {
        row["ID"]: row["Display_lang"] for row in item_sparse if row["Display_lang"]
    }

    indexes["faction_names"] = {
        row["ID"]: row["Name_lang"] for row in table("Faction") if row["Name_lang"]
    }

    # Crafted items (SpellEffect with Effect=24)
    indexes["crafted_items"] = {}
    for row in table("SpellEffect"):
        if row["Effect"] == "24":
            spell_id = row["SpellID"]
            item_id = row["EffectItemType"]
            if not item_id or item_id == "0":
                print(f"  WARNING: SpellEffect Effect=24 has no EffectItemType for spell {spell_id}", file=sys.stderr)
                continue
            if spell_id:
                indexes["crafted_items"][spell_id] = item_id

    # Spells with at least one populated reagent slot
    indexes["has_reagents"] = set()
    for row in table("SpellReagents"):
        spell_id = row["SpellID"]
        if not spell_id:
            continue
        for i in range(8):
            item_id = row[f"Reagent_{i}"]
            count = row[f"ReagentCount_{i}"]
            if item_id and item_id != "0" and count and count != "0":
                indexes["has_reagents"].add(spell_id)
                break

    # Recipe items: spell -> the one item that teaches it, through the bucket's join
    # (ItemEffect.ParentItemID on Classic, ItemXItemEffect on Forever). Only items that
    # exist in ItemSparse count (some old items were removed): detect_source reads
    # their prices and faction, and would otherwise fail on a link to nothing.
    indexes["recipe_items"] = {}
    for spell_id, candidates in db2.teaching_items(data_dir, bucket).items():
        item_id = db2.choose_teaching_item(bucket, candidates, indexes["item_details"])
        if item_id is not None:
            indexes["recipe_items"][spell_id] = item_id

    indexes["skill_line_abilities"] = table("SkillLineAbility")

    indexes["recipe_items_fallback"] = {}
    indexes["item_details_fallback"] = {}

    # Canaries run before anything is written: a broken join must not produce a
    # plausible-looking (and then merged-in) partial result. check=False lets a test
    # measure a deliberately broken build and assert on the canary itself.
    if not check:
        return indexes
    result = db2.measure_canaries(
        indexes["skill_line_abilities"],
        {PROFESSIONS[f].skill_line for f in bucket.professions},
        indexes["crafted_items"], indexes["has_reagents"], indexes["recipe_items"])
    db2.check_canaries(bucket, result, data_dir.name)
    return indexes


def add_fallback_indexes(indexes: dict, fallback_dir: Path) -> None:
    """Populate fallback recipe_items + item_details from another DB2 build."""
    fallback_dir = Path(fallback_dir)
    if not fallback_dir.is_dir():
        # WHY raise (not skip): a skipped fallback turns every recipe it would have
        # marked PENDING into a confident TRAINER/DB2 guess.
        raise FileNotFoundError(f"fallback data directory not found: {fallback_dir}")
    item_sparse = load_csv_checked(fallback_dir / "ItemSparse.csv", "ItemSparse",
                                   REQUIRED_COLUMNS["ItemSparse"])
    details = {row["ID"]: row for row in item_sparse}
    indexes["item_details_fallback"] = details
    item_effects = load_csv_checked(fallback_dir / "ItemEffect.csv", "ItemEffect",
                                    REQUIRED_COLUMNS["ItemEffect"])
    fb = {}
    for row in item_effects:
        sid = row["SpellID"]
        iid = row["ParentItemID"]
        if sid and iid and iid != "0" and iid in details:
            fb[sid] = iid
    indexes["recipe_items_fallback"] = fb


def detect_source(spell_id: str, indexes: dict) -> dict:
    """Detect recipe source from DB2 data.

    Returns source dict with 'certainty' field:
    - DB2: Source is certain from game data
    - PENDING: Needs Wowhead verification (VENDOR vs DROP ambiguous)
    """
    recipe_item_id = indexes["recipe_items"].get(spell_id)

    # No recipe item in this build: consult the fallback build's ItemEffect before
    # concluding TRAINER. A recipe item there means this is NOT trainer-taught —
    # mark PENDING so Wowhead/cross-bucket resolve it (avoids false-certain TRAINER).
    if not recipe_item_id:
        fb_item = indexes.get("recipe_items_fallback", {}).get(spell_id)
        fb_details = indexes.get("item_details_fallback", {}).get(str(fb_item)) if fb_item else None
        if fb_item and fb_details and int(fb_details.get("MinFactionID", "0")) == 0:
            return {"type": "PENDING", "certainty": "PENDING",
                    "itemId": int(fb_item), "cost": int(fb_details["BuyPrice"])}
        return {"type": "TRAINER", "certainty": "DB2"}

    # Get item details — fail loudly if missing
    item = indexes["item_details"].get(str(recipe_item_id))
    if item is None:
        raise ValueError(
            f"Recipe item {recipe_item_id} not found in ItemSparse for spell {spell_id}. "
            f"DB2 data may be incomplete."
        )
    buy_price = int(item["BuyPrice"])
    sell_price = int(item["SellPrice"])
    min_faction = int(item["MinFactionID"])
    min_rep = int(item["MinReputation"])

    # REPUTATION: Has faction requirement (certain)
    if min_faction > 0:
        faction_name = indexes["faction_names"].get(str(min_faction))
        if not faction_name:
            raise ValueError(f"Faction {min_faction} not found in Faction table for spell {spell_id}")
        rep_level = REP_LEVELS.get(min_rep)
        if not rep_level:
            raise ValueError(f"Unknown reputation level {min_rep} for faction {faction_name} (spell {spell_id})")
        return {
            "type": "REPUTATION",
            "certainty": "DB2",
            "itemId": int(recipe_item_id),
            "factionId": min_faction,
            "factionName": faction_name,
            "level": rep_level,
            "cost": buy_price,
        }

    # QUEST: No buy or sell price (certain)
    if buy_price == 0 and sell_price == 0:
        return {
            "type": "QUEST",
            "certainty": "DB2",
            "itemId": int(recipe_item_id),
        }

    # PENDING: Has recipe item with price - could be VENDOR or DROP
    return {
        "type": "PENDING",
        "certainty": "PENDING",
        "itemId": int(recipe_item_id),
        "cost": buy_price,
    }


def preserve_source(source: dict | None) -> bool:
    """True when an existing source must survive a re-extract.

    A review marker on a DB2 source is human state DB2 cannot re-derive, so it
    protects the source even though DB2 certainty is otherwise recomputable.
    """
    if not source:
        return False
    return (source.get("certainty") not in RECOMPUTABLE_CERTAINTIES
            or "needsReview" in source or "reviewReason" in source)


def merge_recipe(existing: dict | None, name: str, detected: dict) -> dict:
    """Merge a freshly detected source into an existing recipe entry.

    Copying the existing entry keeps difficulty/wowhead/seasonId/phaseId (and
    any future key) in their original order; only name and, when allowed, source change.
    """
    if existing is None:
        return {"name": name, "source": detected}
    merged = dict(existing)
    merged["name"] = name
    if not preserve_source(existing.get("source")):
        merged["source"] = detected
    return merged


def extract_profession_sources(
    profession: Profession,
    indexes: dict,
    version: str,
    existing: dict | None,
) -> tuple[dict, list[str]]:
    """Extract sources for a profession, merging into the existing document.

    Returns (document, orphan spell ids). Orphans are existing entries whose spell
    is not in this build; they are kept unchanged (after the live ones) so a build
    that dropped a spell cannot silently delete curated data.
    """
    old_recipes = (existing or {}).get("recipes", {})
    recipes = {}

    for row in indexes["skill_line_abilities"]:
        if row["SkillLine"] != str(profession.skill_line):
            continue

        spell_id = row["Spell"]
        if not spell_id:
            continue

        # Include recipes that either create items OR have reagents (enchantments)
        if spell_id not in indexes["crafted_items"] and spell_id not in indexes["has_reagents"]:
            continue

        prev = old_recipes.get(spell_id)
        # Never replace a curated name with a placeholder: the trainer verifier uses
        # the sources name as its wrong-page guard. Placeholder only for new entries.
        name = indexes["spell_names"].get(spell_id) or (prev or {}).get("name")
        if not name:
            name = f"Unknown-{spell_id}"
            print(f"WARNING: spell {spell_id} has no name in this build; using {name}",
                  file=sys.stderr)
        # Skip detection when the old source is kept anyway: detection can raise on
        # data gaps that a curated source has already resolved.
        if prev is not None and preserve_source(prev.get("source")):
            detected = prev["source"]
        else:
            detected = detect_source(spell_id, indexes)
        recipes[spell_id] = merge_recipe(prev, name, detected)

    orphans = [sid for sid in old_recipes if sid not in recipes]
    for sid in orphans:
        recipes[sid] = old_recipes[sid]

    doc = dict(existing) if existing else {}
    doc["profession"] = profession.key
    doc["version"] = version
    doc["generated"] = date.today().isoformat()
    doc["recipes"] = recipes
    return doc, orphans


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Extract recipe sources from DB2")
    add_bucket_argument(parser)
    parser.add_argument("--profession", required=True, help="Profession name, key or folder")
    parser.add_argument("--version", help="DB2 build version (default: the bucket's pinned build)")
    parser.add_argument("--data-dir", type=Path,
                        default=REPO_ROOT / "vendor" / "db2-parser" / "artifacts",
                        help="DB2 artifacts directory")
    parser.add_argument("--output-dir", type=Path, default=REPO_ROOT / "Data" / "Sources",
                        help="Base directory; writes <output-dir>/<Bucket>/<Profession>.json")
    parser.add_argument("--fallback-version", default=None,
                        help="DB2 build to consult for missing ItemEffect links (e.g. 2.5.5.65895)")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)

    bucket = get_bucket(args.bucket)
    try:
        profession = bucket.profession(args.profession)
    except UnknownProfessionError as e:
        print(f"Unknown profession: {e}", file=sys.stderr)
        return 1

    version = args.version or bucket.build
    data_dir = args.data_dir / version
    if not data_dir.exists():
        print(f"ERROR: bucket '{bucket.key}': data directory not found: {data_dir}", file=sys.stderr)
        return 1

    # Same rule as the main build directory: a mistyped fallback build is a config error,
    # checked before anything is read or written.
    fallback_dir = args.data_dir / args.fallback_version if args.fallback_version else None
    if fallback_dir is not None and not fallback_dir.is_dir():
        print(f"ERROR: bucket '{bucket.key}': fallback data directory not found: {fallback_dir}",
              file=sys.stderr)
        return 1

    output_file = args.output_dir / bucket.folder / f"{profession.folder}.json"

    try:
        existing = load_existing_sources(output_file)
        print(f"Loading DB2 data from {data_dir}...", file=sys.stderr)
        indexes = build_indexes(data_dir, bucket)
        if fallback_dir is not None:
            add_fallback_indexes(indexes, fallback_dir)
        print(
            f"Built indexes: {len(indexes['spell_names'])} spells, "
            f"{len(indexes['recipe_items'])} recipe items",
            file=sys.stderr,
        )
        sources, orphans = extract_profession_sources(profession, indexes, version, existing)
    except (ValueError, ColumnContractError, CanaryError, FileNotFoundError) as e:
        print(f"ERROR: bucket '{bucket.key}': {e}", file=sys.stderr)
        return 2

    if orphans:
        print(f"WARNING: {len(orphans)} recipes in {output_file} are not in build {version}; "
              f"kept unchanged: {', '.join(orphans[:20])}", file=sys.stderr)

    certainty_counts = Counter(r["source"].get("certainty", "PENDING")
                               for r in sources["recipes"].values())

    output_file.parent.mkdir(parents=True, exist_ok=True)
    atomic_write_json(output_file, sources)

    print(f"\nWrote {output_file}", file=sys.stderr)
    print(f"  Total recipes: {len(sources['recipes'])}", file=sys.stderr)
    for cert in ("DB2", "WOWHEAD", "PENDING"):
        print(f"  {cert + ':':<14} {certainty_counts.get(cert, 0)}", file=sys.stderr)

    if certainty_counts.get("PENDING", 0) > 0:
        print(f"\n{certainty_counts['PENDING']} recipes need Wowhead verification.", file=sys.stderr)
        print("Run: python scripts/fetch_wowhead_sources.py "
              f"--profession {profession.folder}", file=sys.stderr)

    return 0


if __name__ == "__main__":
    sys.exit(main())
