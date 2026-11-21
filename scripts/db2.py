"""DB2 CSV loading with a column contract and semantic canaries.

Two silent-corruption modes this guards against:
  * A wago.tools build renames or drops a column, so `row.get(col)` quietly
    yields nothing and recipes lose reagents or teaching items. The column
    contract fails loudly with table, column and build named.
  * The columns exist but a join stops matching (e.g. ParentItemID all 0, or
    Forever's ItemXItemEffect links pointing nowhere).
    The canaries measure what share of profession recipes still resolve a
    reagent / teaching-item link and fail below a per-bucket floor.
"""
import csv
from dataclasses import dataclass
from pathlib import Path
from typing import Container, Iterable, Sequence


class ColumnContractError(RuntimeError):
    pass


class CanaryError(RuntimeError):
    pass


# Union of what extract_db2_sources.py and generate_recipes.py read. Tables the
# DB2 dump keys by ID list it explicitly; the others are read by their join column.
# Not every bucket reads every table (see bucket_tables): ItemXItemEffect only for
# the "xitem" teaching join, SpellTotems/TotemCategory only for has_tools buckets.
REQUIRED_COLUMNS: dict[str, tuple[str, ...]] = {
    "SkillLineAbility": ("SkillLine", "Spell", "TrivialSkillLineRankLow", "TrivialSkillLineRankHigh"),
    "SpellReagents": ("SpellID",
                      *(f"Reagent_{i}" for i in range(8)),
                      *(f"ReagentCount_{i}" for i in range(8))),
    "SpellEffect": ("SpellID", "Effect", "EffectItemType"),
    "ItemEffect": ("SpellID", "ParentItemID"),
    "ItemXItemEffect": ("ItemEffectID", "ItemID"),
    "ItemSparse": ("ID", "Display_lang", "BuyPrice", "SellPrice", "MinFactionID",
                   "MinReputation", "VendorStackCount"),
    "SpellName": ("ID", "Name_lang"),
    "Faction": ("ID", "Name_lang"),
    "SpellTotems": ("SpellID", "RequiredTotemCategoryID_0", "RequiredTotemCategoryID_1",
                    "Totem_0", "Totem_1"),
    "TotemCategory": ("ID", "Name_lang"),
}

_BASE_TABLES = ("SkillLineAbility", "SpellReagents", "SpellEffect", "ItemEffect",
                "ItemSparse", "SpellName", "Faction")


def bucket_tables(bucket) -> tuple[str, ...]:
    """The DB2 tables this bucket's pipeline needs, each one under the column contract.

    The tool tables belong to has_tools buckets only (the generator emits tools for them).
    """
    tables = list(_BASE_TABLES)
    if bucket.item_effect_join == "xitem":
        tables.append("ItemXItemEffect")
    if bucket.has_tools:
        tables += ["SpellTotems", "TotemCategory"]
    return tuple(tables)


def required_columns(bucket, table: str) -> tuple[str, ...]:
    # A bucket override replaces (not extends) the default: a client whose table
    # is shaped differently (Forever's ItemXItemEffect) declares its own set.
    if table in bucket.column_overrides:
        return tuple(bucket.column_overrides[table])
    if table in REQUIRED_COLUMNS:
        return REQUIRED_COLUMNS[table]
    raise ColumnContractError(
        f"bucket '{bucket.key}': table {table} has no column contract; "
        f"known tables: {', '.join(REQUIRED_COLUMNS)}")


def load_csv_checked(path: Path, table: str, columns: Sequence[str]) -> list[dict]:
    path = Path(path)
    build = path.parent.name
    if not path.is_file():
        raise ColumnContractError(f"DB2 build {build}: {table}.csv not found at {path}")
    with open(path, "r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        header = reader.fieldnames or []
        missing = [c for c in columns if c not in header]
        if missing:
            raise ColumnContractError(
                f"DB2 build {build}: table {table} lacks required column(s) {', '.join(missing)}")
        return list(reader)


def load_table(build_dir: Path, table: str, bucket) -> list[dict]:
    return load_csv_checked(Path(build_dir) / f"{table}.csv", table, required_columns(bucket, table))


def _is_id(value: str | None) -> bool:
    # WHY "0" counts as missing: the DB2 dumps write an unset foreign key as 0, and
    # spell 0 / item 0 never name a real spell or item.
    return bool(value) and value != "0"


def teaching_items(build_dir: Path, bucket) -> dict[str, list[str]]:
    """spell id -> ids of the items that teach it, in table order.

    "parent" (Classic): each ItemEffect row names its item in ParentItemID.
    "xitem" (Forever): ItemEffect has no ParentItemID; the ItemXItemEffect link
    table maps an effect (ItemEffect.ID, which carries the SpellID) to its item.
    """
    out: dict[str, list[str]] = {}
    if bucket.item_effect_join == "parent":
        for row in load_table(build_dir, "ItemEffect", bucket):
            spell, item = row["SpellID"], row["ParentItemID"]
            if _is_id(spell) and _is_id(item):
                out.setdefault(spell, []).append(item)
        return out
    if bucket.item_effect_join == "xitem":
        effect_spell = {row["ID"]: row["SpellID"]
                        for row in load_table(build_dir, "ItemEffect", bucket)}
        for row in load_table(build_dir, "ItemXItemEffect", bucket):
            # A link to an effect row the dump lacks carries no spell, so it teaches
            # nothing (1 such row on 1.60.1.71037); the canary catches a wholesale break.
            spell = effect_spell.get(row["ItemEffectID"])
            item = row["ItemID"]
            if _is_id(spell) and _is_id(item):
                out.setdefault(spell, []).append(item)
        return out
    raise ValueError(f"bucket '{bucket.key}': unknown item_effect_join '{bucket.item_effect_join}'")


def _required_skill_rank(item_id: str, row: dict) -> int:
    try:
        return int(row["RequiredSkillRank"])
    except (KeyError, TypeError, ValueError):
        # Fail loud: ranking on a guessed rank would pick a wrong teaching item silently.
        raise ValueError(f"teaching item {item_id}: RequiredSkillRank missing or not a number "
                         f"({row.get('RequiredSkillRank')!r})") from None


def choose_teaching_item(bucket, candidates: list[str], item_details: dict[str, dict]) -> str | None:
    """Pick the one teaching item of a spell; only candidates in item_details count."""
    present = [c for c in candidates if c in item_details]
    if not present:
        return None
    if bucket.item_effect_join == "parent":
        # WHY the last row: the Classic extract has always let the last ItemEffect row
        # win, and the re-extract stability test pins the Classic sources to that rule.
        # Several-item spells are Phase 2's D9; a different pick here would change
        # Classic sources outside this plan.
        return present[-1]
    if bucket.item_effect_join == "xitem":
        # WHY the lowest positive RequiredSkillRank (plan ruling R1): on 1.60.1.71037,
        # 122 of the 132 several-item recipes are an Enchanting formula (rank > 0)
        # linked next to a rank-0 "Enchant ..." item that teaches nothing, so rank 0
        # must lose. Ties and all-zero fall back to the lowest numeric id so the pick
        # is stable across runs.
        ranked = [(_required_skill_rank(c, item_details[c]), int(c)) for c in present]
        positive = [r for r in ranked if r[0] > 0]
        if positive:
            return str(min(positive)[1])  # (rank, id) tuples: lowest rank, then lowest id
        return str(min(i for _rank, i in ranked))
    raise ValueError(f"bucket '{bucket.key}': unknown item_effect_join '{bucket.item_effect_join}'")


@dataclass(frozen=True)
class CanaryResult:
    recipes: int
    reagents_share: float
    teaching_share: float


def measure_canaries(skill_line_abilities: Iterable[dict], skill_lines: set,
                     crafted: Container, reagents: Container, teaching: Container) -> CanaryResult:
    # Same inclusion rule as extract: a profession row only counts as a recipe
    # when it creates an item or consumes reagents (rank rows like "Apprentice" do neither).
    lines = {str(s) for s in skill_lines}
    recipes = {row["Spell"] for row in skill_line_abilities
               if row["SkillLine"] in lines
               and (row["Spell"] in crafted or row["Spell"] in reagents)}
    if not recipes:
        return CanaryResult(0, 0.0, 0.0)
    n = len(recipes)
    return CanaryResult(
        n,
        sum(1 for s in recipes if s in reagents) / n,
        sum(1 for s in recipes if s in teaching) / n)


def check_canaries(bucket, result: CanaryResult, build: str) -> None:
    if result.recipes == 0:
        raise CanaryError(
            f"bucket '{bucket.key}' build {build}: no profession recipes found; "
            f"the SkillLineAbility/SpellEffect join may have broken")
    # Name the table the teaching join really goes through, or the hint points at
    # a table that is fine.
    link_table = "ItemXItemEffect" if bucket.item_effect_join == "xitem" else "ItemEffect"
    checks = (
        ("reagents", result.reagents_share, bucket.canary_floor_reagents, "SpellReagents"),
        ("teaching", result.teaching_share, bucket.canary_floor_teaching, link_table),
    )
    for name, share, floor, table in checks:
        if share < floor:
            raise CanaryError(
                f"bucket '{bucket.key}' build {build}: {name} canary {share:.3f} is below "
                f"floor {floor:.3f}; the {table} join may have broken; "
                f"check that table's columns for this build")
