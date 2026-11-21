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
    # forever: measured 2026-11-21 on 1.60.1.71037 (ItemXItemEffect join, ItemSparse-filtered,
    # scroll copies / off-profession / placeholder items ignored; 0.746 before that filter).
    expected = {"vanilla": 0.039, "sod": 0.039, "tbc": 0.666, "wotlk": 0.566, "forever": 0.723}
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


def test_skill_line_contract():
    assert REQUIRED_COLUMNS["SkillLine"] == ("ID", "ParentSkillLineID")


def test_bucket_tables_follow_teaching_join_and_tools():
    classic = db2.bucket_tables(TBC)
    assert "ItemEffect" in classic and "ItemXItemEffect" not in classic
    # Classic paths must not depend on SkillLine (only the xitem choice reads it).
    assert "SkillLine" not in classic
    assert "SpellTotems" not in classic and "TotemCategory" not in classic
    forever = db2.bucket_tables(FOREVER)
    assert {"ItemEffect", "ItemXItemEffect", "SkillLine",
            "SpellTotems", "TotemCategory"} <= set(forever)


def test_teaching_items_parent_last_row_wins(tmp_path):
    root = write_build(tmp_path, extra_teaching=((1002, 6003),))
    build_dir = root / FIXTURE_VERSION
    teaching = db2.teaching_items(build_dir, TBC)
    assert teaching == {"1002": ["6002", "6003"], "1003": ["6003"], "1004": ["6004"]}
    assert db2.choose_teaching_item(TBC, teaching["1002"], _details(build_dir, TBC), ()) == "6003"


def test_teaching_items_parent_skips_zero_item(tmp_path):
    root = write_build(tmp_path, teaching_parent_zero=True)
    assert db2.teaching_items(root / FIXTURE_VERSION, TBC) == {}


def test_choose_parent_only_counts_items_in_itemsparse():
    # The last candidate is missing from ItemSparse, so the one before it wins.
    assert db2.choose_teaching_item(TBC, ["6002", "9999"], {"6002": {}}, ()) == "6002"
    assert db2.choose_teaching_item(TBC, ["9999"], {}, ()) is None
    assert db2.choose_teaching_item(TBC, [], {}, ()) is None


def test_choose_parent_ignores_skill_lines_and_names():
    # Classic rows carry no RequiredSkill and may be named like placeholders; the parent
    # rule must not look at either, or the Classic buckets would stop regenerating byte for byte.
    details = {"6002": {}, "6003": {"Display_lang": "Pattern: Old Thing OLD"}}
    assert db2.choose_teaching_item(TBC, ["6002", "6003"], details, {"999"}) == "6003"


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


TAILORING_LINES = frozenset({"197", "2948"})


def _item(rank, skill="197", name="Pattern: Fixture") -> dict:
    return {"RequiredSkillRank": str(rank), "RequiredSkill": str(skill), "Display_lang": name}


def _ranks(**rsr) -> dict:
    return {k.lstrip("i"): _item(v) for k, v in rsr.items()}


def _choose(candidates, details, lines=TAILORING_LINES):
    return db2.choose_teaching_item(FOREVER, candidates, details, lines)


def test_choose_xitem_lowest_positive_rank():
    details = _ranks(i7001=0, i7002=120, i7003=90)
    assert _choose(["7001", "7002", "7003"], details) == "7003"


def test_choose_xitem_all_zero_takes_lowest_numeric_id():
    details = _ranks(i10000=0, i9000=0, i9500=0)
    # Numeric, not string, order: "10000" < "9000" as text.
    assert _choose(["9500", "10000", "9000"], details) == "9000"


def test_choose_xitem_rank_tie_takes_lowest_id():
    details = _ranks(i8002=90, i8001=90, i8003=120)
    assert _choose(["8002", "8003", "8001"], details) == "8001"


def test_choose_xitem_ignores_items_missing_from_itemsparse():
    details = _ranks(i7002=120)
    assert _choose(["7001", "7002"], details) == "7002"
    assert _choose(["7001"], details) is None


def test_choose_xitem_bad_rank_fails_loud():
    with pytest.raises(ValueError, match="7001.*RequiredSkillRank"):
        _choose(["7001"], {"7001": _item("x")})
    no_rank = _item(0)
    del no_rank["RequiredSkillRank"]
    with pytest.raises(ValueError, match="7001.*RequiredSkillRank"):
        _choose(["7001"], {"7001": no_rank})


def test_choose_xitem_missing_required_skill_fails_loud():
    no_skill = _item(10)
    del no_skill["RequiredSkill"]
    with pytest.raises(ValueError, match="7001.*RequiredSkill\\b"):
        _choose(["7001"], {"7001": no_skill})


def test_choose_xitem_guardian_cloak_skips_old_placeholder():
    # Measured on 1.60.1.71037: spell 7153 links to both items; the OLD placeholder
    # has the lower rank and won before placeholders were ignored.
    leatherworking = frozenset({"165", "2945"})
    details = {"4295": _item(125, "165", "Pattern: Double-stitched Leather Gloves OLD"),
               "5974": _item(160, "165", "Pattern: Guardian Cloak")}
    assert _choose(["4295", "5974"], details, leatherworking) == "5974"


def test_choose_xitem_ignores_scroll_copy_with_required_skill_0():
    # Forever links each enchant to a rank-0 "Enchant ..." scroll that requires no skill.
    enchanting = frozenset({"333", "2940"})
    details = {"20735": _item(300, "333", "Formula: Enchant Cloak - Subtlety"),
               "273587": _item(0, "0", "Enchant Cloak - Subtlety")}
    assert _choose(["20735", "273587"], details, enchanting) == "20735"
    # A spell whose only item is the scroll copy has no teaching item at all.
    assert _choose(["273587"], details, enchanting) is None


def test_choose_xitem_keeps_child_skill_line_item():
    # First Aid manuals require child line 2942 (ParentSkillLineID 129).
    first_aid = frozenset({"129", "2942"})
    details = {"6454": _item(150, "2942", "Manual: Strong Anti-Venom")}
    assert _choose(["6454"], details, first_aid) == "6454"


def test_choose_xitem_ignores_item_of_another_profession():
    details = {"7001": _item(50, "164", "Plans: Fixture")}
    assert _choose(["7001"], details) is None


@pytest.mark.parametrize("name", [
    "Deprecated Recipe: Elixir of Fortitude", "DEPRECATED Plans: X", "deprecated thing",
    "Pattern: Double-stitched Leather Gloves OLD", "Pattern: Gloves (OLD)",
    "[PH] Recipe: X", "TEST Pattern", "zzOLDPattern: X",
    # Measured on 1.60.1.71037: "UNUSED ITEM", "[UNUSED] Letter Cookie", "UNUSED - Cloak ...".
    "UNUSED ITEM", "[UNUSED] Pattern: X", "Pattern: Cloak UNUSED", "UNUSED - Pattern: X"])
def test_choose_xitem_only_placeholder_returns_none(name):
    assert _choose(["7001"], {"7001": _item(50, "197", name)}) is None


@pytest.mark.parametrize("name", ["Recipe: Old Blanchy Feast", "Pattern: Bold Cloak",
                                  "Plans: Testament Helm", "Pattern: Unused Cloak",
                                  "Pattern: UNUSEDCLOAK"])
def test_choose_xitem_placeholder_regex_needs_whole_markers(name):
    # "Old"/"Bold"/"Testament"/"Unused" are real words in item names, not placeholder markers.
    assert _choose(["7001"], {"7001": _item(50, "197", name)}) == "7001"


def test_teaching_skill_lines_xitem_adds_child_lines(tmp_path):
    root = write_build(tmp_path, join="xitem")
    build_dir = root / FIXTURE_VERSION
    sla = load_table(build_dir, "SkillLineAbility", FOREVER)
    lines = db2.teaching_skill_lines(build_dir, FOREVER, sla, {197})
    assert lines["1002"] == frozenset({"197", "2948"})
    # Only profession lines count: no spell of the fixture sits on First Aid.
    assert set(lines) == {"1001", "1002", "1003", "1004", "1999"}


def test_teaching_skill_lines_parent_reads_no_skill_line(tmp_path):
    # The parent fixture writes no SkillLine.csv: the Classic path must not need it.
    root = write_build(tmp_path)
    build_dir = root / FIXTURE_VERSION
    assert not (build_dir / "SkillLine.csv").exists()
    sla = load_table(build_dir, "SkillLineAbility", TBC)
    assert db2.teaching_skill_lines(build_dir, TBC, sla, {197}) == {}


def test_teaching_skill_lines_xitem_missing_parent_column_names_table(tmp_path):
    root = write_build(tmp_path, join="xitem", omit_columns={"SkillLine": {"ParentSkillLineID"}})
    build_dir = root / FIXTURE_VERSION
    sla = load_table(build_dir, "SkillLineAbility", FOREVER)
    with pytest.raises(ColumnContractError, match="SkillLine.*ParentSkillLineID"):
        db2.teaching_skill_lines(build_dir, FOREVER, sla, {197})


def test_measure_canaries_forever_fixture(tmp_path):
    root = write_build(tmp_path, join="xitem")
    assert _measure(root / FIXTURE_VERSION, FOREVER) == CanaryResult(4, 1.0, 0.75)


def test_check_canaries_forever_names_link_table():
    with pytest.raises(CanaryError, match="ItemXItemEffect"):
        check_canaries(FOREVER, CanaryResult(4, 1.0, 0.0), "x")
