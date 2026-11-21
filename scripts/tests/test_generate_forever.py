"""The generator on the Forever bucket: resolved wiki sources in, Lua + review report out.

Sources are built by the real extract and wiki enrich steps on the xitem fixture build
(fixture_build.write_resolved_forever), offline. The fixture has three resolved recipes
(1001 TRAINER, 1002 VENDOR with a hammer, 1003 REPUTATION for Merchant's Favor) and one
review (1004, no wiki row), so it fails the real coverage gate (3 of 4 shipped, nothing
above skill 79); tests about the emitted Lua switch the gate off on a copy of the bucket.
"""
import dataclasses
import json
import shutil
import subprocess

import pytest

import buckets
import generate_recipes as gr
from pipeline_io import load_json
from tests.fixture_build import (FIXTURE_VERSION, FOREVER_WIKITEXT, write_build,
                                 write_resolved_forever, write_sources)

NO_GATE = {"coverage_floor": None, "coverage_max_gap": None}
# Fixture Boots gets a wiki row with an unknown source: UNKNOWN with its pattern item.
UNKNOWN_ROW = FOREVER_WIKITEXT.replace(
    "|}\n", "|-\n| [[Fixture Boots Item]] || 55 ||  || Old || ?\n|}\n")


def _bucket(monkeypatch, **changes):
    """Swap the registry's forever entry for a modified copy (generate reads get_bucket)."""
    monkeypatch.setitem(buckets.BUCKETS, "forever",
                        dataclasses.replace(buckets.BUCKETS["forever"], **changes))


def _generate(art, src, out, *extra):
    return gr.main(["--bucket", "forever", "--profession", "Tailoring",
                    "--version", FIXTURE_VERSION, "--data-dir", str(art),
                    "--sources-dir", str(src), "--output-dir", str(out), *extra])


def _lua_path(out):
    return out / "Forever" / "Tailoring" / "Recipes.lua"


def _review(src) -> dict:
    return load_json(src / "Forever" / "review" / "Tailoring.json")


def _edit(src, change):
    path = src / "Forever" / "Tailoring.json"
    doc = load_json(path)
    change(doc["recipes"])
    path.write_text(json.dumps(doc, indent=2), encoding="utf-8")


def _run(tmp_path, monkeypatch, gate=NO_GATE, edit=None, **tree):
    if gate is not None:
        _bucket(monkeypatch, **gate)
    art, src = write_resolved_forever(tmp_path, **tree)
    if edit is not None:
        _edit(src, edit)
    out = tmp_path / "out"
    return _generate(art, src, out), art, src, out


def _block(lua: str, spell: int) -> str:
    start = lua.index(f"        id = {spell},")
    return lua[start:lua.index("\n    },", start)]


def _source_part(block: str) -> str:
    return block.split("        source = {", 1)[1]


# --- the emitted Lua ---------------------------------------------------------------

def test_currency_recipe_emits_currency_and_no_cost(tmp_path, monkeypatch):
    rc, _art, _src, out = _run(tmp_path, monkeypatch)
    assert rc == 0
    source = _source_part(_block(_lua_path(out).read_text(), 1003))
    assert "type = C.SOURCE_TYPE.REPUTATION," in source
    assert 'currency = { name = "Merchant\'s Favor", amount = 60 },' in source
    # WHY: cost = 0 would read as a free recipe; a currency recipe has no copper price.
    assert "cost =" not in source


def test_gold_vendor_keeps_its_cost(tmp_path, monkeypatch):
    rc, _art, _src, out = _run(tmp_path, monkeypatch)
    assert rc == 0
    source = _source_part(_block(_lua_path(out).read_text(), 1002))
    assert "itemId = 6002," in source and "cost = 500," in source
    assert "currency" not in source


def test_tools_follow_reagents(tmp_path, monkeypatch):
    rc, _art, _src, out = _run(tmp_path, monkeypatch)
    assert rc == 0
    lua = _lua_path(out).read_text()
    vest = _block(lua, 1002)
    line = '        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },'
    assert line in vest
    assert vest.index("        reagents = {") < vest.index(line) < vest.index("        source = {")
    # No tools, no field (nil reads as "needs none").
    assert "tools =" not in _block(lua, 1001)


def test_tools_list_categories_then_items_and_skip_zeros(tmp_path, monkeypatch):
    totems = [{"ID": 1, "SpellID": 1002, "RequiredTotemCategoryID_0": 0,
               "RequiredTotemCategoryID_1": 162, "Totem_0": 0, "Totem_1": 2320}]
    rc, _art, _src, out = _run(tmp_path, monkeypatch, spell_totems=totems)
    assert rc == 0
    assert ('        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, '
            '{ itemId = 2320, name = "Coarse Thread" } },') in _block(_lua_path(out).read_text(), 1002)


@pytest.mark.parametrize("tree,missing", [
    ({"totem_categories": []}, "162"),
    ({"spell_totems": [{"ID": 1, "SpellID": 1002, "RequiredTotemCategoryID_0": 0,
                        "RequiredTotemCategoryID_1": 0, "Totem_0": 777777, "Totem_1": 0}]},
     "777777"),
], ids=["category", "item"])
def test_tool_without_a_name_exits_2(tmp_path, monkeypatch, capsys, tree, missing):
    rc, _art, _src, out = _run(tmp_path, monkeypatch, **tree)
    assert rc == 2
    err = capsys.readouterr().err
    assert missing in err and "1002" in err and "tool" in err
    assert not _lua_path(out).exists()


def test_unknown_source_emits_type_and_item(tmp_path, monkeypatch):
    rc, _art, src, out = _run(tmp_path, monkeypatch, wikitext=UNKNOWN_ROW)
    assert rc == 0
    source = _source_part(_block(_lua_path(out).read_text(), 1004))
    assert "type = C.SOURCE_TYPE.UNKNOWN," in source
    assert "itemId = 6004," in source
    review = _review(src)
    assert review["unknownSource"] == [[1004, "Fixture Boots"]]
    assert (review["coverage"]["shipped"], review["coverage"]["knownSource"]) == (4, 3)


def test_unknown_source_without_item_exits_2(tmp_path, monkeypatch, capsys):
    def edit(r):
        r["1004"]["source"] = {"type": "UNKNOWN", "certainty": "WIKI"}
        r["1004"]["difficulty"] = {"orange": 55, "yellow": 60, "green": 80, "gray": 100,
                                   "certainty": "WIKI", "orangeFrom": "WIKI"}
    rc, *_ = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 2
    err = capsys.readouterr().err
    assert "1004" in err and "itemId" in err


def test_unknown_source_still_fails_on_classic_buckets():
    recipe = {"id": 1, "name": "x", "skillRequired": 1, "reagents": [], "expansion": "VANILLA",
              "skillRange": {"orange": 1, "yellow": 2, "green": 3, "gray": 4},
              "source": {"type": "UNKNOWN", "certainty": "WIKI", "itemId": 5}}
    with pytest.raises(ValueError):
        gr.generate_lua([recipe], buckets.PROFESSIONS["Tailoring"], buckets.get_bucket("vanilla"))


def test_generated_lua_parses(tmp_path, monkeypatch):
    if not shutil.which("luac5.1"):
        pytest.skip("luac5.1 not installed")
    rc, _art, _src, out = _run(tmp_path, monkeypatch, wikitext=UNKNOWN_ROW)
    assert rc == 0
    lua = _lua_path(out).read_text()
    assert 'profile = "FOREVER",' in lua and "expansion = C.EXPANSION.FOREVER," in lua
    assert subprocess.run(["luac5.1", "-p", str(_lua_path(out))]).returncode == 0


# --- reviews and the difficulty gates ----------------------------------------------

def test_review_is_excluded_and_reported(tmp_path, monkeypatch):
    rc, _art, src, out = _run(tmp_path, monkeypatch)
    assert rc == 0
    assert "id = 1004," not in _lua_path(out).read_text()
    review = _review(src)
    assert review["excluded"] == [[1004, "Fixture Boots", "no wiki row"]]
    assert review["heldBack"] is False
    assert review["sourceTypes"] == {"REPUTATION": 1, "TRAINER": 1, "VENDOR": 1}
    assert review["orangeFrom"] == {"ITEM": 2, "WIKI": 1}
    md = (src / "Forever" / "REVIEW.md").read_text()
    assert "no wiki row" in md and "1004 Fixture Boots" in md


def test_difficulty_of_another_certainty_is_excluded_not_shipped(tmp_path, monkeypatch):
    def edit(r):
        r["1001"]["difficulty"]["certainty"] = "WOWHEAD"
    rc, _art, src, out = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 0
    assert "id = 1001," not in _lua_path(out).read_text()
    reasons = {e[0]: e[2] for e in _review(src)["excluded"]}
    assert reasons[1001].startswith("difficulty certainty 'WOWHEAD' not accepted")


@pytest.mark.parametrize("field,value", [("orange", 0), ("orange", 11), ("green", 24),
                                         ("gray", 9)],
                         ids=["orange-0", "orange-above-yellow", "green-not-midpoint",
                              "gray-below-yellow"])
def test_strict_difficulty_exits_2(tmp_path, monkeypatch, capsys, field, value):
    # 1001 resolves to orange 1, yellow 10, green 25, gray 40.
    def edit(r):
        r["1001"]["difficulty"][field] = value
    rc, _art, _src, out = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 2
    err = capsys.readouterr().err
    assert "1001" in err and "strict difficulty" in err
    assert not _lua_path(out).exists()


# --- the coverage gate -------------------------------------------------------------

def test_failing_coverage_exits_2_and_still_writes_the_review(tmp_path, monkeypatch, capsys):
    rc, _art, src, out = _run(tmp_path, monkeypatch, gate=None)   # the real registry gate
    assert rc == 2
    err = capsys.readouterr().err
    assert "Tailoring" in err and "coverage" in err
    assert "0.750" in err and "80-299" in err
    assert not _lua_path(out).exists()
    cov = _review(src)["coverage"]
    assert (cov["shipped"], cov["inGame"], cov["maxGap"], cov["gap"]) == (3, 4, 220, [80, 299])
    assert cov["passes"] is False
    assert (src / "Forever" / "REVIEW.md").is_file()


def test_held_back_profession_is_not_written(tmp_path, monkeypatch, capsys):
    _bucket(monkeypatch, held_back=("Tailoring",))
    rc, _art, src, out = _run(tmp_path, monkeypatch, gate=None)
    assert rc == 0
    assert not _lua_path(out).exists()
    assert _review(src)["heldBack"] is True
    assert "held back" in capsys.readouterr().err
    assert "| Tailoring |" in (src / "Forever" / "REVIEW.md").read_text()


def test_held_back_profession_that_passes_warns(tmp_path, monkeypatch, capsys):
    _bucket(monkeypatch, held_back=("Tailoring",), coverage_floor=0.5, coverage_max_gap=300)
    rc, _art, src, out = _run(tmp_path, monkeypatch, gate=None)
    assert rc == 0
    assert not _lua_path(out).exists()
    err = capsys.readouterr().err
    assert "WARNING" in err and "held_back" in err


def test_rerun_is_byte_identical(tmp_path, monkeypatch):
    rc, art, src, out = _run(tmp_path, monkeypatch, wikitext=UNKNOWN_ROW)
    assert rc == 0
    files = [_lua_path(out), src / "Forever" / "review" / "Tailoring.json",
             src / "Forever" / "REVIEW.md"]
    first = [f.read_bytes() for f in files]
    assert _generate(art, src, out) == 0
    assert [f.read_bytes() for f in files] == first


def test_classic_bucket_writes_no_review(tmp_path):
    write_build(tmp_path / "art")
    src = write_sources(tmp_path / "src", "TBC")
    rc = gr.main(["--bucket", "tbc", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
                  "--data-dir", str(tmp_path / "art"), "--sources-dir", str(src),
                  "--output-dir", str(tmp_path / "out")])
    assert rc == 0
    assert not (src / "TBC" / "review").exists() and not (src / "TBC" / "REVIEW.md").exists()


# --- generate_lua price lines ------------------------------------------------------

def _recipe(source):
    return {"id": 2001, "name": "Unit Recipe", "skillRequired": 5, "reagents": [],
            "skillRange": {"orange": 5, "yellow": 10, "green": 15, "gray": 20},
            "expansion": "FOREVER", "source": source}


_REP = {"type": "REPUTATION", "certainty": "WIKI", "itemId": 7, "factionId": 59,
        "factionName": "Thorium Brotherhood", "level": "Honored"}
_FAVOR = {"name": "Merchant's Favor", "amount": 45}


def _lua(source, bucket="forever"):
    return gr.generate_lua([_recipe(source)], buckets.PROFESSIONS["Tailoring"],
                           buckets.get_bucket(bucket))


def test_reputation_currency_line():
    src = _source_part(_block(_lua({**_REP, "currency": _FAVOR}), 2001))
    assert 'currency = { name = "Merchant\'s Favor", amount = 45 },' in src
    assert "cost =" not in src


def test_classic_reputation_lines_are_unchanged():
    lua = _lua({**_REP, "cost": 1000}, bucket="tbc")
    assert ("            itemId = 7,\n            cost = 1000,\n        },") in lua


@pytest.mark.parametrize("source", [
    {"type": "VENDOR", "certainty": "WIKI", "itemId": 7},
    {**_REP},
    {"type": "VENDOR", "certainty": "WIKI", "itemId": 7, "currency": {"name": "x", "amount": 0}},
    {"type": "VENDOR", "certainty": "WIKI", "itemId": 7, "currency": {"name": "", "amount": 5}},
    {"type": "VENDOR", "certainty": "WIKI", "itemId": 7, "currency": {"name": "x", "amount": True}},
    {"type": "VENDOR", "certainty": "WIKI", "itemId": 7, "currency": _FAVOR, "cost": 0},
], ids=["vendor-no-price", "rep-no-price", "currency-0", "currency-no-name",
        "currency-bool", "currency-with-cost-0"])
def test_price_lines_refuse_a_free_reading(source):
    with pytest.raises(gr.GenerateError) as e:
        _lua(source)
    assert "2001" in str(e.value)


# --- vendor prices: explicit scope -------------------------------------------------

def _row(item_id, buy):
    return {"ID": str(item_id), "BuyPrice": str(buy), "SellPrice": "0",
            "VendorStackCount": "1", "Display_lang": f"Item{item_id}"}


def test_explicit_scope_needs_the_scope_named():
    allow = {"1": {"name": "unscoped", "verified": True},
             "2": {"name": "default", "verified": True, "flavors": ["DEFAULT"]},
             "3": {"name": "forever", "verified": True, "flavors": ["FOREVER"]}}
    details = {r["ID"]: r for r in (_row(1, 10), _row(2, 20), _row(3, 30))}
    out = gr.compute_vendor_prices(allow, details, "FOREVER", explicit=True)
    assert [e["itemId"] for e in out] == [3]
    # The implicit rule is unchanged: an unscoped entry belongs to every scope.
    assert [e["itemId"] for e in gr.compute_vendor_prices(allow, details, "DEFAULT")] == [1, 2]


def test_forever_vendor_prices_ship_an_empty_table(tmp_path):
    art = write_build(tmp_path / "art", join="xitem")
    src = tmp_path / "src"
    src.mkdir()
    allow = src / "vendor_reagents.json"
    allow.write_text(json.dumps({"vendorReagents": {
        "2320": {"name": "Coarse Thread", "verified": True},
        "2589": {"name": "Linen Cloth", "verified": True, "flavors": ["DEFAULT", "SOD"]}}}))
    argv = ["--bucket", "forever", "--version", FIXTURE_VERSION, "--data-dir", str(art),
            "--sources-dir", str(src), "--output-dir", str(tmp_path / "out"),
            "--vendor-prices-only"]
    assert gr.main(argv) == 0
    lua = (tmp_path / "out" / "Forever" / "VendorPrices.lua").read_text()
    assert 'profile = "FOREVER",' in lua
    assert "    prices = {\n    }," in lua
    allow.write_text(json.dumps({"vendorReagents": {
        "2320": {"name": "Coarse Thread", "verified": False, "flavors": ["FOREVER"]}}}))
    assert gr.main(argv) == 0
    assert "[2320] = 10," in (tmp_path / "out" / "Forever" / "VendorPrices.lua").read_text()


def test_missing_sources_file_exits_2_and_writes_no_review(tmp_path, monkeypatch, capsys):
    _bucket(monkeypatch, **NO_GATE)
    art, src = write_resolved_forever(tmp_path)
    (src / "Forever" / "Tailoring.json").unlink()
    assert _generate(art, src, tmp_path / "out") == 2
    assert "no sources file" in capsys.readouterr().err
    assert not (src / "Forever" / "review").exists()
