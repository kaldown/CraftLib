#!/usr/bin/env python3
"""Generate CraftLib recipe Lua files from DB2 data.

Usage:
    python generate_recipes.py --version 2.5.5.65463 --expansion 2
"""

import argparse
import csv
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
}

# Reputation level mapping
REP_LEVELS = {
    4: "Friendly",
    5: "Honored",
    6: "Revered",
    7: "Exalted",
}


def load_csv(path: Path) -> list[dict]:
    """Load CSV file as list of dicts."""
    with open(path, "r", encoding="utf-8") as f:
        return list(csv.DictReader(f))


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
            print(f"  WARNING: {table}.csv not found", file=sys.stderr)
            data[table] = []
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


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate CraftLib recipes from DB2")
    parser.add_argument("--version", required=True, help="Build version (e.g., 2.5.5.65463)")
    parser.add_argument("--expansion", type=int, default=2, help="Expansion number (default: 2 for TBC)")
    parser.add_argument("--data-dir", type=Path, default=Path("vendor/db2-parser/artifacts"),
                        help="DB2 artifacts directory")
    parser.add_argument("--output-dir", type=Path, default=Path("Data"),
                        help="Output directory for Lua files")
    parser.add_argument("--profession", help="Generate only this profession (optional)")
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
    print(f"Built indexes: {len(indexes['spell_names'])} spells, "
          f"{len(indexes['item_names'])} items, "
          f"{len(indexes['recipe_items'])} recipe items", file=sys.stderr)

    print(f"\nData loaded successfully.", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
