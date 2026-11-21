"""Forever resolver: learn skill (orange) and source precedence (plan rulings R1, R2, R5, R8)."""
import pytest

from forever_resolve import (IngameFacts, RecipeFacts, Resolution, build_claims,
                             match_wiki, resolve)
from wiki import WikiRow, index_rows

FAVOR = "Merchant's Favor"


def facts(**kw):
    base = dict(spell_id="3915", name="Linen Cloak", item_name="Linen Cloak",
                yellow=95, gray=135, teaching_item=None, rsr=0, buy_price=0,
                min_faction=0, faction_name=None, rep_level=None)
    base.update(kw)
    return RecipeFacts(**base)


def row(kind="TRAINER", skill=40, currency=None, rep_level=None, raw=None,
        key="linen cloak", display=None, line_no=1):
    return WikiRow(key, display if display is not None else key, skill, kind,
                   currency, rep_level, raw if raw is not None else kind.title(), line_no)


ITEM = dict(teaching_item="6002", buy_price=500)
REP = dict(teaching_item="6003", buy_price=1000, min_faction=59,
           faction_name="Thorium Brotherhood", rep_level="Honored")


# One row per R2 line: (wiki row, extra facts, expected source or review).
R2_CASES = [
    pytest.param(row("STARTER", skill=1, raw="Automatic"), {},
                 {"type": "STARTER", "certainty": "WIKI"}, id="automatic-starter"),
    pytest.param(row("TRAINER"), {},
                 {"type": "TRAINER", "certainty": "WIKI"}, id="trainer"),
    pytest.param(row("SPECIAL_TRAINER", raw="Special trainer"), {},
                 {"type": "TRAINER", "certainty": "WIKI", "npcName": "Special trainer"},
                 id="special-trainer"),
    pytest.param(row("TRAINER"), ITEM,
                 "trainer per wiki but DB2 has teaching item 6002", id="trainer-with-item"),
    pytest.param(row("STARTER", skill=1, raw="Automatic"), ITEM,
                 "trainer per wiki but DB2 has teaching item 6002", id="automatic-with-item"),
    pytest.param(row("SPECIAL_TRAINER", raw="Special trainer"), ITEM,
                 "trainer per wiki but DB2 has teaching item 6002", id="special-with-item"),
    pytest.param(row("VENDOR"), ITEM,
                 {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002, "cost": 500},
                 id="vendor-buyprice"),
    pytest.param(row("VENDOR"), dict(teaching_item="6002", buy_price=0),
                 {"type": "UNKNOWN", "certainty": "WIKI", "itemId": 6002},
                 id="vendor-without-buyprice-is-unknown"),
    pytest.param(row("VENDOR"), {},
                 "vendor per wiki but DB2 has no teaching item", id="vendor-without-item"),
    pytest.param(row("VENDOR"), REP,
                 {"type": "REPUTATION", "certainty": "WIKI", "itemId": 6003,
                  "factionId": 59, "factionName": "Thorium Brotherhood",
                  "level": "Honored", "cost": 1000},
                 id="vendor-db2-faction-is-reputation"),
    pytest.param(row("VENDOR", currency=45, raw="{{cost|mfvr=45}}"), ITEM,
                 {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002,
                  "currency": {"name": FAVOR, "amount": 45}},
                 id="currency-vendor"),
    pytest.param(row("VENDOR", currency=45, raw="Vendor {{cost|mfvr=45}}"),
                 dict(teaching_item="6002", buy_price=0),
                 {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002,
                  "currency": {"name": FAVOR, "amount": 45}},
                 id="currency-vendor-needs-no-buyprice"),
    pytest.param(row("VENDOR", currency=45, raw="{{cost|mfvr=45}}"), {},
                 "vendor per wiki but DB2 has no teaching item",
                 id="currency-vendor-without-item"),
    pytest.param(row("VENDOR", currency=60, rep_level="Honored",
                     raw="{{text|honored|Honored}}; {{cost|mfvr=60}}"),
                 dict(teaching_item="6003", buy_price=1000, min_faction=1001,
                      faction_name="Fixture Faction", rep_level="Honored"),
                 {"type": "REPUTATION", "certainty": "WIKI", "itemId": 6003,
                  "factionId": 1001, "factionName": "Fixture Faction", "level": "Honored",
                  "currency": {"name": FAVOR, "amount": 60}},
                 id="currency-vendor-db2-faction-is-reputation"),
    pytest.param(row("VENDOR", currency=60, rep_level="Honored",
                     raw="{{text|honored|Honored}}; {{cost|mfvr=60}}"), ITEM,
                 {"type": "UNKNOWN", "certainty": "WIKI", "itemId": 6002},
                 id="wiki-rep-without-db2-faction-is-unknown"),
    pytest.param(row("VENDOR", currency=60, rep_level="Honored",
                     raw="{{text|honored|Honored}}; {{cost|mfvr=60}}"), {},
                 "reputation level without DB2 faction",
                 id="wiki-rep-without-db2-faction-or-item"),
    pytest.param(row("DROP", raw="Drop; [[Rath'mael]]"), ITEM,
                 {"type": "DROP", "certainty": "WIKI", "itemId": 6002}, id="drop"),
    pytest.param(row("DROP"), {},
                 "drop per wiki but DB2 has no teaching item", id="drop-without-item"),
    pytest.param(row("QUEST"), ITEM,
                 {"type": "QUEST", "certainty": "WIKI", "itemId": 6002}, id="quest-with-item"),
    pytest.param(row("QUEST"), {},
                 {"type": "QUEST", "certainty": "WIKI"}, id="quest-without-item"),
    pytest.param(row("CRAFTED", raw="Crafted"), ITEM,
                 "unsupported wiki source: 'Crafted'", id="crafted"),
    pytest.param(row("OTHER", raw="World event"), ITEM,
                 "unsupported wiki source: 'World event'", id="other-text"),
    pytest.param(row("UNKNOWN", raw="?"), ITEM,
                 {"type": "UNKNOWN", "certainty": "WIKI", "itemId": 6002}, id="unknown-with-item"),
    pytest.param(row("UNKNOWN", raw=""), ITEM,
                 {"type": "UNKNOWN", "certainty": "WIKI", "itemId": 6002}, id="empty-with-item"),
    pytest.param(row("UNKNOWN", raw="?"), {},
                 "unknown source and no teaching item", id="unknown-without-item"),
]


@pytest.mark.parametrize("wiki_row, extra, expected", R2_CASES)
def test_source_mapping(wiki_row, extra, expected):
    res = resolve(facts(**extra), wiki_row, None, None)
    if isinstance(expected, str):
        assert res.review == expected
        assert res.source is None and res.difficulty is None
    else:
        assert res.review is None
        assert res.source == expected
        assert res.difficulty["orangeFrom"] == "WIKI"


def test_currency_source_has_no_cost_key():
    # A currency-only recipe must never carry cost: 0 (or the item BuyPrice) reads as gold.
    res = resolve(facts(**ITEM), row("VENDOR", currency=45), None, None)
    assert res.source["currency"] == {"name": FAVOR, "amount": 45}
    assert "cost" not in res.source


# (extra facts, wiki skill, in-game trainer skill, cross orange, expected orange, orangeFrom, certainty)
ORANGE_CASES = [
    pytest.param(dict(rsr=55, **ITEM), 80, None, None, 55, "ITEM", "DB2", id="item-beats-wiki"),
    pytest.param(dict(rsr=120, **ITEM), 40, None, None, 40, "WIKI", "WIKI",
                 id="rsr-above-yellow-ignored"),
    pytest.param(dict(rsr=55, **ITEM), 80, 40, None, 40, "INGAME", "INGAME",
                 id="ingame-beats-item"),
    pytest.param(dict(yellow=50, gray=70, **ITEM), 15, None, 1, 1, "CROSS", "CROSS",
                 id="cross-beats-wiki"),
    pytest.param(dict(rsr=10, yellow=50, gray=70, **ITEM), 15, None, 1, 10, "ITEM", "DB2",
                 id="item-beats-cross"),
    pytest.param(dict(yellow=50, gray=70, **ITEM), 15, None, 0, 15, "WIKI", "WIKI",
                 id="cross-zero-ignored"),
    pytest.param(dict(yellow=50, gray=70, **ITEM), 15, None, 60, 15, "WIKI", "WIKI",
                 id="cross-above-yellow-ignored"),
    pytest.param(ITEM, 95, None, None, 95, "WIKI", "WIKI", id="wiki-equal-yellow-accepted"),
]


@pytest.mark.parametrize("extra, wiki_skill, trainer, cross, orange, origin, certainty",
                         ORANGE_CASES)
def test_orange_precedence(extra, wiki_skill, trainer, cross, orange, origin, certainty):
    ingame = IngameFacts(present=True, trainer_skill=trainer) if trainer is not None else None
    res = resolve(facts(**extra), row("VENDOR", skill=wiki_skill), ingame, cross)
    assert res.review is None
    assert res.difficulty["orange"] == orange
    assert res.difficulty["orangeFrom"] == origin
    assert res.difficulty["certainty"] == certainty


def test_difficulty_shape_and_green():
    res = resolve(facts(), row("TRAINER", skill=40), None, None)
    assert res.difficulty == {"orange": 40, "yellow": 95, "green": 115, "gray": 135,
                              "certainty": "WIKI", "orangeFrom": "WIKI"}
    assert (95 + 135) // 2 == 115
    assert list(res.difficulty) == ["orange", "yellow", "green", "gray", "certainty",
                                    "orangeFrom"]


def test_green_floors_odd_sum():
    res = resolve(facts(yellow=50, gray=75), row("TRAINER", skill=1), None, None)
    assert res.difficulty["green"] == 62


@pytest.mark.parametrize("skill, reason", [
    pytest.param(120, "no learn skill: wiki skill 120 above yellow 95", id="above-yellow"),
    pytest.param(0, "no learn skill: wiki skill 0 below 1", id="zero"),
    pytest.param(None, "no learn skill: wiki row has no skill", id="missing"),
])
def test_wiki_skill_unusable_and_nothing_else(skill, reason):
    res = resolve(facts(), row("TRAINER", skill=skill), None, None)
    assert res.review == reason
    assert res.review.startswith("no learn skill")
    assert res.source is None and res.difficulty is None


@pytest.mark.parametrize("trainer", [96, 0])
def test_ingame_trainer_skill_outside_range_is_review_not_fallback(trainer):
    # In-game is the strongest evidence; falling back to the wiki would ship a value
    # the in-game capture contradicts.
    res = resolve(facts(), row("TRAINER", skill=40), IngameFacts(True, trainer), None)
    assert res.review == f"no learn skill: in-game trainer skill {trainer} outside 1-95"


def test_not_in_game():
    res = resolve(facts(), row("TRAINER"), IngameFacts(present=False, trainer_skill=None), None)
    assert res.review == "not in game: absent from the in-game recipe list"


def test_not_in_game_checked_before_skill_up():
    res = resolve(facts(yellow=50, gray=50), row("TRAINER"), IngameFacts(False, None), None)
    assert res.review.startswith("not in game:")


@pytest.mark.parametrize("ingame", [None, IngameFacts(present=None, trainer_skill=None),
                                    IngameFacts(present=True, trainer_skill=None)])
def test_ingame_without_decision_falls_through(ingame):
    res = resolve(facts(), row("TRAINER", skill=40), ingame, None)
    assert res.source == {"type": "TRAINER", "certainty": "WIKI"}
    assert res.difficulty["orangeFrom"] == "WIKI"


def test_yellow_equals_gray_no_skill_up():
    res = resolve(facts(yellow=50, gray=50), row("TRAINER", skill=1), None, None)
    assert res.review == "no skill-up: yellow == gray"


def test_yellow_above_gray_no_skill_up():
    res = resolve(facts(yellow=320, gray=310), row("TRAINER", skill=1), None, None)
    assert res.review == "no skill-up: yellow 320 above gray 310"


def test_ingame_trainer_wins_over_wiki_drop_with_note():
    res = resolve(facts(**ITEM), row("DROP", skill=35, raw="Drop; [[Rath'mael]]"),
                  IngameFacts(present=True, trainer_skill=40), None)
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert res.difficulty["orange"] == 40 and res.difficulty["certainty"] == "INGAME"
    assert any("Drop; [[Rath'mael]]" in n for n in res.notes)
    assert any("35" in n and "40" in n for n in res.notes)


def test_ingame_trainer_wins_over_trainer_with_teaching_item():
    res = resolve(facts(**ITEM), row("TRAINER", skill=40), IngameFacts(True, 40), None)
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert any("6002" in n for n in res.notes)


def test_ingame_trainer_agreeing_with_wiki_adds_no_note():
    res = resolve(facts(), row("TRAINER", skill=40), IngameFacts(True, 40), None)
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert res.notes == ()


def test_ingame_trainer_decides_an_unmatched_recipe():
    res = resolve(facts(), "ambiguous: 2 wiki rows named 'linen cloak'",
                  IngameFacts(present=None, trainer_skill=40), None)
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert res.difficulty["orange"] == 40


def test_unmatched_wiki_reason_is_the_review():
    # No in-game and no item rank: the failed match is the root cause.
    assert resolve(facts(), "no wiki row", None, None).review == "no wiki row"
    # An item rank gives the orange, but the source still needs a wiki row.
    res = resolve(facts(rsr=10, **ITEM), "ambiguous: 2 wiki rows named 'x'", None, None)
    assert res.review == "ambiguous: 2 wiki rows named 'x'"


def test_wiki_rep_level_differing_from_db2_adds_note():
    res = resolve(facts(**REP), row("VENDOR", currency=60, rep_level="Revered"), None, None)
    assert res.source["level"] == "Honored"
    assert any("Revered" in n and "Honored" in n for n in res.notes)


def test_reputation_without_db2_faction_name_is_review():
    res = resolve(facts(**dict(REP, faction_name=None)), row("VENDOR"), None, None)
    assert res.review == "reputation faction 59 without a DB2 name or level"


def test_resolution_requires_exactly_one_outcome():
    with pytest.raises(ValueError):
        Resolution(source=None, difficulty=None, review=None)
    with pytest.raises(ValueError):
        Resolution(source={"type": "TRAINER"}, difficulty=None, review=None)
    with pytest.raises(ValueError):
        Resolution(source={"type": "TRAINER"}, difficulty={}, review="x")


# --- match_wiki -------------------------------------------------------------------

def test_match_alias_wins():
    rows = [row(skill=40, line_no=1), row(skill=70, line_no=2)]
    idx = index_rows(rows)
    aliases = {"3915": {"key": "Linen Cloak", "skill": 70}}
    claims = {"linen cloak": ["3915", "439128"]}
    assert match_wiki(facts(), idx, aliases, claims) is rows[1]


def test_match_alias_without_its_row_is_review():
    idx = index_rows([row(skill=40)])
    got = match_wiki(facts(), idx, {"3915": {"key": "linen cloak", "skill": 70}}, {})
    assert got == "bad alias: 0 wiki rows named 'linen cloak' with skill 70"


def test_match_two_rows_rsr_picks_one():
    rows = [row(skill=40, line_no=1), row(skill=55, line_no=2)]
    got = match_wiki(facts(rsr=55, **ITEM), index_rows(rows), {}, {"linen cloak": ["3915"]})
    assert got is rows[1]


def test_match_two_rows_without_rsr_is_ambiguous():
    rows = [row(skill=40, line_no=1), row(skill=55, line_no=2)]
    got = match_wiki(facts(), index_rows(rows), {}, {"linen cloak": ["3915"]})
    assert got == "ambiguous: 2 wiki rows named 'linen cloak'"


def test_match_two_rows_rsr_matching_none_is_ambiguous():
    rows = [row(skill=40, line_no=1), row(skill=55, line_no=2)]
    got = match_wiki(facts(rsr=60, **ITEM), index_rows(rows), {}, {})
    assert got == "ambiguous: 2 wiki rows named 'linen cloak'"


def test_match_row_claimed_by_two_spells_is_ambiguous():
    idx = index_rows([row()])
    old, new = facts(spell_id="3496"), facts(spell_id="439128")
    claims = build_claims([new, old], idx)
    assert claims == {"linen cloak": ["439128", "3496"]}
    for f in (old, new):
        got = match_wiki(f, idx, {}, claims)
        assert got == "ambiguous: wiki row 'linen cloak' matches spells 3496, 439128"


def test_match_alias_decides_a_claimed_row():
    r = row()
    idx = index_rows([r])
    claims = {"linen cloak": ["3496", "439128"]}
    aliases = {"439128": {"key": "linen cloak", "skill": 40}}
    assert match_wiki(facts(spell_id="439128"), idx, aliases, claims) is r
    assert match_wiki(facts(spell_id="3496"), idx, aliases, claims).startswith(
        "ambiguous: wiki row")


def test_match_no_candidate():
    idx = index_rows([row(key="other thing")])
    assert match_wiki(facts(), idx, {}, {}) == "no wiki row"


def test_match_item_name_first_then_spell_name():
    by_item = row(key="gold bar", line_no=1)
    by_spell = row(key="transmute: iron to gold", line_no=2)
    f = facts(name="Transmute: Iron to Gold", item_name="Gold Bar")
    assert match_wiki(f, index_rows([by_item, by_spell]), {}, {}) is by_item
    assert match_wiki(f, index_rows([by_spell]), {}, {}) is by_spell


def test_match_enchant_by_spell_name():
    r = row(key="enchant bracer - minor health")
    f = facts(name="Enchant Bracer - Minor Health", item_name=None)
    assert match_wiki(f, index_rows([r]), {}, {}) is r


def test_match_normalizes_names():
    r = row(key="ogre's monocle")
    f = facts(name="Ogre’s Monocle", item_name="Ogre’s Monocle (Forever)")
    assert match_wiki(f, index_rows([r]), {}, {}) is r


def test_claims_count_a_row_once_under_key_and_display():
    # index_rows lists one row under its link target AND its display text; two spells
    # reaching the same row through different names still claim the same row.
    r = row(key="heavy linen gauntlets", display="heavy linen gloves")
    idx = index_rows([r])
    a = facts(spell_id="10", name="Heavy Linen Gauntlets", item_name="Heavy Linen Gauntlets")
    b = facts(spell_id="20", name="Heavy Linen Gloves", item_name="Heavy Linen Gloves")
    claims = build_claims([a, b], idx)
    assert claims == {"heavy linen gauntlets": ["10", "20"]}
    assert match_wiki(a, idx, {}, claims) == (
        "ambiguous: wiki row 'heavy linen gauntlets' matches spells 10, 20")


def test_claims_list_each_spell_once():
    idx = index_rows([row(line_no=1), row(line_no=2)])
    assert build_claims([facts(), facts()], idx) == {"linen cloak": ["3915"]}


@pytest.mark.parametrize("kind", ["UNKNOWN", "DROP", "QUEST"])
def test_db2_faction_on_non_vendor_source_adds_note(kind):
    # R2 keeps the wiki kind, but the DB2 faction requirement must stay visible in REVIEW.md.
    res = resolve(facts(**REP), row(kind, raw="?" if kind == "UNKNOWN" else kind.title()),
                  None, None)
    assert res.source["type"] == kind
    assert any("Thorium Brotherhood" in n and "6003" in n for n in res.notes)


# R2 as amended 2026-11-21: a price or faction the data cannot establish ships as
# UNKNOWN (never a free VENDOR), with a note saying what the wiki claimed.
AMENDED_UNKNOWN = [
    pytest.param(row("VENDOR"), dict(teaching_item="6002", buy_price=0),
                 ["wiki says vendor; price not in DB2 or wiki"], id="unpriced-vendor"),
    pytest.param(row("VENDOR", currency=180, rep_level="Honored",
                     raw="{{text|honored|Honored}}; {{cost|mfvr=180}}"), ITEM,
                 ["wiki: Honored with a commerce faction for 180 Merchant's Favor; "
                  "faction not in DB2"], id="faction-less-rep-with-currency"),
    pytest.param(row("VENDOR", rep_level="Friendly",
                     raw="{{text|friendly|Friendly}}; Vendor"), ITEM,
                 ["wiki: Friendly with a commerce faction; faction not in DB2"],
                 id="faction-less-rep-without-currency"),
]


@pytest.mark.parametrize("wiki_row, extra, notes", AMENDED_UNKNOWN)
def test_amended_unknown_source_and_note(wiki_row, extra, notes):
    res = resolve(facts(**extra), wiki_row, None, None)
    assert res.review is None
    assert res.source == {"type": "UNKNOWN", "certainty": "WIKI", "itemId": 6002}
    assert "cost" not in res.source and "currency" not in res.source
    assert list(res.notes) == notes


def test_unpriced_vendor_with_db2_faction_is_unknown_and_keeps_faction_note():
    res = resolve(facts(**dict(REP, buy_price=0)), row("VENDOR"), None, None)
    assert res.source == {"type": "UNKNOWN", "certainty": "WIKI", "itemId": 6003}
    assert "wiki says vendor; price not in DB2 or wiki" in res.notes
    assert any("Thorium Brotherhood" in n and "6003" in n for n in res.notes)


# --- review round: absent spells, zero costs, in-game decisions ---------------------

def test_absent_spell_releases_its_wiki_row():
    # Old Classic spell next to its revised Forever spell, both item-taught: the capture
    # says the old one is not in game, so the row belongs to the revised spell (R8).
    r = row("VENDOR")
    idx = index_rows([r])
    old = facts(spell_id="3496", **ITEM)
    new = facts(spell_id="439128", **ITEM)
    ingame = {"3496": IngameFacts(present=False, trainer_skill=None),
              "439128": IngameFacts(present=True, trainer_skill=None)}
    claims = build_claims([old, new], idx, ingame)
    assert claims == {"linen cloak": ["439128"]}
    assert match_wiki(new, idx, {}, claims) is r
    res = resolve(new, match_wiki(new, idx, {}, claims), ingame["439128"], None)
    assert res.source == {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002, "cost": 500}
    old_res = resolve(old, match_wiki(old, idx, {}, claims), ingame["3496"], None)
    assert old_res.review == "not in game: absent from the in-game recipe list"


@pytest.mark.parametrize("ingame", [
    None,
    {},
    {"3496": None, "439128": None},
    {"3496": IngameFacts(present=None, trainer_skill=None),
     "439128": IngameFacts(present=None, trainer_skill=None)},
])
def test_claims_without_an_absence_keep_both_spells(ingame):
    idx = index_rows([row()])
    fs = [facts(spell_id="3496"), facts(spell_id="439128")]
    assert build_claims(fs, idx, ingame) == {"linen cloak": ["3496", "439128"]}


@pytest.mark.parametrize("wiki_row", [
    pytest.param(row("VENDOR", currency=0, raw="{{cost|mfvr=0}}"), id="vendor"),
    pytest.param(row("VENDOR", currency=0, rep_level="Honored",
                     raw="{{text|honored|Honored}}; {{cost|mfvr=0}}"), id="faction-less-rep"),
])
def test_zero_currency_is_review(wiki_row):
    # mfvr=0 would read as a free recipe; it is a wiki cell we do not understand.
    res = resolve(facts(**ITEM), wiki_row, None, None)
    assert res.review == f"unrecognised wiki cost: '{wiki_row.raw_source}'"


@pytest.mark.parametrize("failed", [
    "no wiki row",
    "ambiguous: wiki row 'linen cloak' matches spells 3496, 439128",
    "bad alias: 0 wiki rows named 'linen cloak' with skill 70",
])
def test_ingame_decision_keeps_failed_match_as_note(failed):
    res = resolve(facts(), failed, IngameFacts(present=True, trainer_skill=40), None)
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert res.notes == (f"in-game trainer decides it; wiki: {failed}",)


def test_rejected_ingame_skill_keeps_failed_match_as_note():
    res = resolve(facts(), "no wiki row", IngameFacts(present=True, trainer_skill=96), None)
    assert res.review == "no learn skill: in-game trainer skill 96 outside 1-95"
    assert res.notes == ("in-game trainer decides it; wiki: no wiki row",)
