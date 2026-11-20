"""DB2 CSV loading with a column contract and semantic canaries.

Two silent-corruption modes this guards against:
  * A wago.tools build renames or drops a column, so `row.get(col)` quietly
    yields nothing and recipes lose reagents or teaching items. The column
    contract fails loudly with table, column and build named.
  * The columns exist but a join stops matching (e.g. ParentItemID all 0).
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
REQUIRED_COLUMNS: dict[str, tuple[str, ...]] = {
    "SkillLineAbility": ("SkillLine", "Spell", "TrivialSkillLineRankLow", "TrivialSkillLineRankHigh"),
    "SpellReagents": ("SpellID",
                      *(f"Reagent_{i}" for i in range(8)),
                      *(f"ReagentCount_{i}" for i in range(8))),
    "SpellEffect": ("SpellID", "Effect", "EffectItemType"),
    "ItemEffect": ("SpellID", "ParentItemID"),
    "ItemSparse": ("ID", "Display_lang", "BuyPrice", "SellPrice", "MinFactionID",
                   "MinReputation", "VendorStackCount"),
    "SpellName": ("ID", "Name_lang"),
    "Faction": ("ID", "Name_lang"),
}


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
    checks = (
        ("reagents", result.reagents_share, bucket.canary_floor_reagents, "SpellReagents"),
        ("teaching", result.teaching_share, bucket.canary_floor_teaching, "ItemEffect"),
    )
    for name, share, floor, table in checks:
        if share < floor:
            raise CanaryError(
                f"bucket '{bucket.key}' build {build}: {name} canary {share:.3f} is below "
                f"floor {floor:.3f}; the {table} join may have broken; "
                f"check that table's columns for this build")
