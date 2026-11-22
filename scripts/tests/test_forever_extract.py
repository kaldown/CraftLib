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


def test_extract_main_forever_fixture(tmp_path, capsys):
    write_build(tmp_path / "art", join="xitem")
    assert ex.main(["--bucket", "forever", "--profession", "Tailoring",
                    "--version", FIXTURE_VERSION, "--data-dir", str(tmp_path / "art"),
                    "--output-dir", str(tmp_path / "src")]) == 0
    _assert_fixture_sources(load_json(tmp_path / "src" / "Forever" / "Tailoring.json")["recipes"])
    # Forever is enriched from the wiki, so the next-step hint must name that tool.
    err = capsys.readouterr().err
    assert "fetch_wiki_sources.py --bucket forever --profession Tailoring" in err
    assert "fetch_wowhead_sources.py" not in err
    # Every DB2 source of a wiki bucket is provisional, TRAINER/DB2 included, not only PENDING.
    assert "All 4 sources are provisional until the wiki step resolves them" in err
    assert "need wiki verification" not in err


def test_enrich_hint_names_the_bucket_enrich_step():
    tailoring = PROFESSIONS["Tailoring"]
    assert ex.enrich_hint(FOREVER, tailoring) == (
        "python scripts/fetch_wiki_sources.py --bucket forever --profession Tailoring")
    for key in ("tbc", "vanilla", "wotlk", "sod"):
        assert ex.enrich_hint(get_bucket(key), tailoring) == (
            f"python scripts/fetch_wowhead_sources.py --bucket {key} --profession Tailoring")


# Extra links for spells of the fixture, shaped like the real Forever cases:
#   1002 also links to an OLD placeholder with a lower rank than its real pattern,
#   1001 (trainer-taught) links only to a scroll copy that requires no skill,
#   1003 also links to an item of the Tailoring child line 2948 with a lower rank.
_EXTRA_ITEMS = {6102: ("Pattern: Fixture Vest OLD", 197, 5),
                6101: ("Fixture Bolt Scroll", 0, 0),
                6103: ("Manual: Fixture Cloak", 2948, 30)}
_EXTRA_LINKS = ((1002, 6102), (1001, 6101), (1003, 6103))


def test_extract_forever_skips_placeholder_and_scroll_items(tmp_path):
    root = write_build(tmp_path, join="xitem", extra_items=_EXTRA_ITEMS,
                       extra_teaching=_EXTRA_LINKS)
    indexes = ex.build_indexes(root / FIXTURE_VERSION, _forever_test_bucket())
    items = indexes["recipe_items"]
    assert items["1002"] == "6002"          # OLD placeholder ignored despite its lower rank
    assert "1001" not in items              # scroll copy only: no teaching item
    assert items["1003"] == "6103"          # child-line item kept (and has the lowest rank)
    assert ex.detect_source("1001", indexes) == {"type": "TRAINER", "certainty": "DB2"}


def test_generate_indexes_forever_skip_placeholder_and_scroll_items(tmp_path):
    root = write_build(tmp_path, join="xitem", extra_items=_EXTRA_ITEMS,
                       extra_teaching=_EXTRA_LINKS)
    bucket = _forever_test_bucket()
    indexes = gen.build_indexes(gen.load_all_data(root / FIXTURE_VERSION, bucket), bucket)
    assert indexes["recipe_items"] == {"1002": "6002", "1003": "6103", "1004": "6004"}


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


def test_auto_learned_recipe_is_extracted_as_a_db2_starter(tmp_path):
    # AcquireMethod 1 on Fixture Boots (which also has a teaching item): the same source
    # the wiki step resolves to, so re-extracting resolved sources is a no-op.
    import extract_db2_sources as extract
    from pipeline_io import load_json
    from tests.fixture_build import FIXTURE_VERSION, write_build
    art = write_build(tmp_path / "art", join="xitem", acquire={1004: (1, 1)})
    argv = ["--bucket", "forever", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
            "--data-dir", str(art), "--output-dir", str(tmp_path / "src")]
    assert extract.main(argv) == 0
    recipes = load_json(tmp_path / "src" / "Forever" / "Tailoring.json")["recipes"]
    assert recipes["1004"]["source"] == {"type": "STARTER", "certainty": "DB2"}
    assert recipes["1001"]["source"] == {"type": "TRAINER", "certainty": "DB2"}


def test_classic_extract_never_reads_acquire_method(tmp_path):
    # The Classic contract has no AcquireMethod column; a "1" in it must change nothing.
    import extract_db2_sources as extract
    from buckets import get_bucket
    from tests.fixture_build import FIXTURE_VERSION, write_build
    art = write_build(tmp_path / "art")
    indexes = extract.build_indexes(art / FIXTURE_VERSION, get_bucket("tbc"))
    assert indexes["acquire_method"] is False
    for row in indexes["skill_line_abilities"]:
        row["AcquireMethod"] = "1"
    doc, _ = extract.extract_profession_sources(
        get_bucket("tbc").profession("Tailoring"), indexes, FIXTURE_VERSION, None)
    assert all(r["source"]["type"] != "STARTER" for r in doc["recipes"].values())
