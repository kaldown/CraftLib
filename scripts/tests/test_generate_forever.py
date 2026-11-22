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
import review_report as rr
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


# The wiki's "Special trainer" reaches the source as npcName.
SPECIAL_ROW = FOREVER_WIKITEXT.replace("[[Fixture Bolt Item]] || 1 ||  || Old || Trainer",
                                       "[[Fixture Bolt Item]] || 1 ||  || Old || Special trainer")


def test_special_trainer_keeps_its_npc_name(tmp_path, monkeypatch):
    rc, _art, _src, out = _run(tmp_path, monkeypatch, wikitext=SPECIAL_ROW)
    assert rc == 0
    source = _source_part(_block(_lua_path(out).read_text(), 1001))
    assert "type = C.SOURCE_TYPE.TRAINER," in source
    assert 'npcName = "Special trainer",' in source
    # WHY: the generic text would send the player to any trainer.
    assert "Any Tailoring Trainer" not in source


def test_trainer_without_npc_name_keeps_the_generic_text(tmp_path, monkeypatch):
    rc, _art, _src, out = _run(tmp_path, monkeypatch)
    assert rc == 0
    source = _source_part(_block(_lua_path(out).read_text(), 1001))
    assert 'npcName = "Any Tailoring Trainer",' in source


def test_trainer_npc_name_is_escaped():
    src = _source_part(_block(_lua({"type": "TRAINER", "certainty": "WIKI",
                                    "npcName": 'Old "Bob" \\ Smith'}), 2001))
    assert 'npcName = "Old \\"Bob\\" \\\\ Smith",' in src


def test_forever_header_names_the_wiki():
    assert ("-- Generated from DB2 data, Wowhead guide tables and the Warcraft Wiki recipe "
            "tables\n") in _lua(
        {"type": "TRAINER", "certainty": "WIKI"})


def test_forever_header_names_the_client():
    lua = _lua({"type": "TRAINER", "certainty": "WIKI"})
    assert "-- Tailoring recipes for WoW Forever\n" in lua
    assert "Forever Classic" not in lua


def test_classic_header_is_unchanged():
    lua = _lua({"type": "TRAINER", "certainty": "WOWHEAD"}, bucket="tbc")
    assert "-- Tailoring recipes for TBC Classic\n-- Generated from DB2 data\nlocal ADDON_NAME" in lua


def test_classic_trainer_lines_are_unchanged():
    lua = _lua({"type": "TRAINER", "certainty": "WOWHEAD", "trainingCost": 50}, bucket="tbc")
    assert ('            type = C.SOURCE_TYPE.TRAINER,\n'
            '            npcName = "Any Tailoring Trainer",\n'
            '            trainingCost = 50,\n        },') in lua


def test_ingame_trainer_cost_is_emitted():
    lua = _lua({"type": "TRAINER", "certainty": "INGAME", "trainingCost": 250})
    assert ('            type = C.SOURCE_TYPE.TRAINER,\n'
            '            npcName = "Any Tailoring Trainer",\n'
            '            trainingCost = 250,\n        },') in lua


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


def test_learn_skill_above_yellow_ships_with_that_skill_required(tmp_path, monkeypatch):
    # 1001: yellow 10, gray 40. Learned at 11 it is yellow from the start: orange 11 is a
    # true learn skill, and the recipe is offered from skill 11 on.
    def edit(r):
        r["1001"]["difficulty"]["orange"] = 11
    rc, _art, _src, out = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 0
    lua = _lua_path(out).read_text()
    block = lua[lua.index("id = 1001,"):lua.index("id = 1002,")]
    assert "skillRequired = 11," in block
    assert "skillRange = { orange = 11, yellow = 10, green = 25, gray = 40 }," in block


@pytest.mark.parametrize("field,value", [("orange", 0), ("orange", 40), ("orange", 41),
                                         ("green", 24), ("gray", 9)],
                         ids=["orange-0", "orange-at-gray", "orange-above-gray",
                              "green-not-midpoint", "gray-below-yellow"])
def test_strict_difficulty_exits_2(tmp_path, monkeypatch, capsys, field, value):
    # 1001 resolves to orange 1, yellow 10, green 25, gray 40.
    def edit(r):
        r["1001"]["difficulty"][field] = value
    rc, _art, _src, out = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 2
    err = capsys.readouterr().err
    assert "1001" in err and "strict difficulty" in err
    assert not _lua_path(out).exists()


# --- resolver notes and the milestones -------------------------------------------

def test_source_notes_reach_the_review(tmp_path, monkeypatch):
    def edit(r):
        r["1002"]["forever"] = {"notes": ["wiki row skill 9 differs from ITEM orange 15",
                                          "in-game trainer teaches it; DB2 also has teaching "
                                          "item 6002"]}
        r["1004"]["forever"] = {"notes": ["wiki says vendor; price not in DB2 or wiki"]}
    rc, _art, src, _out = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 0
    # Shipped (1002) and excluded (1004) recipes alike, sorted by spell and text.
    assert _review(src)["notes"] == [
        [1002, "Fixture Vest", "in-game trainer teaches it; DB2 also has teaching item 6002"],
        [1002, "Fixture Vest", "wiki row skill 9 differs from ITEM orange 15"],
        [1004, "Fixture Boots", "wiki says vendor; price not in DB2 or wiki"]]
    md = (src / "Forever" / "REVIEW.md").read_text()
    assert "### Notes (3)" in md
    assert "- 1004 Fixture Boots: wiki says vendor; price not in DB2 or wiki" in md


def test_malformed_source_notes_exit_2(tmp_path, monkeypatch, capsys):
    def edit(r):
        r["1002"]["forever"] = {"notes": "not a list"}
    rc, *_ = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 2
    assert "1002" in capsys.readouterr().err


def test_unverified_milestones_are_announced(tmp_path, monkeypatch, capsys):
    rc, _art, src, _out = _run(tmp_path, monkeypatch)
    assert rc == 0
    note = "milestones (75, 150, 225, 300) not yet confirmed in game"
    assert note in capsys.readouterr().err
    assert "Milestones (75, 150, 225, 300) not yet confirmed in game." in (
        src / "Forever" / "REVIEW.md").read_text()
    _bucket(monkeypatch, milestones_verified=True)
    assert _generate(*_run_dirs(tmp_path)) == 0
    assert "not yet confirmed" not in capsys.readouterr().err


def _run_dirs(tmp_path):
    return tmp_path / "art", tmp_path / "src", tmp_path / "out"


# --- the coverage gate -------------------------------------------------------------

def test_failing_coverage_exits_2_and_still_writes_the_review(tmp_path, monkeypatch, capsys):
    rc, _art, src, out = _run(tmp_path, monkeypatch, gate=None)   # the real registry gate
    assert rc == 2
    err = capsys.readouterr().err
    assert "Tailoring" in err and "coverage" in err
    # 3 of 4 meets the 0.75 floor. Nothing shipped covers skill 80 and above, and the
    # excluded Fixture Boots (no learn-skill hint, gray 100) could give skill-ups up to 99.
    assert "80-99" in err and "below the floor" not in err
    assert not _lua_path(out).exists()
    cov = _review(src)["coverage"]
    assert (cov["shipped"], cov["inGame"], cov["maxGap"], cov["gap"]) == (3, 4, 20, [80, 99])
    assert cov["passes"] is False
    assert (src / "Forever" / "REVIEW.md").is_file()


def test_gap_counts_every_point_when_the_registry_says_so(tmp_path, monkeypatch, capsys):
    _bucket(monkeypatch, gap_skill_up_only=False)
    rc, _art, src, _out = _run(tmp_path, monkeypatch, gate=None)
    assert rc == 2
    cov = _review(src)["coverage"]
    assert (cov["maxGap"], cov["gap"]) == (220, [80, 299])


def test_learn_skill_hint_later_than_yellow_does_not_hide_a_gap(tmp_path, monkeypatch):
    # Fixture Boots (yellow 60, gray 100) carries a hint of 95. From yellow on it gives
    # skill-ups whenever it was learned, so 80-99 stays a gap and the gate still fails.
    def edit(r):
        r["1004"]["forever"] = {"learnFrom": 95}
    rc, _art, src, out = _run(tmp_path, monkeypatch, gate=None, edit=edit)
    assert rc == 2
    cov = _review(src)["coverage"]
    assert (cov["maxGap"], cov["gap"], cov["passes"]) == (20, [80, 99], False)
    assert not _lua_path(out).exists()


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


# --- unnamed reagents, MANUAL difficulty -----------------------------------------------

def test_unnamed_reagent_is_excluded_with_its_reason(tmp_path, monkeypatch):
    # Measured 8 resolved recipes on 1.60.1.71037 whose reagent ItemSparse does not name;
    # under review_policy "exclude" they are listed, not a stop for the whole profession.
    rc, _art, src, out = _run(tmp_path, monkeypatch, omit_item_names={"2320"})
    assert rc == 0
    assert "id = 1002," not in _lua_path(out).read_text()
    assert [1002, "Fixture Vest", "reagent 2320 has no name in this build"] in \
        _review(src)["excluded"]


def test_manual_difficulty_ships(tmp_path, monkeypatch):
    def edit(r):
        r["1001"]["difficulty"] = {"orange": 1, "yellow": 10, "green": 25, "gray": 40,
                                   "certainty": "MANUAL"}
    rc, _art, src, out = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 0
    assert "id = 1001," in _lua_path(out).read_text()
    assert _review(src)["orangeFrom"] == {"ITEM": 2, "MANUAL": 1}


def test_manual_difficulty_still_passes_the_strict_check(tmp_path, monkeypatch, capsys):
    def edit(r):
        r["1001"]["difficulty"] = {"orange": 40, "yellow": 10, "green": 25, "gray": 40,
                                   "certainty": "MANUAL"}
    rc, *_ = _run(tmp_path, monkeypatch, edit=edit)
    assert rc == 2
    assert "strict difficulty" in capsys.readouterr().err


# --- bucket guards: currency refusal and other edge cases ------------------------------

def test_currency_is_refused_on_a_bucket_without_currency_costs():
    with pytest.raises(gr.GenerateError) as e:
        _lua({"type": "VENDOR", "certainty": "WOWHEAD", "itemId": 7, "currency": _FAVOR},
             bucket="tbc")
    assert "2001" in str(e.value) and "currency" in str(e.value)


@pytest.mark.parametrize("source", [
    {"type": "VENDOR", "certainty": "MANUAL", "itemId": 7, "cost": 0},
    {**_REP, "cost": 0},
], ids=["vendor", "reputation"])
def test_forever_zero_cost_is_refused(source):
    # cost = 0 reads as a free recipe; Forever has a currency field for non-gold prices.
    with pytest.raises(gr.GenerateError) as e:
        _lua(source)
    assert "2001" in str(e.value)


def test_classic_zero_cost_lines_are_unchanged():
    # The Classic buckets ship cost-0 rows today (backlog); they must regenerate byte for byte.
    lua = _lua({"type": "VENDOR", "certainty": "WOWHEAD", "itemId": 7, "cost": 0}, bucket="tbc")
    assert "            itemId = 7,\n            cost = 0,\n        }," in lua


def test_classic_vendor_without_cost_still_exits_2(tmp_path, capsys):
    write_build(tmp_path / "art")
    src = write_sources(tmp_path / "src", "TBC", recipes_override={1002: {
        "name": "Fixture Vest",
        "source": {"type": "VENDOR", "certainty": "WOWHEAD", "itemId": 6002},
        "difficulty": {"orange": 15, "yellow": 20, "green": 40, "gray": 60,
                       "certainty": "WOWHEAD"}}})
    rc = gr.main(["--bucket", "tbc", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
                  "--data-dir", str(tmp_path / "art"), "--sources-dir", str(src),
                  "--output-dir", str(tmp_path / "out")])
    assert rc == 2
    err = capsys.readouterr().err
    assert "1002" in err and "neither cost nor currency" in err


def test_no_source_error_names_the_bucket_enrich_script(tmp_path, monkeypatch, capsys):
    rc, *_ = _run(tmp_path, monkeypatch, edit=lambda r: r["1001"].__setitem__("source", {}))
    assert rc == 2
    err = capsys.readouterr().err
    assert "fetch_wiki_sources.py" in err and "fetch_wowhead" not in err


def test_exception_excluded_recipe_keeps_its_name(tmp_path, monkeypatch):
    # Without a SpellName row the review must still name the recipe (the sources name).
    _bucket(monkeypatch, **NO_GATE)
    art, src = write_resolved_forever(tmp_path, omit_spell_names={"1001"})
    (src / "generate_exceptions.json").write_text(json.dumps(
        {"forever": {"exclude": [{"spells": [1001], "reason": "test reason"}]}}))
    assert _generate(art, src, tmp_path / "out") == 0
    assert [1001, "Unknown-1001", "excluded: test reason"] in _review(src)["excluded"]


def test_seasonal_skip_keeps_its_name(tmp_path, capsys):
    write_build(tmp_path / "art", omit_spell_names={"1001"})
    src = write_sources(tmp_path / "src", "Vanilla", recipes_override={1001: {
        "name": "Fixture Bolt", "seasonId": 2,
        "source": {"type": "TRAINER", "certainty": "WOWHEAD"},
        "difficulty": {"orange": 1, "yellow": 10, "green": 25, "gray": 40,
                       "certainty": "WOWHEAD"}}})
    rc = gr.main(["--bucket", "vanilla", "--profession", "Tailoring",
                  "--version", FIXTURE_VERSION, "--data-dir", str(tmp_path / "art"),
                  "--sources-dir", str(src), "--output-dir", str(tmp_path / "out")])
    assert rc == 0
    assert "1001: Fixture Bolt (seasonal (seasonId))" in capsys.readouterr().err


def test_one_profession_run_keeps_the_other_review_files(tmp_path, monkeypatch):
    _bucket(monkeypatch, **NO_GATE)
    art, src = write_resolved_forever(tmp_path)
    cov = rr.coverage([], [("1", "Elsewhere", "no wiki row")], 300)
    rr.write_profession(src / "Forever" / "review", "FirstAid",
                        rr.profession_data(cov, False, [], [("1", "Elsewhere", "no wiki row")],
                                           buckets.get_bucket("forever")))
    assert _generate(art, src, tmp_path / "out") == 0
    md = (src / "Forever" / "REVIEW.md").read_text()
    assert "| FirstAid | 0 | 1 |" in md and "| Tailoring |" in md
    assert "- 1 Elsewhere: no wiki row" in md
