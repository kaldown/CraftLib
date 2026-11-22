"""Forever resolver: Wowhead guide-table facts in the order of trust.

Learn skill: in-game trainer > DB2 (auto-learned, teaching-item rank) > guide > cross bucket
> wiki. Source: in-game trainer > DB2 auto-learned > the DB2 teaching item typed by the guide
or the wiki > guide trainer / automatic > cross-bucket trainer > wiki. A weaker source that
disagrees with the winner is a note, never a change of value.
"""
import pytest

from forever_resolve import GuideFacts, IngameFacts, resolve
from tests.test_forever_resolve import FAVOR, ITEM, REP, facts, row

AMBIGUOUS = "ambiguous: wiki row 'linen cloak' matches spells 3496, 439128"


def guide(**kw):
    return GuideFacts(**kw)


# --- learn skill ------------------------------------------------------------------------

def test_guide_skill_is_the_learn_skill_without_anything_stronger():
    res = resolve(facts(), "no wiki row", None, None, guide=guide(skill=80, kind="TRAINER"))
    assert res.difficulty == {"orange": 80, "yellow": 95, "green": 115, "gray": 135,
                              "certainty": "GUIDE", "orangeFrom": "GUIDE"}
    assert res.source == {"type": "TRAINER", "certainty": "GUIDE"}


def test_item_rank_beats_the_guide_and_the_difference_is_noted():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55), None, None,
                  guide=guide(skill=80))
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (55, "ITEM")
    assert "guide skill 80 differs from ITEM orange 55" in res.notes


def test_agreeing_guide_skill_adds_no_note():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55), None, None,
                  guide=guide(skill=55))
    assert res.notes == ()


def test_guide_later_than_cross_wins_and_both_differences_are_noted():
    res = resolve(facts(), row("TRAINER", skill=60), None, [("Vanilla", 40)],
                  guide=guide(skill=95, kind="TRAINER"))
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (95, "GUIDE")
    assert "Vanilla orange 40 differs from GUIDE orange 95" in res.notes
    assert "wiki row skill 60 differs from GUIDE orange 95" in res.notes


def test_cross_later_than_the_guide_wins():
    # Guide and cross bucket are both unverified for this client: the later number is
    # used, so a plan never offers a recipe before it can be learned.
    res = resolve(facts(), row("TRAINER", skill=60), None, [("Vanilla", 80)],
                  guide=guide(skill=55, kind="TRAINER"))
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"],
            res.difficulty["certainty"]) == (80, "CROSS", "CROSS")
    assert "guide skill 55 differs from CROSS orange 80" in res.notes
    assert "wiki row skill 60 differs from CROSS orange 80" in res.notes


def test_guide_and_cross_agreeing_is_a_guide_orange_without_a_note():
    res = resolve(facts(), "no wiki row", None, [("Vanilla", 80)],
                  guide=guide(skill=80, kind="TRAINER"))
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (80, "GUIDE")
    assert res.notes == ()


def test_unusable_cross_orange_does_not_outrank_the_guide():
    res = resolve(facts(), "no wiki row", None, [("Vanilla", 0), ("SoD", 120)],
                  guide=guide(skill=55, kind="TRAINER"))
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (55, "GUIDE")


def test_in_game_trainer_beats_the_guide():
    res = resolve(facts(), row("TRAINER", skill=40), IngameFacts(True, 50), None,
                  guide=guide(skill=80, kind="TRAINER"))
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (50, "INGAME")
    assert "guide skill 80 differs from INGAME orange 50" in res.notes


def test_guide_skill_above_yellow_alone_is_ignored():
    res = resolve(facts(), row("TRAINER", skill=40), None, None,
                  guide=guide(skill=110, kind="TRAINER"))
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (40, "WIKI")
    assert "guide skill 110 above yellow 95 ignored: nothing else gives 110" in res.notes


@pytest.mark.parametrize("wiki_skill, learned, by", [
    pytest.param(None, [("Vanilla", 110)], "guide and Vanilla learnedAt", id="cross"),
    pytest.param(110, [], "guide and wiki", id="wiki"),
])
def test_guide_skill_above_yellow_needs_a_second_source(wiki_skill, learned, by):
    res = resolve(facts(), row("TRAINER", skill=wiki_skill), None, None,
                  guide=guide(skill=110, kind="TRAINER"), cross_learned=learned)
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"],
            res.difficulty["certainty"]) == (110, "GUIDE", "GUIDE")
    assert f"learn skill 110 above yellow 95: {by} agree" in res.notes


def test_cross_learned_above_yellow_with_the_wiki_agreeing():
    res = resolve(facts(), row("TRAINER", skill=110), None, None,
                  cross_learned=[("Vanilla", 110)])
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (110, "CROSS")
    assert "learn skill 110 above yellow 95: Vanilla learnedAt and wiki agree" in res.notes


def test_cross_learned_above_yellow_alone_is_not_used():
    res = resolve(facts(), row("TRAINER", skill=40), None, None,
                  cross_learned=[("Vanilla", 110)])
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (40, "WIKI")


def test_guide_skill_at_or_above_gray_is_ignored_with_a_note():
    res = resolve(facts(), row("TRAINER", skill=40), None, None,
                  guide=guide(skill=135, kind="TRAINER"), cross_learned=[("Vanilla", 135)])
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (40, "WIKI")
    assert "guide skill 135 at or above gray 135 ignored" in res.notes


def test_guide_decides_a_recipe_the_wiki_could_not_match():
    res = resolve(facts(), AMBIGUOUS, None, None, guide=guide(skill=80, kind="TRAINER"))
    assert res.review is None
    assert res.source == {"type": "TRAINER", "certainty": "GUIDE"}
    assert f"guide decides it; wiki: {AMBIGUOUS}" in res.notes


def test_guide_without_a_skill_leaves_the_failed_match_as_the_review():
    res = resolve(facts(), AMBIGUOUS, None, None, guide=guide(kind="TRAINER"))
    assert res.review == AMBIGUOUS


# --- source without a teaching item -----------------------------------------------------

@pytest.mark.parametrize("kind, expected", [
    ("STARTER", {"type": "STARTER", "certainty": "GUIDE"}),
    ("TRAINER", {"type": "TRAINER", "certainty": "GUIDE"}),
    ("SPECIAL_TRAINER", {"type": "TRAINER", "certainty": "GUIDE",
                         "npcName": "Special trainer"}),
    ("QUEST", {"type": "QUEST", "certainty": "GUIDE"}),
])
def test_guide_kind_without_a_teaching_item(kind, expected):
    res = resolve(facts(), "no wiki row", None, None, guide=guide(skill=40, kind=kind))
    assert res.source == expected


@pytest.mark.parametrize("kind", ["VENDOR", "DROP"])
def test_guide_item_kind_without_any_item_falls_to_the_wiki(kind):
    res = resolve(facts(), row("TRAINER", skill=40), None, None,
                  guide=guide(skill=40, kind=kind))
    assert res.source == {"type": "TRAINER", "certainty": "WIKI"}
    assert f"guide says {kind}; wiki source 'Trainer'" in res.notes


def test_guide_trainer_wins_over_a_wiki_kind_with_a_note():
    res = resolve(facts(), row("VENDOR", skill=40), None, None,
                  guide=guide(skill=40, kind="TRAINER"))
    assert res.source == {"type": "TRAINER", "certainty": "GUIDE"}
    assert "guide says TRAINER; wiki source 'Vendor'" in res.notes


def test_guide_beats_the_cross_bucket_trainer():
    from forever_resolve import CrossTrainer
    res = resolve(facts(), "no wiki row", None, None, CrossTrainer("SoD", "WOWHEAD"),
                  guide=guide(skill=40, kind="STARTER"))
    assert res.source == {"type": "STARTER", "certainty": "GUIDE"}


def test_guide_names_an_item_db2_links_but_has_no_data_for():
    res = resolve(facts(unlisted_items=("273915",)), "no wiki row", None, None,
                  guide=guide(skill=40, kind="VENDOR", currency=45, items=(273915,)))
    assert res.source == {"type": "VENDOR", "certainty": "GUIDE", "itemId": 273915,
                          "currency": {"name": FAVOR, "amount": 45}}
    assert "teaching item 273915 named by the guide has no data in this build" in res.notes


@pytest.mark.parametrize("kind, expected", [
    ("TRAINER", {"type": "TRAINER", "certainty": "GUIDE"}),
    ("STARTER", {"type": "STARTER", "certainty": "GUIDE"}),
])
def test_guide_trainer_keyword_wins_over_an_item_without_data(kind, expected):
    # "Trainer [item=N]": the keyword says how it is learned; an item DB2 has no data for
    # is not enough to call the recipe item-taught against it.
    res = resolve(facts(unlisted_items=("254004",)), "no wiki row", None, None,
                  guide=guide(skill=40, kind=kind, items=(254004,)))
    assert res.source == expected
    assert ("guide says " + kind + "; it also names item 254004, which DB2 links to the "
            "spell without data") in res.notes


def test_guide_item_db2_does_not_link_is_not_used():
    res = resolve(facts(), "no wiki row", None, None,
                  guide=guide(skill=40, kind="VENDOR", currency=45, items=(273915,)))
    assert res.review == "vendor per guide but DB2 has no teaching item"


@pytest.mark.parametrize("kind", ["VENDOR", "DROP"])
def test_cross_bucket_trainer_never_overrides_a_guide_vendor_or_drop(kind):
    # The guide says the recipe is bought or dropped on this client; a trainer source from
    # another client is the weaker evidence and must not type it.
    from forever_resolve import CrossTrainer
    res = resolve(facts(), "no wiki row", None, None, CrossTrainer("SoD", "WOWHEAD"),
                  guide=guide(skill=40, kind=kind))
    assert res.review == f"{kind.lower()} per guide but DB2 has no teaching item"
    assert res.source is None


def test_guide_vendor_without_item_keeps_a_failed_wiki_match_as_the_reason():
    res = resolve(facts(), AMBIGUOUS, None, None, guide=guide(skill=40, kind="VENDOR"))
    assert res.review == AMBIGUOUS


def test_unsettled_guide_price_never_becomes_a_gold_price():
    # Two Merchant's Favor amounts for one recipe: it is sold for the currency, so the
    # item's BuyPrice must not be shipped as its cost.
    res = resolve(facts(rsr=55, **ITEM), "no wiki row", None, None,
                  guide=guide(skill=55, kind="VENDOR", currency_unsettled=True))
    assert res.source == {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": 6002}
    assert "guide gives more than one Merchant's Favor price; none is used" in res.notes


def test_unsettled_guide_price_does_not_fall_to_buyprice_through_a_wiki_vendor_row():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55), None, None,
                  guide=guide(skill=55, kind="VENDOR", currency_unsettled=True))
    assert res.source == {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": 6002}


def test_unsettled_guide_price_takes_the_one_price_a_wiki_row_gives():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55, currency=60), None, None,
                  guide=guide(skill=55, kind="VENDOR", currency_unsettled=True))
    assert res.source == {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002,
                          "currency": {"name": FAVOR, "amount": 60}}


# --- source with a DB2 teaching item ----------------------------------------------------

def test_guide_currency_makes_a_vendor_without_a_gold_cost():
    res = resolve(facts(rsr=55, **ITEM), "no wiki row", None, None,
                  guide=guide(skill=55, currency=45))
    assert res.source == {"type": "VENDOR", "certainty": "GUIDE", "itemId": 6002,
                          "currency": {"name": FAVOR, "amount": 45}}


def test_guide_currency_with_a_db2_faction_is_a_reputation_source():
    res = resolve(facts(rsr=55, **REP), "no wiki row", None, None,
                  guide=guide(skill=55, currency=45))
    assert res.source == {"type": "REPUTATION", "certainty": "GUIDE", "itemId": 6003,
                          "factionId": 59, "factionName": "Thorium Brotherhood",
                          "level": "Honored", "currency": {"name": FAVOR, "amount": 45}}


def test_guide_and_wiki_prices_that_differ_are_noted():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55, currency=60), None, None,
                  guide=guide(skill=55, currency=45))
    assert res.source["currency"] == {"name": FAVOR, "amount": 45}
    assert f"wiki price 60 {FAVOR} differs from the guide's 45" in res.notes


@pytest.mark.parametrize("kind", ["DROP", "QUEST"])
def test_guide_drop_and_quest_carry_the_item(kind):
    res = resolve(facts(rsr=55, **ITEM), "no wiki row", None, None,
                  guide=guide(skill=55, kind=kind))
    assert res.source == {"type": kind, "certainty": "GUIDE", "itemId": 6002}


def test_guide_drop_wins_over_a_wiki_vendor_with_a_note():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55), None, None,
                  guide=guide(skill=55, kind="DROP"))
    assert res.source == {"type": "DROP", "certainty": "GUIDE", "itemId": 6002}
    assert "guide says DROP; wiki source 'Vendor'" in res.notes


def test_guide_trainer_next_to_a_teaching_item_is_a_note_and_the_wiki_types_the_item():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55), None, None,
                  guide=guide(skill=55, kind="TRAINER"))
    assert res.source == {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002, "cost": 500}
    assert "guide says TRAINER; DB2 has teaching item 6002" in res.notes


def test_guide_vendor_without_a_price_takes_the_wiki_row_when_there_is_one():
    res = resolve(facts(rsr=55, **ITEM), row("VENDOR", skill=55, currency=60), None, None,
                  guide=guide(skill=55, kind="VENDOR"))
    assert res.source == {"type": "VENDOR", "certainty": "WIKI", "itemId": 6002,
                          "currency": {"name": FAVOR, "amount": 60}}


@pytest.mark.parametrize("buy, expected, note", [
    (500, {"type": "VENDOR", "certainty": "GUIDE", "itemId": 6002, "cost": 500}, None),
    (0, {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": 6002},
     "guide says vendor; price not in DB2 or the guide"),
])
def test_guide_vendor_without_a_wiki_row(buy, expected, note):
    res = resolve(facts(rsr=55, teaching_item="6002", buy_price=buy), "no wiki row", None,
                  None, guide=guide(skill=55, kind="VENDOR"))
    assert res.source == expected
    assert (note in res.notes) if note else (note is None)


def test_guide_row_without_a_source_ships_the_item_as_unknown():
    res = resolve(facts(rsr=55, **ITEM), AMBIGUOUS, None, None, guide=guide(skill=55))
    assert res.source == {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": 6002}
    assert f"guide lists it without a source; wiki: {AMBIGUOUS}" in res.notes


def test_guide_row_without_a_source_leaves_a_matched_wiki_row_to_decide():
    res = resolve(facts(rsr=55, **ITEM), row("DROP", skill=55), None, None,
                  guide=guide(skill=55))
    assert res.source == {"type": "DROP", "certainty": "WIKI", "itemId": 6002}


# --- guards and stronger sources --------------------------------------------------------

def test_guide_row_describing_another_item_is_ignored():
    res = resolve(facts(created_item="5001"), row("TRAINER", skill=40), None, None,
                  guide=guide(skill=80, kind="STARTER", creates=5999))
    assert res.source == {"type": "TRAINER", "certainty": "WIKI"}
    assert res.difficulty["orangeFrom"] == "WIKI"
    assert res.notes == ("guide row describes another item (creates 5999, DB2 5001); "
                         "ignored",)


def test_guide_row_creating_the_db2_item_is_used():
    res = resolve(facts(created_item="5001"), "no wiki row", None, None,
                  guide=guide(skill=80, kind="STARTER", creates=5001))
    assert res.source == {"type": "STARTER", "certainty": "GUIDE"}


def test_in_game_trainer_beats_a_guide_kind_with_a_note():
    res = resolve(facts(), "no wiki row", IngameFacts(True, 50), None,
                  guide=guide(skill=50, kind="STARTER"))
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert "in-game trainer teaches it; guide says STARTER" in res.notes


def test_auto_learned_beats_a_guide_trainer_with_a_note():
    res = resolve(facts(acquire=1, min_rank=1), "no wiki row", None, None,
                  guide=guide(skill=20, kind="TRAINER"))
    assert res.source == {"type": "STARTER", "certainty": "DB2"}
    assert "DB2 marks it learned automatically; guide says TRAINER" in res.notes
    assert "guide skill 20 differs from AUTO orange 1" in res.notes


def test_guide_conflicts_are_kept_as_notes():
    res = resolve(facts(), row("TRAINER", skill=40), None, None,
                  guide=guide(notes=("guide rows disagree on skill: 40, 60",)))
    assert res.notes == ("guide rows disagree on skill: 40, 60",)
    assert res.source == {"type": "TRAINER", "certainty": "WIKI"}
