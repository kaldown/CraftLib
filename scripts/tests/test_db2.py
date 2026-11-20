import dataclasses
import re
from pathlib import Path

import pytest

import db2
from buckets import BUCKETS, get_bucket
from db2 import (CanaryError, CanaryResult, ColumnContractError, REQUIRED_COLUMNS,
                 check_canaries, load_table, measure_canaries, required_columns)
from tests.fixture_build import FIXTURE_VERSION, write_build

ARTIFACTS = Path(__file__).resolve().parents[2] / "vendor" / "db2-parser" / "artifacts"


def _measure(build_dir: Path, bucket) -> CanaryResult:
    """Replicates the extractor's inclusion rule on raw tables."""
    sparse_ids = {r["ID"] for r in load_table(build_dir, "ItemSparse", bucket)}
    crafted = {r["SpellID"]: r["EffectItemType"]
               for r in load_table(build_dir, "SpellEffect", bucket)
               if r["Effect"] == "24" and r["EffectItemType"] not in ("", "0")}
    reagents = set()
    for r in load_table(build_dir, "SpellReagents", bucket):
        if any(r[f"Reagent_{i}"] not in ("", "0") and r[f"ReagentCount_{i}"] not in ("", "0")
               for i in range(8)):
            reagents.add(r["SpellID"])
    teaching = {r["SpellID"] for r in load_table(build_dir, "ItemEffect", bucket)
                if r["ParentItemID"] not in ("", "0") and r["ParentItemID"] in sparse_ids}
    sla = load_table(build_dir, "SkillLineAbility", bucket)
    lines = {str(p) for p in (129, 185, 171, 164, 333, 202, 755, 165, 197, 186, 773)}
    return measure_canaries(sla, lines, crafted, reagents, teaching)


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
