import dataclasses
import re
from pathlib import Path

import pytest

import db2
import extract_db2_sources as ex
from buckets import BUCKETS, PROFESSIONS, get_bucket
from db2 import (CanaryError, CanaryResult, ColumnContractError, REQUIRED_COLUMNS,
                 check_canaries, load_table, measure_canaries, required_columns)
from tests.fixture_build import FIXTURE_VERSION, write_build

ARTIFACTS = Path(__file__).resolve().parents[2] / "vendor" / "db2-parser" / "artifacts"


def _measure(build_dir: Path, bucket) -> CanaryResult:
    """Measures through the extractor's own index builder, not a copy of its rules."""
    ix = ex.build_indexes(build_dir, bucket, check=False)
    lines = {PROFESSIONS[f].skill_line for f in bucket.professions}
    return measure_canaries(ix["skill_line_abilities"], lines, ix["crafted_items"],
                            ix["has_reagents"], ix["recipe_items"])


def test_load_csv_checked_names_table_column_build(tmp_path):
    root = write_build(tmp_path, omit_columns={"ItemEffect": {"ParentItemID"}})
    with pytest.raises(ColumnContractError, match=r"9\.9\.9\.99999.*ItemEffect.*ParentItemID"):
        load_table(root / FIXTURE_VERSION, "ItemEffect", get_bucket("tbc"))


def test_load_csv_checked_missing_file(tmp_path):
    with pytest.raises(ColumnContractError, match="not found"):
        load_table(tmp_path / "1.2.3.4", "ItemEffect", get_bucket("tbc"))


def test_required_columns_override():
    tbc = get_bucket("tbc")
    custom = dataclasses.replace(tbc, column_overrides={"ItemEffect": ("SpellID", "ID")})
    assert required_columns(custom, "ItemEffect") == ("SpellID", "ID")
    assert required_columns(tbc, "ItemEffect") == REQUIRED_COLUMNS["ItemEffect"]
    with pytest.raises(ColumnContractError):
        required_columns(tbc, "NoSuchTable")


def test_measure_canaries_fixture(tmp_path):
    root = write_build(tmp_path)
    assert _measure(root / FIXTURE_VERSION, get_bucket("tbc")) == CanaryResult(4, 1.0, 0.75)


def test_check_canaries_fails_below_floor(tmp_path):
    root = write_build(tmp_path, teaching_parent_zero=True)
    result = _measure(root / FIXTURE_VERSION, get_bucket("tbc"))
    assert result.teaching_share == 0.0
    with pytest.raises(CanaryError, match="teaching") as ei:
        check_canaries(get_bucket("tbc"), result, FIXTURE_VERSION)
    assert "0.500" in str(ei.value)


def test_check_canaries_zero_recipes():
    with pytest.raises(CanaryError):
        check_canaries(get_bucket("tbc"), CanaryResult(0, 0.0, 0.0), "x")


def test_contract_and_canaries_on_cached_builds():
    if not ARTIFACTS.is_dir():
        pytest.skip("vendor/db2-parser/artifacts not present")
    # forever: measured 2026-11-21 on 1.60.1.71037 (ItemXItemEffect join, ItemSparse-filtered).
    expected = {"vanilla": 0.039, "sod": 0.039, "tbc": 0.666, "wotlk": 0.566, "forever": 0.746}
    for key, bucket in BUCKETS.items():
        build_dir = ARTIFACTS / bucket.build
        if not build_dir.is_dir():
            pytest.skip(f"build {bucket.build} not cached")
        # Only the tables this bucket reads: Classic builds have no ItemXItemEffect.
        for table in db2.bucket_tables(bucket):
            load_table(build_dir, table, bucket)
        result = _measure(build_dir, bucket)
        assert abs(result.teaching_share - expected[key]) < 0.01, (key, result)
        check_canaries(bucket, result, bucket.build)


# --- teaching-item join variants (parent: ItemEffect.ParentItemID; xitem: ItemXItemEffect) ---

FOREVER = get_bucket("forever")
TBC = get_bucket("tbc")


def _details(build_dir: Path, bucket) -> dict:
    return {row["ID"]: row for row in load_table(build_dir, "ItemSparse", bucket)}


def test_teaching_link_and_tool_table_contracts():
    assert REQUIRED_COLUMNS["ItemXItemEffect"] == ("ItemEffectID", "ItemID")
    assert REQUIRED_COLUMNS["SpellTotems"] == ("SpellID", "RequiredTotemCategoryID_0",
                                               "RequiredTotemCategoryID_1", "Totem_0", "Totem_1")
    assert REQUIRED_COLUMNS["TotemCategory"] == ("ID", "Name_lang")


def test_bucket_tables_follow_teaching_join_and_tools():
    classic = db2.bucket_tables(TBC)
    assert "ItemEffect" in classic and "ItemXItemEffect" not in classic
    assert "SpellTotems" not in classic and "TotemCategory" not in classic
    forever = db2.bucket_tables(FOREVER)
    assert {"ItemEffect", "ItemXItemEffect", "SpellTotems", "TotemCategory"} <= set(forever)


def test_teaching_items_parent_last_row_wins(tmp_path):
    root = write_build(tmp_path, extra_teaching=((1002, 6003),))
    build_dir = root / FIXTURE_VERSION
    teaching = db2.teaching_items(build_dir, TBC)
    assert teaching == {"1002": ["6002", "6003"], "1003": ["6003"], "1004": ["6004"]}
    assert db2.choose_teaching_item(TBC, teaching["1002"], _details(build_dir, TBC)) == "6003"


def test_teaching_items_parent_skips_zero_item(tmp_path):
    root = write_build(tmp_path, teaching_parent_zero=True)
    assert db2.teaching_items(root / FIXTURE_VERSION, TBC) == {}


def test_choose_parent_only_counts_items_in_itemsparse():
    # The last candidate is missing from ItemSparse, so the one before it wins.
    assert db2.choose_teaching_item(TBC, ["6002", "9999"], {"6002": {}}) == "6002"
    assert db2.choose_teaching_item(TBC, ["9999"], {}) is None
    assert db2.choose_teaching_item(TBC, [], {}) is None


def test_teaching_items_xitem_join(tmp_path):
    root = write_build(tmp_path, join="xitem")
    assert db2.teaching_items(root / FIXTURE_VERSION, FOREVER) == {
        "1002": ["6002"], "1003": ["6003"], "1004": ["6004"]}


def test_teaching_items_xitem_keeps_table_order_and_skips_zero(tmp_path):
    root = write_build(tmp_path, join="xitem", extra_teaching=((1002, 6004), (1003, 0)))
    teaching = db2.teaching_items(root / FIXTURE_VERSION, FOREVER)
    assert teaching["1002"] == ["6002", "6004"]
    assert teaching["1003"] == ["6003"]
    root2 = write_build(tmp_path / "zero", join="xitem", teaching_parent_zero=True)
    assert db2.teaching_items(root2 / FIXTURE_VERSION, FOREVER) == {}


def test_teaching_items_xitem_missing_column_names_table(tmp_path):
    root = write_build(tmp_path, join="xitem", omit_columns={"ItemXItemEffect": {"ItemID"}})
    with pytest.raises(ColumnContractError, match=r"9\.9\.9\.99999.*ItemXItemEffect.*ItemID"):
        db2.teaching_items(root / FIXTURE_VERSION, FOREVER)


def test_teaching_items_xitem_missing_link_table(tmp_path):
    root = write_build(tmp_path, join="xitem")
    (root / FIXTURE_VERSION / "ItemXItemEffect.csv").unlink()
    with pytest.raises(ColumnContractError, match="ItemXItemEffect.csv not found"):
        db2.teaching_items(root / FIXTURE_VERSION, FOREVER)


def _ranks(**rsr) -> dict:
    return {k.lstrip("i"): {"RequiredSkillRank": str(v)} for k, v in rsr.items()}


def test_choose_xitem_lowest_positive_rank():
    details = _ranks(i7001=0, i7002=120, i7003=90)
    assert db2.choose_teaching_item(FOREVER, ["7001", "7002", "7003"], details) == "7003"


def test_choose_xitem_all_zero_takes_lowest_numeric_id():
    details = _ranks(i10000=0, i9000=0, i9500=0)
    # Numeric, not string, order: "10000" < "9000" as text.
    assert db2.choose_teaching_item(FOREVER, ["9500", "10000", "9000"], details) == "9000"


def test_choose_xitem_rank_tie_takes_lowest_id():
    details = _ranks(i8002=90, i8001=90, i8003=120)
    assert db2.choose_teaching_item(FOREVER, ["8002", "8003", "8001"], details) == "8001"


def test_choose_xitem_ignores_items_missing_from_itemsparse():
    details = _ranks(i7002=120)
    assert db2.choose_teaching_item(FOREVER, ["7001", "7002"], details) == "7002"
    assert db2.choose_teaching_item(FOREVER, ["7001"], details) is None


def test_choose_xitem_bad_rank_fails_loud():
    with pytest.raises(ValueError, match="7001.*RequiredSkillRank"):
        db2.choose_teaching_item(FOREVER, ["7001"], {"7001": {"RequiredSkillRank": "x"}})
    with pytest.raises(ValueError, match="7001.*RequiredSkillRank"):
        db2.choose_teaching_item(FOREVER, ["7001"], {"7001": {}})


def test_measure_canaries_forever_fixture(tmp_path):
    root = write_build(tmp_path, join="xitem")
    assert _measure(root / FIXTURE_VERSION, FOREVER) == CanaryResult(4, 1.0, 0.75)


def test_check_canaries_forever_names_link_table():
    with pytest.raises(CanaryError, match="ItemXItemEffect"):
        check_canaries(FOREVER, CanaryResult(4, 1.0, 0.0), "x")
