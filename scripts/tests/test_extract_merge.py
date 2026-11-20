"""Re-running extract must preserve verified/curated state (D4), never rebuild from scratch."""
import copy
import json
from pathlib import Path

import pytest

import extract_db2_sources as ex
from buckets import BUCKETS, PROFESSIONS
from pipeline_io import load_json
from tests.fixture_build import FIXTURE_VERSION, write_build, write_sources

REPO = Path(__file__).resolve().parents[2]
ARTIFACTS = REPO / "vendor" / "db2-parser" / "artifacts"

DETECTED = {"type": "TRAINER", "certainty": "DB2"}


def test_merge_keeps_difficulty_wowhead_season_phase():
    existing = {"name": "Old", "source": {"type": "TRAINER", "certainty": "DB2"},
                "difficulty": {"orange": 1}, "wowhead": {"x": 1}, "seasonId": 2, "phaseId": 3}
    out = ex.merge_recipe(existing, "New", DETECTED)
    for k in ("difficulty", "wowhead", "seasonId", "phaseId"):
        assert out[k] == existing[k]
    # Original key order survives so re-extracts do not churn diffs.
    assert list(out) == list(existing)


def test_merge_without_existing_returns_name_and_source():
    assert ex.merge_recipe(None, "N", DETECTED) == {"name": "N", "source": DETECTED}


@pytest.mark.parametrize("certainty", ["MANUAL", "CROSS", "WOWHEAD", "REMOVED"])
def test_merge_keeps_non_recomputable_sources(certainty):
    src = {"type": "VENDOR", "certainty": certainty, "itemId": 1}
    out = ex.merge_recipe({"name": "A", "source": src}, "A", DETECTED)
    assert out["source"] == src


def test_merge_keeps_db2_source_with_review_marker():
    src = {"type": "TRAINER", "certainty": "DB2", "needsReview": True,
           "reviewReason": "cross-bucket-uncorroborated"}
    out = ex.merge_recipe({"name": "A", "source": dict(src)}, "A", {"type": "QUEST", "certainty": "DB2"})
    assert out["source"] == src


@pytest.mark.parametrize("certainty", ["DB2", "PENDING"])
def test_merge_recomputes_db2_and_pending(certainty):
    out = ex.merge_recipe({"name": "A", "source": {"type": "X", "certainty": certainty}}, "A", DETECTED)
    assert out["source"] == DETECTED


def test_merge_updates_name():
    out = ex.merge_recipe({"name": "Old", "source": {"type": "X", "certainty": "DB2"}}, "New", DETECTED)
    assert out["name"] == "New"


def test_preserve_source():
    assert not ex.preserve_source(None)
    assert ex.preserve_source({"certainty": "MANUAL"})
    assert ex.preserve_source({"certainty": "PENDING", "reviewReason": "x"})
    assert not ex.preserve_source({"certainty": "PENDING"})


def _argv(tmp_path, *extra):
    return ["--bucket", "tbc", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
            "--data-dir", str(tmp_path / "art"), "--output-dir", str(tmp_path / "src"), *extra]


def test_main_on_fixture_preserves_state_and_appends_new(tmp_path, capsys):
    write_build(tmp_path / "art")
    manual = {"type": "VENDOR", "certainty": "MANUAL", "itemId": 6002, "cost": 500}
    diff = {"orange": 1, "yellow": 10, "green": 25, "gray": 40}
    write_sources(tmp_path / "src", "TBC", recipes_override={
        1001: {"name": "Fixture Bolt", "source": manual, "difficulty": diff},
        # Stale PENDING (default fixture has a WOWHEAD-verified 1002, which must be kept).
        1002: {"name": "Fixture Vest", "source": {"type": "PENDING", "certainty": "PENDING",
                                                 "itemId": 6002, "cost": 1}},
        4242: {"name": "Gone Recipe", "source": {"type": "TRAINER", "certainty": "DB2"}},
    })
    assert ex.main(_argv(tmp_path)) == 0
    recipes = load_json(tmp_path / "src" / "TBC" / "Tailoring.json")["recipes"]
    assert recipes["1001"]["source"] == manual and recipes["1001"]["difficulty"] == diff
    assert recipes["1002"]["source"]["type"] == "PENDING"
    assert recipes["1002"]["source"]["itemId"] == 6002 and recipes["1002"]["source"]["cost"] == 500
    assert recipes["1003"]["source"]["type"] == "REPUTATION" and recipes["1003"]["source"]["certainty"] == "DB2"
    assert recipes["1004"]["source"]["type"] == "QUEST" and recipes["1004"]["source"]["certainty"] == "DB2"
    assert "1999" not in recipes
    assert list(recipes)[-1] == "4242"
    assert "4242" in capsys.readouterr().err


def test_main_canary_failure_exits_2_and_writes_nothing(tmp_path):
    write_build(tmp_path / "art", teaching_parent_zero=True)
    write_sources(tmp_path / "src", "TBC")
    f = tmp_path / "src" / "TBC" / "Tailoring.json"
    before = f.read_bytes()
    assert ex.main(_argv(tmp_path)) == 2
    assert f.read_bytes() == before


def test_main_unknown_profession_exits_1(tmp_path):
    write_build(tmp_path / "art")
    assert ex.main(["--bucket", "tbc", "--profession", "Nope", "--version", FIXTURE_VERSION,
                    "--data-dir", str(tmp_path / "art"), "--output-dir", str(tmp_path / "src")]) == 1


def test_reextract_tracked_sources_is_stable():
    if not ARTIFACTS.is_dir():
        pytest.skip("vendor/db2-parser/artifacts not present")
    # Spells with several teaching items: DB2's last ItemEffect row wins today, which
    # differs from the tracked (earlier-derived) value. Fixed in Phase 2 D9.
    known_tbc_diffs = {"42558", "46134", "46132"}
    for key, bucket in BUCKETS.items():
        build_dir = ARTIFACTS / bucket.build
        if not build_dir.is_dir():
            pytest.skip(f"build {bucket.build} not cached")
        indexes = ex.build_indexes(build_dir, bucket)  # once per bucket: it is slow
        differing, added = set(), set()
        for folder in bucket.professions:
            tracked_path = REPO / "Data" / "Sources" / bucket.folder / f"{folder}.json"
            if not tracked_path.is_file():
                continue
            tracked = load_json(tracked_path)
            doc, _orphans = ex.extract_profession_sources(
                PROFESSIONS[folder], indexes, bucket.build, copy.deepcopy(tracked))
            for sid, rec in tracked["recipes"].items():
                if doc["recipes"][sid] != rec:
                    differing.add(sid)
            # Spells DB2 has that the tracked file never listed get appended, not rewritten.
            added |= set(doc["recipes"]) - set(tracked["recipes"])
        assert differing == (known_tbc_diffs if key == "tbc" else set()), (key, sorted(differing))
        # TBC Cooking has one untracked spell in the build (818 Basic Campfire).
        assert added == ({"818"} if key == "tbc" else set()), (key, sorted(added))
