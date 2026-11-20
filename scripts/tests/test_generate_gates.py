"""Loud-generation gates: every silent drop/tolerance is a GenerateError unless excepted."""
import json
from pathlib import Path

import pytest

import generate_recipes as gr
from buckets import BUCKETS, get_bucket
from tests.fixture_build import FIXTURE_VERSION, write_build, write_sources

REPO = Path(__file__).resolve().parents[2]


def _run(tmp_path, *, exceptions=None, recipes_override=None, build_kw=None):
    write_build(tmp_path / "art", **(build_kw or {}))
    src = write_sources(tmp_path / "src", "TBC", recipes_override=recipes_override)
    if exceptions is not None:
        (src / "generate_exceptions.json").write_text(json.dumps(exceptions), encoding="utf-8")
    return gr.main(["--bucket", "tbc", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
                    "--data-dir", str(tmp_path / "art"), "--sources-dir", str(src),
                    "--output-dir", str(tmp_path / "out")])


def _lua(tmp_path):
    return (tmp_path / "out" / "TBC" / "Tailoring" / "Recipes.lua").read_text()


def _exc(category, spells, reason="test reason"):
    return {"tbc": {category: [{"spells": spells, "reason": reason}]}}


UNKNOWN = {1001: {"name": "Fixture Bolt", "source": {"type": "UNKNOWN", "certainty": "WOWHEAD"},
                  "difficulty": {"orange": 1, "yellow": 10, "green": 25, "gray": 40,
                                 "certainty": "WOWHEAD"}}}


def test_unknown_source_type_raises_naming_spell(tmp_path, capsys):
    assert _run(tmp_path, recipes_override=UNKNOWN) == 2
    err = capsys.readouterr().err
    assert "1001" in err and "UNKNOWN" in err and "tbc" in err


def test_excluded_spell_is_left_out_and_logged(tmp_path, capsys):
    assert _run(tmp_path, recipes_override=UNKNOWN, exceptions=_exc("exclude", [1001])) == 0
    assert "id = 1001," not in _lua(tmp_path)
    assert "test reason" in capsys.readouterr().err


_REAGENTLESS = {1999: {"name": "Apprentice Tailoring",
                       "source": {"type": "TRAINER", "certainty": "WOWHEAD"},
                       "difficulty": {"orange": 1, "yellow": 1, "green": 1, "gray": 1,
                                      "certainty": "WOWHEAD"}}}


def test_reagentless_recipe_raises_unless_listed(tmp_path, capsys):
    assert _run(tmp_path, recipes_override=_REAGENTLESS) == 2
    assert "1999" in capsys.readouterr().err
    assert _run(tmp_path, recipes_override=_REAGENTLESS,
                exceptions=_exc("reagentless", [1999])) == 0
    lua = _lua(tmp_path)
    block = lua[lua.index("id = 1999,"):]
    assert "reagents = {\n        }," in block.split("source = {")[0]


def _review(key, value):
    return {1002: {"name": "Fixture Vest",
                   "source": {"type": "VENDOR", "certainty": "WOWHEAD", "itemId": 6002,
                              "cost": 500, key: value},
                   "difficulty": {"orange": 15, "yellow": 20, "green": 40, "gray": 60,
                                  "certainty": "WOWHEAD"}}}


@pytest.mark.parametrize("key,value", [("needsReview", True), ("reviewReason", "x")])
def test_needs_review_raises_unless_listed(tmp_path, key, value):
    assert _run(tmp_path, recipes_override=_review(key, value)) == 2
    assert _run(tmp_path, recipes_override=_review(key, value),
                exceptions=_exc("shipNeedsReview", [1002])) == 0


def test_missing_spell_name_raises(tmp_path, capsys):
    assert _run(tmp_path, build_kw={"omit_spell_names": {"1002"}}) == 2
    err = capsys.readouterr().err
    assert "1002" in err and "SpellName" in err


def test_missing_reagent_name_raises(tmp_path, capsys):
    assert _run(tmp_path, build_kw={"omit_item_names": {"2320"}}) == 2
    assert "2320" in capsys.readouterr().err


def test_zero_recipes_exits_2(tmp_path, capsys):
    nodiff = {s: {"name": "x", "source": {"type": "TRAINER", "certainty": "WOWHEAD"}}
              for s in (1001, 1002, 1003, 1004)}
    assert _run(tmp_path, recipes_override=nodiff) == 2
    err = capsys.readouterr().err
    assert "Tailoring" in err and "no recipes" in err


def test_reputation_missing_field_raises_generate_error(tmp_path, capsys):
    rep = {1003: {"name": "Fixture Cloak",
                  "source": {"type": "REPUTATION", "certainty": "DB2", "itemId": 6003},
                  "difficulty": {"orange": 35, "yellow": 40, "green": 60, "gray": 80,
                                 "certainty": "WOWHEAD"}}}
    assert _run(tmp_path, recipes_override=rep) == 2
    assert "factionId" in capsys.readouterr().err


@pytest.mark.parametrize("doc", [
    {"forever": {}},
    {"tbc": {"skip": [{"spells": [1], "reason": "r"}]}},
    {"tbc": {"exclude": [{"spells": [1], "reason": ""}]}},
    {"tbc": {"exclude": [{"spells": ["x"], "reason": "r"}]}},
    {"tbc": {"exclude": [{"spells": [], "reason": "r"}]}},
    {"tbc": {"exclude": [{"spells": [1], "reason": "r"}],
             "shipNeedsReview": [{"spells": [1], "reason": "r"}]}},
])
def test_load_exceptions_rejects_bad_shapes(tmp_path, doc):
    f = tmp_path / "generate_exceptions.json"
    f.write_text(json.dumps(doc))
    with pytest.raises(gr.GenerateError):
        gr.load_exceptions(f, get_bucket("tbc"))


def test_missing_exceptions_file_is_empty(tmp_path):
    assert gr.load_exceptions(tmp_path / "nope.json", get_bucket("tbc")) == gr.Exceptions()


def test_unused_exception_warns(tmp_path, capsys):
    exc = {"tbc": {"exclude": [{"spells": [1003], "reason": "r"}],
                   "shipNeedsReview": [{"spells": [1004], "reason": "r"}]}}
    assert _run(tmp_path, exceptions=exc) == 0
    err = capsys.readouterr().err
    assert "tbc/shipNeedsReview spell 1004" in err and "no longer needed" in err
    assert "spell 1003" not in err


def test_repo_exceptions_file_is_valid():
    path = REPO / "Data" / "Sources" / "generate_exceptions.json"
    for key in BUCKETS:
        exc = gr.load_exceptions(path, get_bucket(key))
        if key == "sod":
            # 346 shipped recipes, but spell 461692 sits in both Leatherworking and Tailoring:
            # the spell-keyed map holds 345 unique spells.
            assert len(exc.ship_needs_review) == 345
        if key == "tbc":
            assert exc.exclude.keys() == {"27958"}
