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
    expected = {"vanilla": 0.039, "sod": 0.039, "tbc": 0.666, "wotlk": 0.566}
    for key, bucket in BUCKETS.items():
        build_dir = ARTIFACTS / bucket.build
        if not build_dir.is_dir():
            pytest.skip(f"build {bucket.build} not cached")
        for table in REQUIRED_COLUMNS:
            load_table(build_dir, table, bucket)
        result = _measure(build_dir, bucket)
        assert abs(result.teaching_share - expected[key]) < 0.01, (key, result)
        check_canaries(bucket, result, bucket.build)
