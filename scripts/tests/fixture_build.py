"""Synthetic DB2 build + sources tree reused by pipeline tests.

Tailoring only (skill line 197). Row shapes follow real wago.tools CSVs closely
enough for the column contract: each header is the contract's REQUIRED_COLUMNS
plus an ID column where the contract has none.
"""
import csv
import json
from pathlib import Path

from db2 import REQUIRED_COLUMNS

FIXTURE_VERSION = "9.9.9.99999"

# spell -> (name, creates, [(reagent, count)], trivial low/high, teaching item)
_SPELLS = {
    1001: ("Fixture Bolt", 5001, [(2589, 2)], (10, 40), None),
    1002: ("Fixture Vest", 5002, [(2589, 3), (2320, 1)], (20, 60), 6002),
    1003: ("Fixture Cloak", 5003, [(2589, 4)], (40, 80), 6003),
    1004: ("Fixture Boots", 5004, [(2589, 5)], (60, 100), 6004),
    # Profession-rank row: no item, no reagents - must not count as a recipe.
    1999: ("Apprentice Tailoring", None, [], (0, 0), None),
}
# id -> (name, buy, sell, min faction, min rep)
_ITEMS = {
    2589: ("Linen Cloth", 10, 2, 0, 0),
    2320: ("Coarse Thread", 10, 2, 0, 0),
    5001: ("Fixture Bolt Item", 100, 25, 0, 0),
    5002: ("Fixture Vest Item", 100, 25, 0, 0),
    5003: ("Fixture Cloak Item", 100, 25, 0, 0),
    5004: ("Fixture Boots Item", 100, 25, 0, 0),
    6002: ("Pattern: Fixture Vest", 500, 125, 0, 0),
    6003: ("Pattern: Fixture Cloak", 1000, 250, 59, 5),
    6004: ("Pattern: Fixture Boots", 0, 0, 0, 0),
}


def _write_csv(path: Path, table: str, rows: list[dict], omit: set[str]) -> None:
    cols = list(REQUIRED_COLUMNS[table])
    if "ID" not in cols:
        cols.insert(0, "ID")
    cols = [c for c in cols if c not in omit]
    with open(path, "w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=cols, extrasaction="ignore")
        w.writeheader()
        w.writerows(rows)


def write_build(root: Path, version: str = FIXTURE_VERSION, *,
                omit_columns: dict[str, set[str]] | None = None,
                teaching_parent_zero: bool = False,
                omit_spell_names: set[str] = frozenset(),
                omit_item_names: set[str] = frozenset()) -> Path:
    omit_columns = omit_columns or {}
    d = Path(root) / version
    d.mkdir(parents=True, exist_ok=True)

    def omit(t):
        return set(omit_columns.get(t, ()))

    sla, names, effects, reagents, teach = [], [], [], [], []
    for n, (spell, (name, creates, regs, (lo, hi), item)) in enumerate(_SPELLS.items(), start=1):
        sid = str(spell)
        sla.append({"ID": n, "SkillLine": 197, "Spell": spell,
                    "TrivialSkillLineRankLow": lo, "TrivialSkillLineRankHigh": hi})
        if sid not in omit_spell_names:
            names.append({"ID": spell, "Name_lang": name})
        if creates is not None:
            effects.append({"ID": n, "SpellID": spell, "Effect": 24, "EffectItemType": creates})
        if regs:
            row = {"ID": n, "SpellID": spell}
            for i in range(8):
                r, c = regs[i] if i < len(regs) else (0, 0)
                row[f"Reagent_{i}"], row[f"ReagentCount_{i}"] = r, c
            reagents.append(row)
        if item is not None:
            teach.append({"ID": n, "SpellID": spell,
                          "ParentItemID": 0 if teaching_parent_zero else item})
    items = [{"ID": i, "Display_lang": "" if str(i) in omit_item_names else v[0],
              "BuyPrice": v[1], "SellPrice": v[2], "MinFactionID": v[3],
              "MinReputation": v[4], "VendorStackCount": 1}
             for i, v in _ITEMS.items()]

    for table, rows in (("SkillLineAbility", sla), ("SpellName", names),
                        ("SpellEffect", effects), ("SpellReagents", reagents),
                        ("ItemEffect", teach), ("ItemSparse", items),
                        ("Faction", [{"ID": 59, "Name_lang": "Thorium Brotherhood"}])):
        _write_csv(d / f"{table}.csv", table, rows, omit(table))
    return Path(root)


def _diff(o, y, g, r):
    return {"orange": o, "yellow": y, "green": g, "gray": r,
            "certainty": "WOWHEAD", "expansion": "tbc"}


def _recipes() -> dict:
    return {
        "1001": {"name": "Fixture Bolt",
                 "source": {"type": "TRAINER", "certainty": "WOWHEAD"},
                 "difficulty": _diff(1, 10, 25, 40)},
        "1002": {"name": "Fixture Vest",
                 "source": {"type": "VENDOR", "certainty": "WOWHEAD", "itemId": 6002, "cost": 500},
                 "difficulty": _diff(15, 20, 40, 60)},
        "1003": {"name": "Fixture Cloak",
                 "source": {"type": "REPUTATION", "certainty": "DB2", "itemId": 6003,
                            "factionId": 59, "factionName": "Thorium Brotherhood",
                            "level": "Honored", "cost": 1000},
                 "difficulty": _diff(35, 40, 60, 80)},
        "1004": {"name": "Fixture Boots",
                 "source": {"type": "QUEST", "certainty": "DB2", "itemId": 6004},
                 "difficulty": _diff(55, 60, 80, 100)},
    }


def write_sources(sources_dir: Path, folder: str, *, recipes_override: dict | None = None,
                  with_removed: bool = True) -> Path:
    sources_dir = Path(sources_dir)
    prof_dir = sources_dir / folder
    prof_dir.mkdir(parents=True, exist_ok=True)
    recipes = _recipes()
    recipes.update({str(k): v for k, v in (recipes_override or {}).items()})
    data = {"profession": "tailoring", "version": FIXTURE_VERSION,
            "generated": "2026-01-01", "recipes": recipes}
    (prof_dir / "Tailoring.json").write_text(json.dumps(data, indent=2), encoding="utf-8")
    if with_removed:
        (sources_dir / "removed_recipes.json").write_text(
            json.dumps({"recipes": {}}, indent=2), encoding="utf-8")
    (sources_dir / "vendor_reagents.json").write_text(
        json.dumps({"vendorReagents": {"2320": {"name": "Coarse Thread", "verified": True}}},
                   indent=2), encoding="utf-8")
    return sources_dir
