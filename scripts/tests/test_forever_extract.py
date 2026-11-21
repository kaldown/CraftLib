"""Extract and generate on a Forever-shaped DB2 build (teaching items via ItemXItemEffect)."""
import dataclasses

import extract_db2_sources as ex
import generate_recipes as gen
from buckets import PROFESSIONS, get_bucket
from pipeline_io import load_json
from tests.fixture_build import FIXTURE_VERSION, write_build

FOREVER = get_bucket("forever")
TBC = get_bucket("tbc")


def _forever_test_bucket():
    return dataclasses.replace(get_bucket("forever"), professions=("Tailoring",),
                               canary_floor_teaching=0.5)


def _assert_fixture_sources(recipes: dict) -> None:
    assert recipes["1001"]["source"] == {"type": "TRAINER", "certainty": "DB2"}
    assert recipes["1002"]["source"] == {"type": "PENDING", "certainty": "PENDING",
                                         "itemId": 6002, "cost": 500}
    rep = recipes["1003"]["source"]
    assert (rep["type"], rep["certainty"], rep["itemId"], rep["factionId"], rep["level"]) == (
        "REPUTATION", "DB2", 6003, 59, "Honored")
    assert recipes["1004"]["source"] == {"type": "QUEST", "certainty": "DB2", "itemId": 6004}


def test_extract_forever_fixture(tmp_path):
    root = write_build(tmp_path, join="xitem")
    bucket = _forever_test_bucket()
    indexes = ex.build_indexes(root / FIXTURE_VERSION, bucket)
    doc, orphans = ex.extract_profession_sources(PROFESSIONS["Tailoring"], indexes,
                                                 FIXTURE_VERSION, None)
    assert orphans == []
    assert list(doc["recipes"]) == ["1001", "1002", "1003", "1004"]
    _assert_fixture_sources(doc["recipes"])


def test_extract_main_forever_fixture(tmp_path):
    write_build(tmp_path / "art", join="xitem")
    assert ex.main(["--bucket", "forever", "--profession", "Tailoring",
                    "--version", FIXTURE_VERSION, "--data-dir", str(tmp_path / "art"),
                    "--output-dir", str(tmp_path / "src")]) == 0
    _assert_fixture_sources(load_json(tmp_path / "src" / "Forever" / "Tailoring.json")["recipes"])


def test_extract_forever_xitem_missing_link_table_exits_2(tmp_path):
    write_build(tmp_path / "art", join="xitem")
    (tmp_path / "art" / FIXTURE_VERSION / "ItemXItemEffect.csv").unlink()
    assert ex.main(["--bucket", "forever", "--profession", "Tailoring",
                    "--version", FIXTURE_VERSION, "--data-dir", str(tmp_path / "art"),
                    "--output-dir", str(tmp_path / "src")]) == 2
    assert not (tmp_path / "src" / "Forever" / "Tailoring.json").exists()


def test_extract_teaching_choice_follows_the_join(tmp_path):
    # Spell 1002 is taught by 6002 (RequiredSkillRank 15) and, in a later row, 6003 (35).
    extra = ((1002, 6003),)
    xitem = write_build(tmp_path / "x", join="xitem", extra_teaching=extra)
    parent = write_build(tmp_path / "p", extra_teaching=extra)
    # xitem: the lowest positive RequiredSkillRank wins.
    assert ex.build_indexes(xitem / FIXTURE_VERSION, FOREVER)["recipe_items"]["1002"] == "6002"
    # parent: the last ItemEffect row wins (today's Classic behaviour).
    assert ex.build_indexes(parent / FIXTURE_VERSION, TBC)["recipe_items"]["1002"] == "6003"


def test_generate_indexes_forever_fixture(tmp_path):
    root = write_build(tmp_path, join="xitem")
    data = gen.load_all_data(root / FIXTURE_VERSION, FOREVER)
    indexes = gen.build_indexes(data, FOREVER)
    assert indexes["recipe_items"] == {"1002": "6002", "1003": "6003", "1004": "6004"}


def test_teaching_parent_generate_unfiltered_extract_filtered(tmp_path):
    # 9999 is not in ItemSparse. Extract only counts items it can read, generate never
    # filtered; both behaviours are kept so the Classic buckets regenerate byte for byte.
    root = write_build(tmp_path, extra_teaching=((1002, 9999),))
    build_dir = root / FIXTURE_VERSION
    assert ex.build_indexes(build_dir, TBC)["recipe_items"]["1002"] == "6002"
    gen_ix = gen.build_indexes(gen.load_all_data(build_dir, TBC), TBC)
    assert gen_ix["recipe_items"]["1002"] == "9999"
