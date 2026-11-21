"""Synthetic DB2 build + sources tree reused by pipeline tests.

Tailoring only (skill line 197). Row shapes follow real wago.tools CSVs closely
enough for the column contract: each header is the contract's REQUIRED_COLUMNS
plus an ID column where the contract has none. join="xitem" writes the Forever
shape instead: the contract of the Forever bucket (its column overrides), the
ItemXItemEffect link table, SkillLine (child lines) and the tool tables.
"""
import csv
import json
from pathlib import Path

from buckets import get_bucket
from db2 import REQUIRED_COLUMNS, required_columns

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
# id -> (name, buy, sell, min faction, min rep); RequiredSkillRank lives in _RSR.
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
# Teaching-item RequiredSkillRank (only the xitem shape has the column); unlisted -> 0.
_RSR = {6002: 15, 6003: 35, 6004: 0}
# Teaching items require Tailoring (197); every other item requires no skill (0).
_TEACHING_SKILL = 197
# SkillLine rows of the xitem shape: id -> ParentSkillLineID. Like the real build,
# each profession line has one child line (Tailoring 197 -> 2948, First Aid 129 -> 2942).
_SKILL_LINES = {197: 0, 2948: 197, 129: 0, 2942: 129, 164: 0}


def _columns(table: str, join: str) -> list[str]:
    if join == "xitem":
        # The Forever bucket's own contract, so the fixture cannot drift from it.
        cols = list(required_columns(get_bucket("forever"), table))
    else:
        cols = list(REQUIRED_COLUMNS[table])
    if "ID" not in cols:
        cols.insert(0, "ID")
    return cols


def _write_csv(path: Path, table: str, rows: list[dict], omit: set[str], join: str) -> None:
    cols = [c for c in _columns(table, join) if c not in omit]
    with open(path, "w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=cols, extrasaction="ignore")
        w.writeheader()
        w.writerows(rows)


def write_build(root: Path, version: str = FIXTURE_VERSION, *,
                omit_columns: dict[str, set[str]] | None = None,
                teaching_parent_zero: bool = False,
                omit_spell_names: set[str] = frozenset(),
                omit_item_names: set[str] = frozenset(),
                join: str = "parent",
                extra_teaching: tuple[tuple[int, int], ...] = (),
                extra_items: dict[int, tuple[str, int, int]] | None = None,
                spell_totems: list[dict] | None = None,
                totem_categories: list[dict] | None = None) -> Path:
    """extra_teaching: (spell, item) links appended after the regular ones, in order.
    extra_items: item id -> (name, RequiredSkill, RequiredSkillRank), extra ItemSparse
    rows (buy 100, sell 25, no faction) for the items extra_teaching links to.
    spell_totems / totem_categories (xitem only) replace the default tool rows: Fixture
    Vest (1002) needs a Blacksmith Hammer (category 162).
    """
    if join not in ("parent", "xitem"):
        raise ValueError(f"unknown join '{join}'")
    omit_columns = omit_columns or {}
    d = Path(root) / version
    d.mkdir(parents=True, exist_ok=True)

    def omit(t):
        return set(omit_columns.get(t, ()))

    sla, names, effects, reagents, links = [], [], [], [], []
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
            links.append((spell, 0 if teaching_parent_zero else item))
    links.extend(extra_teaching)

    tables = {}
    if join == "parent":
        tables["ItemEffect"] = [{"ID": n, "SpellID": spell, "ParentItemID": item}
                                for n, (spell, item) in enumerate(links, start=1)]
    else:
        # Effect and link ids deliberately differ from each other and from the row
        # number, so a join on the wrong column finds nothing instead of passing by luck.
        tables["ItemEffect"] = [{"ID": 100 + n, "SpellID": spell}
                                for n, (spell, _item) in enumerate(links, start=1)]
        tables["ItemXItemEffect"] = [{"ID": 900 + n, "ItemEffectID": 100 + n, "ItemID": item}
                                     for n, (_spell, item) in enumerate(links, start=1)]
        tables["SpellTotems"] = spell_totems if spell_totems is not None else [
            {"ID": 1, "SpellID": 1002, "RequiredTotemCategoryID_0": 162,
             "RequiredTotemCategoryID_1": 0, "Totem_0": 0, "Totem_1": 0}]
        tables["TotemCategory"] = (totem_categories if totem_categories is not None
                                   else [{"ID": 162, "Name_lang": "Blacksmith Hammer"}])
        tables["SkillLine"] = [{"ID": k, "ParentSkillLineID": v} for k, v in _SKILL_LINES.items()]
    teaching_ids = {item for *_, item in _SPELLS.values() if item is not None}
    items = [{"ID": i, "Display_lang": "" if str(i) in omit_item_names else v[0],
              "BuyPrice": v[1], "SellPrice": v[2], "MinFactionID": v[3],
              "MinReputation": v[4], "VendorStackCount": 1,
              # Dropped by the writer (extrasaction="ignore") when the shape has no such column.
              "RequiredSkillRank": _RSR.get(i, 0),
              "RequiredSkill": _TEACHING_SKILL if i in teaching_ids else 0}
             for i, v in _ITEMS.items()]
    items += [{"ID": i, "Display_lang": name, "BuyPrice": 100, "SellPrice": 25,
               "MinFactionID": 0, "MinReputation": 0, "VendorStackCount": 1,
               "RequiredSkillRank": rank, "RequiredSkill": skill}
              for i, (name, skill, rank) in (extra_items or {}).items()]

    tables.update({"SkillLineAbility": sla, "SpellName": names, "SpellEffect": effects,
                   "SpellReagents": reagents, "ItemSparse": items,
                   "Faction": [{"ID": 59, "Name_lang": "Thorium Brotherhood"}]})
    for table, rows in tables.items():
        _write_csv(d / f"{table}.csv", table, rows, omit(table), join)
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


# --- Forever: wiki cache, extracted sources and the cross bucket twin -------------------

FOREVER_WIKI_TITLE = "Forever tailoring patterns"
# Rows keyed by the created item's name, like the real Forever pages (5-column layout).
# No row for Fixture Boots (1004): it must come out as a review, never a default source.
FOREVER_WIKITEXT = """{|class="darktable zebra sortable"
|+ Apprentice tailoring patterns
|-
! Item !! Skill !! Type !! New? !! Source
|-
| [[Fixture Bolt Item]] || 1 ||  || Old || Trainer
|-
| [[Fixture Vest Item]] || 15 ||  || Old || Vendor
|-
| [[Fixture Cloak Item]] || 35 ||  || {{text|uncommon|NEW}} || {{text|honored|Honored}}; {{cost|mfvr=60}}
|}
"""


def write_wiki_cache(sources_dir: Path, text: str = FOREVER_WIKITEXT, *,
                     folder: str = "Forever", title: str = FOREVER_WIKI_TITLE) -> Path:
    """Seed the wiki cache so the enrich step runs with --offline (tests never fetch)."""
    cache = Path(sources_dir) / folder / ".wiki_cache"
    cache.mkdir(parents=True, exist_ok=True)
    # Same file name rule as wiki.fetch_wikitext.
    path = cache / (title.replace(" ", "_") + ".wikitext")
    path.write_text(text, encoding="utf-8")
    return path


def write_forever_tree(root: Path, *, wikitext: str = FOREVER_WIKITEXT,
                       vanilla_recipes: dict | None = None, **build_kw) -> tuple[Path, Path]:
    """(artifacts dir, sources dir) ready for the Forever enrich step.

    root/art holds the xitem build (build_kw goes to write_build, e.g. extra_teaching);
    root/src holds the Forever Tailoring sources written by the real extract step, the
    seeded wiki cache, and the Vanilla twin the CROSS orange is read from
    (vanilla_recipes, empty by default so nothing is borrowed).
    """
    import extract_db2_sources  # the stage itself, so the fixture cannot drift from it
    art = write_build(Path(root) / "art", join="xitem", **build_kw)
    src = Path(root) / "src"
    rc = extract_db2_sources.main(["--bucket", "forever", "--profession", "Tailoring",
                                   "--version", FIXTURE_VERSION, "--data-dir", str(art),
                                   "--output-dir", str(src)])
    if rc != 0:
        raise RuntimeError(f"fixture extract failed with exit {rc}")
    write_wiki_cache(src, wikitext)
    vanilla = src / "Vanilla"
    vanilla.mkdir(parents=True, exist_ok=True)
    (vanilla / "Tailoring.json").write_text(
        json.dumps({"profession": "tailoring", "recipes": vanilla_recipes or {}}, indent=2),
        encoding="utf-8")
    return art, src


def forever_enrich_argv(art: Path, src: Path, *extra: str) -> list[str]:
    """fetch_wiki_sources.main argv for the fixture tree, offline."""
    return ["--bucket", "forever", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
            "--data-dir", str(art), "--sources-dir", str(src), "--offline", *extra]


def write_resolved_forever(root: Path, **tree_kw) -> tuple[Path, Path]:
    """(artifacts dir, sources dir) with Forever Tailoring resolved by the real wiki step.

    write_forever_tree, then fetch_wiki_sources.main offline: the generator reads the
    sources exactly as the enrich stage writes them, so the fixture cannot drift from it.
    """
    import fetch_wiki_sources
    art, src = write_forever_tree(root, **tree_kw)
    rc = fetch_wiki_sources.main(forever_enrich_argv(art, src))
    if rc != 0:
        raise RuntimeError(f"fixture wiki enrich failed with exit {rc}")
    return art, src
