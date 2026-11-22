"""The wiki enrich step (fetch_wiki_sources.py) on the Forever-shaped fixture build."""
import json

import pytest

import fetch_wiki_sources as fw
from pipeline_io import load_json
from tests.fixture_build import (FIXTURE_VERSION, FOREVER_WIKITEXT, forever_enrich_argv,
                                 write_forever_tree, write_wiki_cache)

THORIUM = "Thorium Brotherhood"


def _sources(src):
    return src / "Forever" / "Tailoring.json"


def _recipes(src) -> dict:
    return load_json(_sources(src))["recipes"]


def _run(tmp_path, *extra, **tree):
    art, src = write_forever_tree(tmp_path, **tree)
    rc = fw.main(forever_enrich_argv(art, src, *extra))
    return rc, art, src


def _edit(src, change):
    path = _sources(src)
    doc = load_json(path)
    change(doc["recipes"])
    path.write_text(json.dumps(doc, indent=2), encoding="utf-8")


def _diff(orange, yellow, gray, origin):
    certainty = {"ITEM": "DB2", "AUTO": "DB2"}.get(origin, origin)
    return {"orange": orange, "yellow": yellow, "green": (yellow + gray) // 2, "gray": gray,
            "certainty": certainty, "orangeFrom": origin}


def _vanilla(orange, yellow, gray, certainty="WOWHEAD"):
    return {"name": "Fixture Bolt", "source": {"type": "TRAINER", "certainty": "DB2"},
            "difficulty": {"orange": orange, "yellow": yellow, "green": 25, "gray": gray,
                           "certainty": certainty, "expansion": "vanilla"}}


# --- the fixture recipes -------------------------------------------------------------

def test_enrich_resolves_every_fixture_recipe(tmp_path, capsys):
    rc, _art, src = _run(tmp_path)
    assert rc == 0
    r = _recipes(src)
    assert r["1001"]["source"] == {"type": "TRAINER", "certainty": "WIKI"}
    assert r["1001"]["difficulty"] == _diff(1, 10, 40, "WIKI")
    assert r["1002"]["source"] == {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002,
                                   "cost": 500}
    assert r["1002"]["difficulty"] == _diff(15, 20, 60, "ITEM")
    assert r["1003"]["source"] == {
        "type": "REPUTATION", "certainty": "WIKI", "itemId": 6003, "factionId": 59,
        "factionName": THORIUM, "level": "Honored",
        "currency": {"name": "Merchant's Favor", "amount": 60}}
    assert r["1003"]["difficulty"] == _diff(35, 40, 80, "ITEM")
    # A review replaces the DB2 source (never left PENDING) and drops difficulty.
    assert r["1004"]["source"] == {"type": "UNRESOLVED", "certainty": "REVIEW",
                                   "needsReview": True, "reviewReason": "no wiki row",
                                   "itemId": 6004}
    assert "difficulty" not in r["1004"]
    assert all(x["source"]["certainty"] != "PENDING" for x in r.values())
    assert all("forever" not in x for x in r.values())   # no notes on these four
    err = capsys.readouterr().err
    for line in ("orangeFrom ITEM: 2", "orangeFrom WIKI: 1", "source TRAINER: 1",
                 "source VENDOR: 1", "source REPUTATION: 1", "UNKNOWN source: 0",
                 "TRAINER from a cross bucket: 0",
                 "Reviews: 1", "no wiki row: 1"):
        assert line in err, line


def test_enrich_is_idempotent(tmp_path):
    rc, art, src = _run(tmp_path)
    assert rc == 0
    first = _sources(src).read_text(encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 0
    assert _sources(src).read_text(encoding="utf-8") == first


def test_manual_source_survives_untouched(tmp_path):
    art, src = write_forever_tree(tmp_path)
    manual = {"name": "Fixture Vest", "source": {"type": "VENDOR", "certainty": "MANUAL",
                                                 "itemId": 6002, "cost": 777},
              "difficulty": {"orange": 18, "yellow": 20, "green": 40, "gray": 60,
                             "certainty": "MANUAL"}}
    _edit(src, lambda r: r.__setitem__("1002", manual))
    assert fw.main(forever_enrich_argv(art, src)) == 0
    assert _recipes(src)["1002"] == manual


def test_pending_orphan_becomes_a_review(tmp_path):
    # An orphan (kept by extract, absent from this build) must not keep its PENDING source.
    art, src = write_forever_tree(tmp_path)
    _edit(src, lambda r: r.__setitem__("4242", {
        "name": "Lost Recipe", "source": {"type": "PENDING", "certainty": "PENDING",
                                          "itemId": 7777, "cost": 5}}))
    assert fw.main(forever_enrich_argv(art, src)) == 0
    src4242 = _recipes(src)["4242"]["source"]
    assert (src4242["type"], src4242["certainty"], src4242["needsReview"]) == (
        "UNRESOLVED", "REVIEW", True)
    assert src4242["reviewReason"].startswith("not in DB2:")
    assert "itemId" not in src4242


# --- CROSS: the Vanilla orange only when yellow AND gray agree ----------------------

def test_cross_orange_guard_unit():
    assert fw.cross_orange(_vanilla(5, 10, 40), 10, 40) == 5
    assert fw.cross_orange(_vanilla(5, 12, 40), 10, 40) is None      # yellow differs
    assert fw.cross_orange(_vanilla(5, 10, 45), 10, 40) is None      # gray differs
    assert fw.cross_orange(_vanilla(5, 10, 40, "DB2"), 10, 40) is None
    assert fw.cross_orange(None, 10, 40) is None
    assert fw.cross_orange({"name": "x"}, 10, 40) is None             # no difficulty


def test_cross_orange_used_when_yellow_and_gray_equal(tmp_path):
    rc, _art, src = _run(tmp_path, vanilla_recipes={"1001": _vanilla(5, 10, 40)})
    assert rc == 0
    assert _recipes(src)["1001"]["difficulty"] == _diff(5, 10, 40, "CROSS")


@pytest.mark.parametrize("yellow,gray,certainty", [(12, 40, "WOWHEAD"), (10, 45, "WOWHEAD"),
                                                   (10, 40, "CRAFTDUMP")])
def test_cross_orange_ignored_when_thresholds_or_certainty_differ(tmp_path, yellow, gray,
                                                                  certainty):
    rc, _art, src = _run(tmp_path,
                         vanilla_recipes={"1001": _vanilla(5, yellow, gray, certainty)})
    assert rc == 0
    assert _recipes(src)["1001"]["difficulty"] == _diff(1, 10, 40, "WIKI")


@pytest.mark.parametrize("folder", ["Vanilla", "SoD"])
def test_missing_cross_bucket_sources_exits_2(tmp_path, capsys, folder):
    art, src = write_forever_tree(tmp_path)
    (src / folder / "Tailoring.json").unlink()
    before = _sources(src).read_text(encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 2
    assert folder in capsys.readouterr().err
    assert _sources(src).read_text(encoding="utf-8") == before


def test_cross_orange_falls_back_to_sod(tmp_path):
    # Vanilla's yellow differs (the recipe changed there), SoD's matches: SoD lends it.
    rc, _art, src = _run(tmp_path, vanilla_recipes={"1001": _vanilla(5, 12, 40)},
                         sod_recipes={"1001": _vanilla(7, 10, 40)})
    assert rc == 0
    assert _recipes(src)["1001"]["difficulty"] == _diff(7, 10, 40, "CROSS")


def test_cross_orange_prefers_vanilla(tmp_path):
    rc, _art, src = _run(tmp_path, vanilla_recipes={"1001": _vanilla(5, 10, 40)},
                         sod_recipes={"1001": _vanilla(7, 10, 40)})
    assert rc == 0
    assert _recipes(src)["1001"]["difficulty"] == _diff(5, 10, 40, "CROSS")


# --- SoD's verified trainer source for a recipe the wiki does not describe ---------

def _sod_trainer(yellow=10, gray=40, certainty="WOWHEAD", kind="TRAINER", diff="WOWHEAD",
                 **flags):
    recipe = _vanilla(5, yellow, gray, diff)
    recipe["source"] = {"type": kind, "certainty": certainty, "trainingCost": 50, **flags}
    return recipe


# The SoD verifier's default when Wowhead shows no acquisition: TRAINER kept, but flagged
# (368 of the 788 SoD TRAINER/WOWHEAD records; none of them has a training cost).
SOD_UNVERIFIED = {"name": "Fixture Bolt",
                  "source": {"type": "TRAINER", "certainty": "WOWHEAD", "needsReview": True},
                  "difficulty": {"orange": 5, "yellow": 10, "green": 25, "gray": 40,
                                 "certainty": "WOWHEAD"}}


# Fixture Bolt (1001, no teaching item) loses its wiki row.
NO_BOLT_ROW = FOREVER_WIKITEXT.replace("| [[Fixture Bolt Item]] || 1 ||  || Old || Trainer\n|-\n", "")


def test_cross_trainer_guard_unit():
    assert fw.cross_trainer(_sod_trainer(), 10, 40) == "WOWHEAD"
    assert fw.cross_trainer(_sod_trainer(certainty="MANUAL"), 10, 40) == "MANUAL"
    # The difficulty's certainty does not matter: yellow and gray are DB2 facts anywhere.
    assert fw.cross_trainer(_sod_trainer(diff="CRAFTDUMP"), 10, 40) == "WOWHEAD"
    assert fw.cross_trainer(_sod_trainer(certainty="DB2"), 10, 40) is None
    assert fw.cross_trainer(_sod_trainer(certainty="CROSS"), 10, 40) is None
    assert fw.cross_trainer(_sod_trainer(kind="DROP"), 10, 40) is None
    assert fw.cross_trainer(_sod_trainer(yellow=12), 10, 40) is None
    assert fw.cross_trainer(_sod_trainer(gray=45), 10, 40) is None
    assert fw.cross_trainer({"source": {"type": "TRAINER", "certainty": "WOWHEAD"}},
                            10, 40) is None                         # no difficulty
    assert fw.cross_trainer(None, 10, 40) is None
    # A flagged record is the verifier's unverified default, not trainer evidence.
    assert fw.cross_trainer(SOD_UNVERIFIED, 10, 40) is None
    assert fw.cross_trainer(_sod_trainer(needsReview=True), 10, 40) is None
    assert fw.cross_trainer(_sod_trainer(reviewReason="no acquisition"), 10, 40) is None


def test_sod_trainer_resolves_a_recipe_missing_from_the_wiki(tmp_path, capsys):
    rc, _art, src = _run(tmp_path, wikitext=NO_BOLT_ROW, sod_recipes={"1001": _sod_trainer()})
    assert rc == 0
    assert "TRAINER from a cross bucket: 1" in capsys.readouterr().err
    r = _recipes(src)["1001"]
    # No trainingCost: SoD's cost is not Forever's.
    assert r["source"] == {"type": "TRAINER", "certainty": "CROSS"}
    assert r["difficulty"] == _diff(5, 10, 40, "CROSS")
    assert r["forever"] == {"notes": ["trainer per SoD (WOWHEAD); no wiki row"]}


@pytest.mark.parametrize("sod", [_sod_trainer(certainty="DB2"), _sod_trainer(yellow=12),
                                 _sod_trainer(gray=45), SOD_UNVERIFIED],
                         ids=["sod-db2", "sod-yellow-differs", "sod-gray-differs",
                              "sod-needs-review"])
def test_sod_trainer_not_trusted_stays_a_review(tmp_path, sod):
    rc, _art, src = _run(tmp_path, wikitext=NO_BOLT_ROW, sod_recipes={"1001": sod},
                         vanilla_recipes={"1001": _vanilla(5, 10, 40)})
    assert rc == 0
    assert _recipes(src)["1001"]["source"]["reviewReason"] == "no wiki row"


def test_sod_trainer_ignored_for_a_recipe_with_a_teaching_item(tmp_path):
    # Fixture Boots (1004) has pattern 6004 and no wiki row: Forever's own data disagrees.
    rc, _art, src = _run(tmp_path, sod_recipes={"1004": _sod_trainer(60, 100)},
                         vanilla_recipes={"1004": _vanilla(55, 60, 100)})
    assert rc == 0
    assert _recipes(src)["1004"]["source"]["reviewReason"] == "no wiki row"


def test_sod_trainer_loses_to_the_in_game_trainer(tmp_path):
    art, src = write_forever_tree(tmp_path, wikitext=NO_BOLT_ROW,
                                  sod_recipes={"1001": _sod_trainer()})
    _capture(src, ["1001", "1002", "1003", "1004"], {"fixture bolt": {"skill": 3, "cost": 10}})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)["1001"]
    assert r["source"] == {"type": "TRAINER", "certainty": "INGAME", "trainingCost": 10}
    assert r["difficulty"] == _diff(3, 10, 40, "INGAME")


# --- in-game captures and aliases ---------------------------------------------------

def _capture(src, recipes, trainer=None):
    path = src / "Forever" / "ingame" / "Tailoring.json"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps({
        "build": FIXTURE_VERSION, "profession": None,
        "recipes": {s: {"name": "x", "learned": False} for s in recipes},
        "trainer": trainer or {}, "recipesCaptured": "2026-11-21",
        "trainerCaptured": "2026-11-21"}), encoding="utf-8")


def test_ingame_capture_decides_trainer_skill_and_absence(tmp_path):
    art, src = write_forever_tree(tmp_path)
    _capture(src, ["1001", "1002", "1003"], {"fixture bolt": {"skill": 5, "cost": 10}})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)
    # The trainer's price reaches the source: the generator emits it as trainingCost.
    assert r["1001"]["source"] == {"type": "TRAINER", "certainty": "INGAME", "trainingCost": 10}
    assert r["1001"]["difficulty"] == _diff(5, 10, 40, "INGAME")
    assert r["1001"]["forever"] == {"notes": ["in-game trainer skill 5 differs from wiki skill 1"]}
    assert r["1004"]["source"]["reviewReason"] == "not in game: absent from the in-game recipe list"
    # Notes are rewritten every run: without the capture the stale note goes away.
    (src / "Forever" / "ingame" / "Tailoring.json").unlink()
    assert fw.main(forever_enrich_argv(art, src)) == 0
    assert "forever" not in _recipes(src)["1001"]


# --- an in-game trainer entry two spells share by name -------------------------------

# 1002 renamed to 1001's name, like an old Classic spell next to its revised Forever one.
SAME_NAME = {"spell_names": {1002: "Fixture Bolt"}}
BOLT_TRAINER = {"fixture bolt": {"skill": 5, "cost": 10}}


def test_trainer_entry_matching_two_spells_is_a_review_for_both(tmp_path):
    art, src = write_forever_tree(tmp_path, **SAME_NAME)
    _capture(src, [], BOLT_TRAINER)        # trainer only: no recipe list says which is in game
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)
    reason = "ambiguous: in-game trainer entry 'fixture bolt' matches spells 1001, 1002"
    for sid in ("1001", "1002"):
        assert r[sid]["source"]["reviewReason"] == reason, sid
        assert "difficulty" not in r[sid]


def test_trainer_entry_goes_to_the_spell_the_recipe_capture_keeps(tmp_path):
    art, src = write_forever_tree(tmp_path, **SAME_NAME)
    _capture(src, ["1001", "1003", "1004"], BOLT_TRAINER)    # 1002 is not in game
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)
    assert r["1001"]["source"] == {"type": "TRAINER", "certainty": "INGAME", "trainingCost": 10}
    assert r["1002"]["source"]["reviewReason"] == \
        "not in game: absent from the in-game recipe list"


# One row reached by two spells: 1001 through its link target, 1002 through its display text.
SHARED_ROW = FOREVER_WIKITEXT.replace("[[Fixture Bolt Item]]", "[[Fixture Bolt Item|Fixture Vest Item]]")
SHARED_ROW = SHARED_ROW.replace("| [[Fixture Vest Item]] || 15 ||  || Old || Vendor\n|-\n", "")


def test_shared_row_is_ambiguous_when_no_rank_matches_it(tmp_path):
    # Row skill 1: 1001 has no teaching item, 1002's ranks 15, so neither owns the row.
    rc, _art, src = _run(tmp_path, wikitext=SHARED_ROW)
    assert rc == 0
    r = _recipes(src)
    for sid in ("1001", "1002"):
        assert r[sid]["source"]["reviewReason"] == (
            "ambiguous: wiki row 'fixture bolt item' matches spells 1001, 1002")


def test_shared_row_goes_to_the_spell_whose_rank_it_states(tmp_path, capsys):
    # The shared row says Vendor at 15: 1002's pattern asks for rank 15, 1001 has no item.
    text = SHARED_ROW.replace("[[Fixture Bolt Item|Fixture Vest Item]] || 1 ||  || Old || Trainer",
                              "[[Fixture Bolt Item|Fixture Vest Item]] || 15 ||  || Old || Vendor")
    rc, _art, src = _run(tmp_path, wikitext=text)
    assert rc == 0
    r = _recipes(src)
    assert r["1002"]["source"] == {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002,
                                   "cost": 500}
    assert r["1001"]["source"]["reviewReason"] == (
        "no wiki row: row 'fixture bolt item' taken by spell 1002")
    # A taken row needs a different fix than a missing one, so the summary counts it apart.
    err = capsys.readouterr().err
    assert "no wiki row (taken by another spell): 1" in err
    assert "    no wiki row: 1\n" in err     # 1004, which really has no row


def test_alias_takes_a_row_another_spell_reaches_by_name(tmp_path):
    # 1004's alias names 1001's row, which only 1001 reaches by name: one owner, 1004.
    art, src = write_forever_tree(tmp_path)
    _aliases(src, {"1004": {"key": "Fixture Bolt Item", "skill": 1}})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)
    assert r["1001"]["source"]["reviewReason"] == (
        "no wiki row: row 'fixture bolt item' taken by spell 1004")
    assert r["1004"]["source"]["reviewReason"] == (
        "trainer per wiki but DB2 has teaching item 6004")


def test_two_aliases_on_one_row_exit_2(tmp_path, capsys):
    art, src = write_forever_tree(tmp_path)
    _aliases(src, {"1001": {"key": "Fixture Bolt Item", "skill": 1},
                   "1004": {"key": "fixture bolt item", "skill": 1}})
    before = _sources(src).read_text(encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 2
    err = capsys.readouterr().err
    assert "1001" in err and "1004" in err
    assert _sources(src).read_text(encoding="utf-8") == before


@pytest.mark.parametrize("item", [(6101, ("Fixture Bolt Scroll", 0, 0)),
                                  (6105, ("Pattern: Fixture Bolt OLD", 197, 5))],
                         ids=["scroll-copy", "placeholder"])
def test_trainer_recipe_whose_only_item_is_not_a_teaching_item(tmp_path, item):
    # Regression: a scroll copy (RequiredSkill 0) or a placeholder is not obtainable as a
    # teaching item, so "Trainer" on the wiki is not contradicted by DB2.
    item_id, spec = item
    art, src = write_forever_tree(tmp_path, extra_teaching=((1001, item_id),),
                                  extra_items={item_id: spec})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)["1001"]
    assert r["source"] == {"type": "TRAINER", "certainty": "WIKI"}
    assert r["difficulty"] == _diff(1, 10, 40, "WIKI")


@pytest.mark.parametrize("bad", ["not a recipe", {"name": "x", "source": "TRAINER"},
                                 {"name": "x", "source": {"type": "VENDOR"},
                                  "forever": ["note"]}],
                         ids=["recipe-string", "source-string", "forever-list"])
def test_malformed_recipe_entry_exits_2_naming_the_spell(tmp_path, capsys, bad):
    art, src = write_forever_tree(tmp_path)
    _edit(src, lambda r: r.__setitem__("1003", bad))
    before = _sources(src).read_text(encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 2
    assert "1003" in capsys.readouterr().err
    assert _sources(src).read_text(encoding="utf-8") == before


def test_absent_spell_releases_its_wiki_row(tmp_path):
    # The capture is passed to build_claims: 1002 is not in game, so the row is 1001's alone.
    art, src = write_forever_tree(tmp_path, wikitext=SHARED_ROW)
    _capture(src, ["1001", "1003", "1004"])
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)
    assert r["1001"]["source"] == {"type": "TRAINER", "certainty": "WIKI"}
    assert r["1002"]["source"]["reviewReason"].startswith("not in game:")


def _aliases(src, aliases):
    (src / "Forever" / "wiki_aliases.json").write_text(
        json.dumps({"_doc": "spell id -> the wiki row that describes it", "aliases": aliases}),
        encoding="utf-8")


def test_alias_matches_a_differently_named_row(tmp_path):
    text = FOREVER_WIKITEXT.replace("|}\n", "|-\n| [[Fixture Footwear]] || 55 ||  || Old || Drop\n|}\n")
    art, src = write_forever_tree(tmp_path, wikitext=text)
    _aliases(src, {"1004": {"key": "Fixture Footwear", "skill": 55,
                            "_doc": "renamed on the wiki"}})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)["1004"]
    assert r["source"] == {"type": "DROP", "certainty": "WIKI", "itemId": 6004}
    assert r["difficulty"] == _diff(55, 60, 100, "WIKI")


@pytest.mark.parametrize("content", [
    "[]", '{"_doc": "no aliases key"}', '{"aliases": []}', '{"aliases": {"1004": {"key": "x"}}}',
    '{"aliases": {"1004": {"key": 3, "skill": 5}}}',
    '{"aliases": {"1004": {"key": "x", "skill": true}}}', "{not json"])
def test_malformed_aliases_exit_2(tmp_path, content):
    art, src = write_forever_tree(tmp_path)
    (src / "Forever" / "wiki_aliases.json").write_text(content, encoding="utf-8")
    before = _sources(src).read_text(encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 2
    assert _sources(src).read_text(encoding="utf-8") == before


def test_malformed_capture_exits_2(tmp_path):
    art, src = write_forever_tree(tmp_path)
    path = src / "Forever" / "ingame" / "Tailoring.json"
    path.parent.mkdir(parents=True)
    path.write_text("[1, 2]", encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 2


# --- exit codes ----------------------------------------------------------------------

def test_offline_without_cache_exits_2(tmp_path, capsys):
    art, src = write_forever_tree(tmp_path)
    for f in (src / "Forever" / ".wiki_cache").iterdir():
        f.unlink()
    before = _sources(src).read_text(encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 2
    assert "offline" in capsys.readouterr().err
    assert _sources(src).read_text(encoding="utf-8") == before


def test_network_fetch_goes_through_the_cache_dir(tmp_path, monkeypatch):
    # Without --offline the step asks wiki.fetch_wikitext for the registry's page title,
    # cached under <sources>/<Folder>/.wiki_cache (stubbed here: tests never fetch).
    art, src = write_forever_tree(tmp_path)
    for f in (src / "Forever" / ".wiki_cache").iterdir():
        f.unlink()
    seen = []

    def fake(title, cache_dir, *, offline=False, **_kw):
        seen.append((title, cache_dir, offline))
        return FOREVER_WIKITEXT
    monkeypatch.setattr(fw, "fetch_wikitext", fake)
    argv = [a for a in forever_enrich_argv(art, src) if a != "--offline"]
    assert fw.main(argv) == 0
    assert seen == [("Forever tailoring patterns", src / "Forever" / ".wiki_cache", False)]


def test_non_wiki_bucket_exits_1(tmp_path, capsys):
    assert fw.main(["--bucket", "tbc", "--profession", "Tailoring",
                    "--sources-dir", str(tmp_path), "--offline"]) == 1
    assert "bucket 'tbc'" in capsys.readouterr().err


def test_unknown_profession_exits_1(tmp_path):
    assert fw.main(["--bucket", "forever", "--profession", "Jewelcrafting",
                    "--sources-dir", str(tmp_path), "--offline"]) == 1


def test_missing_sources_file_exits_2(tmp_path, capsys):
    art, src = write_forever_tree(tmp_path)
    _sources(src).unlink()
    assert fw.main(forever_enrich_argv(art, src)) == 2
    assert "Tailoring.json" in capsys.readouterr().err


def test_missing_build_dir_exits_1(tmp_path):
    art, src = write_forever_tree(tmp_path)
    assert fw.main(forever_enrich_argv(art, src, "--version", "0.0.0.1")) == 1


def test_sources_from_another_build_exit_1(tmp_path, capsys):
    art, src = write_forever_tree(tmp_path)
    doc = load_json(_sources(src))
    doc["version"] = "1.2.3.4"
    _sources(src).write_text(json.dumps(doc), encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 1
    assert "1.2.3.4" in capsys.readouterr().err


def test_empty_wiki_page_warns_and_reviews_everything(tmp_path, capsys):
    # Mining's page has no recipe table: every recipe becomes a review, loudly, not an error.
    art, src = write_forever_tree(tmp_path)
    write_wiki_cache(src, "no table here\n")
    assert fw.main(forever_enrich_argv(art, src)) == 0
    assert "WARNING" in capsys.readouterr().err
    r = _recipes(src)
    assert {x["source"]["type"] for x in r.values()} == {"UNRESOLVED"}



# --- a hand-aligned (MANUAL) difficulty survives a re-enrich -------------------------

MANUAL_DIFF = {"orange": 12, "yellow": 20, "green": 40, "gray": 60, "certainty": "MANUAL"}


def test_manual_difficulty_survives_and_the_source_is_resolved(tmp_path):
    # 1002 would take ITEM 15; the hand-aligned 12 stays, the wiki still gives the source.
    art, src = write_forever_tree(tmp_path)
    _edit(src, lambda r: r["1002"].__setitem__("difficulty", dict(MANUAL_DIFF)))
    for _ in range(2):          # a second run must not lose it either
        assert fw.main(forever_enrich_argv(art, src)) == 0
        r = _recipes(src)["1002"]
        assert r["difficulty"] == MANUAL_DIFF
        assert r["source"] == {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002,
                               "cost": 500}


def test_manual_difficulty_survives_a_review(tmp_path, capsys):
    # 1004 has no wiki row: its source becomes a review, the MANUAL difficulty is kept.
    art, src = write_forever_tree(tmp_path)
    manual = {"orange": 55, "yellow": 60, "green": 80, "gray": 100, "certainty": "MANUAL"}
    _edit(src, lambda r: r["1004"].__setitem__("difficulty", dict(manual)))
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)["1004"]
    assert r["source"]["reviewReason"] == "no wiki row"
    assert r["difficulty"] == manual


def test_manual_difficulty_counts_in_the_summary(tmp_path, capsys):
    art, src = write_forever_tree(tmp_path)
    _edit(src, lambda r: r["1002"].__setitem__("difficulty", dict(MANUAL_DIFF)))
    assert fw.main(forever_enrich_argv(art, src)) == 0
    err = capsys.readouterr().err
    assert "orangeFrom MANUAL: 1" in err and "orangeFrom ITEM: 1" in err


# --- DB2 facts beyond thresholds and teaching items --------------------------------------

NEVER = "not in game: DB2 marks it never learned (AcquireMethod 3)"


def _reason(src, spell):
    return _recipes(src)[spell]["source"].get("reviewReason")


def test_auto_learned_recipe_becomes_a_db2_starter(tmp_path, capsys):
    # 1004 has no wiki row: AcquireMethod 1 alone establishes it.
    rc, _art, src = _run(tmp_path, acquire={1004: (1, 1)})
    assert rc == 0
    r = _recipes(src)["1004"]
    assert r["source"] == {"type": "STARTER", "certainty": "DB2"}
    assert r["difficulty"] == _diff(1, 60, 100, "AUTO")
    assert r["forever"]["notes"] == [
        "DB2 marks it learned automatically; DB2 also has teaching item 6004"]
    assert "orangeFrom AUTO: 1" in capsys.readouterr().err


def test_never_learned_recipe_is_not_in_game(tmp_path):
    rc, _art, src = _run(tmp_path, acquire={1001: (3, 1)})
    assert rc == 0
    assert _reason(src, "1001") == NEVER
    assert "difficulty" not in _recipes(src)["1001"]


def test_leftover_category_recipe_without_item_data_is_not_in_game(tmp_path):
    rc, _art, src = _run(tmp_path, categories={1001: 2592}, omit_items=frozenset({5001}))
    assert rc == 0
    assert _reason(src, "1001") == ("not in game: DB2 category 'SEASON OF DISCOVERY', "
                                    "created item 5001 not in this build")


def test_leftover_category_recipe_with_item_data_resolves(tmp_path):
    rc, _art, src = _run(tmp_path, categories={1001: 2592})
    assert rc == 0
    assert _recipes(src)["1001"]["source"] == {"type": "TRAINER", "certainty": "WIKI"}


def test_missing_created_item_in_another_category_is_only_a_note(tmp_path):
    # Category 2000 ("Cloth") is no leftover category: the recipe stays in game. Its item
    # has no name to match the wiki by, so it is a review, with the note kept next to it.
    rc, _art, src = _run(tmp_path, categories={1001: 2000}, omit_items=frozenset({5001}))
    assert rc == 0
    r = _recipes(src)["1001"]
    assert r["source"]["reviewReason"] == "no wiki row"
    assert r["forever"]["notes"] == ["created item 5001 has no data in this build"]


def test_recipe_facts_carry_the_db2_evidence(tmp_path):
    import extract_db2_sources as extract
    from buckets import get_bucket
    from tests.fixture_build import write_build
    forever = get_bucket("forever")
    # 7001 teaches Fixture Bolt (1001) in the link table but has no ItemSparse row.
    art = write_build(tmp_path / "art", join="xitem", acquire={1001: (1, 1)},
                      categories={1001: 2592}, omit_items=frozenset({5001}),
                      extra_teaching=((1001, 7001),))
    indexes = extract.build_indexes(art / FIXTURE_VERSION, forever)
    prof = forever.profession("Tailoring")
    ability = fw.ability_facts(indexes, forever, prof, {"1001", "1002"})
    assert ability == {"1001": (1, 1, "SEASON OF DISCOVERY"), "1002": (0, 1, None)}
    f = fw.recipe_facts("1001", "Fixture Bolt", (10, 40), indexes, ability["1001"])
    assert (f.acquire, f.min_rank, f.leftover_category) == (1, 1, "SEASON OF DISCOVERY")
    assert (f.created_item, f.created_missing) == ("5001", True)
    assert f.teaching_item is None and f.unlisted_items == ("7001",)
    g = fw.recipe_facts("1002", "Fixture Vest", (20, 60), indexes, ability["1002"])
    assert (g.created_item, g.created_missing, g.unlisted_items) == ("5002", False, ())
    assert (g.acquire, g.leftover_category) == (0, None)


@pytest.mark.parametrize("recipe, expected", [
    pytest.param({"difficulty": {"yellow": 0, "gray": 75, "certainty": "WOWHEAD"},
                  "wowhead": {"learnedAt": 65}}, 65, id="wowhead-prints-yellow-0"),
    pytest.param({"difficulty": {"yellow": 50, "gray": 75, "certainty": "WOWHEAD"},
                  "wowhead": {"learnedAt": 65}}, 65, id="same-yellow"),
    pytest.param({"difficulty": {"yellow": 0, "gray": 80, "certainty": "WOWHEAD"},
                  "wowhead": {"learnedAt": 65}}, None, id="gray-differs"),
    pytest.param({"difficulty": {"yellow": 40, "gray": 75, "certainty": "WOWHEAD"},
                  "wowhead": {"learnedAt": 65}}, None, id="yellow-differs"),
    pytest.param({"difficulty": {"yellow": 0, "gray": 75, "certainty": "DB2"},
                  "wowhead": {"learnedAt": 65}}, None, id="not-wowhead"),
    pytest.param({"difficulty": {"yellow": 0, "gray": 75, "certainty": "WOWHEAD"},
                  "wowhead": {"learnedAt": 50}}, None, id="not-above-yellow"),
    pytest.param({"difficulty": {"yellow": 0, "gray": 75, "certainty": "WOWHEAD"},
                  "wowhead": {"learnedAt": 75}}, None, id="at-gray"),
    pytest.param({"difficulty": {"yellow": 0, "gray": 75, "certainty": "WOWHEAD"}}, None,
                 id="no-learned-at"),
    pytest.param(None, None, id="no-twin"),
])
def test_cross_learned_only_for_the_unchanged_recipe(recipe, expected):
    # Forever: yellow 50, gray 75 (Smelt Tin).
    assert fw.cross_learned(recipe, 50, 75) == expected


# --- Wowhead guide facts ------------------------------------------------------------------

def _guide_row(**kw):
    base = {"skill": None, "kind": None, "items": [], "npcs": [], "currency": None,
            "creates": None, "page": "guide/x"}
    base.update(kw)
    return base


def _write_guide_facts(src, spells=None, items=None, smelts=None):
    doc = {"pages": {"guide/x": {"fetched": "2026-11-22", "rows": 1}},
           "spells": spells or {}, "items": items or {}, "smelts": smelts or {}}
    (src / "Forever" / "guide_facts.json").write_text(json.dumps(doc), encoding="utf-8")


def test_guide_facts_resolve_a_recipe_the_wiki_does_not_list(tmp_path, capsys):
    # 1004 Fixture Boots: no wiki row; DB2 teaching item 6004 without a rank or a price.
    # The guide's spell row gives the skill, its commerce row (found through the DB2
    # teaching item) the Merchant's Favor price.
    art, src = write_forever_tree(tmp_path)
    _write_guide_facts(
        src, spells={"1004": [_guide_row(skill=55, items=[6004], creates=5004)]},
        items={"6004": [_guide_row(skill=55, kind="VENDOR", items=[6004], currency=45)]})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)["1004"]
    assert r["source"] == {"type": "VENDOR", "certainty": "GUIDE", "itemId": 6004,
                           "currency": {"name": "Merchant's Favor", "amount": 45}}
    assert r["difficulty"] == _diff(55, 60, 100, "GUIDE")
    err = capsys.readouterr().err
    assert "orangeFrom GUIDE: 1" in err and "Reviews: 0" in err
    assert "Guide rows: 1 of 4 recipes" in err


def test_guide_row_for_another_created_item_is_ignored_and_noted(tmp_path):
    art, src = write_forever_tree(tmp_path)
    _write_guide_facts(src, spells={"1001": [_guide_row(skill=5, kind="STARTER",
                                                        creates=5999)]})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)["1001"]
    assert r["source"] == {"type": "TRAINER", "certainty": "WIKI"}
    assert r["forever"]["notes"] == [
        "guide row describes another item (creates 5999, DB2 5001); ignored"]


def test_malformed_guide_facts_exit_2(tmp_path, capsys):
    art, src = write_forever_tree(tmp_path)
    (src / "Forever" / "guide_facts.json").write_text('{"spells": []}', encoding="utf-8")
    assert fw.main(forever_enrich_argv(art, src)) == 2
    assert "guide facts" in capsys.readouterr().err


@pytest.mark.parametrize("recipe, expected", [
    # Wowhead prints yellow 0 for a recipe learned at or above it (Smelt Tin, learned at
    # 65): unchanged when the gray matches and it is learned at or above this yellow.
    pytest.param({"source": {"type": "TRAINER", "certainty": "WOWHEAD", "trainingCost": 50},
                  "difficulty": {"orange": 0, "yellow": 0, "green": 65, "gray": 75,
                                 "certainty": "WOWHEAD"},
                  "wowhead": {"learnedAt": 65}}, "WOWHEAD", id="yellow-0-learned-above"),
    pytest.param({"source": {"type": "TRAINER", "certainty": "WOWHEAD"},
                  "difficulty": {"orange": 0, "yellow": 0, "green": 65, "gray": 75},
                  "wowhead": {"learnedAt": 40}}, None, id="yellow-0-learned-below"),
    pytest.param({"source": {"type": "TRAINER", "certainty": "WOWHEAD"},
                  "difficulty": {"orange": 0, "yellow": 0, "green": 65, "gray": 80},
                  "wowhead": {"learnedAt": 65}}, None, id="gray-differs"),
    pytest.param({"source": {"type": "TRAINER", "certainty": "WOWHEAD"},
                  "difficulty": {"orange": 0, "yellow": 0, "green": 65, "gray": 75}},
                 None, id="no-learned-at"),
    pytest.param({"source": {"type": "TRAINER", "certainty": "WOWHEAD"},
                  "difficulty": {"orange": 30, "yellow": 50, "green": 62, "gray": 75}},
                 "WOWHEAD", id="same-thresholds-as-before"),
])
def test_cross_trainer_counts_a_recipe_learned_above_yellow_as_unchanged(recipe, expected):
    # Forever: yellow 50, gray 75.
    assert fw.cross_trainer(recipe, 50, 75) == expected


# --- the earliest learn skill kept on a review (the coverage gate reads it) ---------------

def test_review_keeps_the_earliest_learn_skill_any_source_gives(tmp_path):
    # 1004 (yellow 60, gray 100) has no wiki row. Vanilla teaches the same recipe (same
    # gray) at 45, a guide row says 50: the smaller one is kept.
    twin = {"1004": {"name": "Fixture Boots", "source": {"type": "TRAINER", "certainty": "DB2"},
                     "difficulty": {"orange": 0, "yellow": 0, "green": 80, "gray": 100,
                                    "certainty": "WOWHEAD"},
                     "wowhead": {"learnedAt": 45}}}
    art, src = write_forever_tree(tmp_path, vanilla_recipes=twin)
    _write_guide_facts(src, spells={"1004": [_guide_row(skill=50), _guide_row(skill=70)]})
    assert fw.main(forever_enrich_argv(art, src)) == 0
    r = _recipes(src)["1004"]
    assert r["source"]["needsReview"] is True
    assert r["forever"]["learnFrom"] == 45


def test_review_without_any_hint_keeps_none_and_a_resolved_recipe_never_does(tmp_path):
    rc, _art, src = _run(tmp_path)
    assert rc == 0
    r = _recipes(src)
    assert "forever" not in r["1004"]          # a review without a hint or a note
    assert all("learnFrom" not in (x.get("forever") or {}) for x in r.values())


def test_cross_hint_needs_the_same_gray(tmp_path):
    twin = {"1004": {"name": "Fixture Boots", "source": {"type": "TRAINER", "certainty": "DB2"},
                     "difficulty": {"orange": 0, "yellow": 0, "green": 80, "gray": 120,
                                    "certainty": "WOWHEAD"},
                     "wowhead": {"learnedAt": 45}}}
    art, src = write_forever_tree(tmp_path, vanilla_recipes=twin)
    assert fw.main(forever_enrich_argv(art, src)) == 0
    assert "forever" not in _recipes(src)["1004"]
