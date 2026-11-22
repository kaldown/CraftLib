"""Forever resolver: the DB2 facts beyond thresholds and teaching items.

SkillLineAbility.AcquireMethod (1 = learned automatically at MinSkillLineRank, 3 = never
learned), the trade-skill category of leftover recipes whose created item the build lacks,
and a learn skill above yellow.
"""
import pytest

from forever_resolve import (IngameFacts, earliest_learn_skill, release_trainer_entries,
                             resolve, trainer_ambiguities)
from tests.test_forever_resolve import ITEM, facts, row

NEVER = "not in game: DB2 marks it never learned (AcquireMethod 3)"
LEFTOVER = dict(created_item="238289", created_missing=True,
                leftover_category="SEASON OF DISCOVERY")
CAPTURED = IngameFacts(present=True, trainer_skill=None)


# --- in game ----------------------------------------------------------------------------

def test_never_learned_is_not_in_game():
    res = resolve(facts(acquire=3), row("TRAINER", skill=40), None, None)
    assert res.review == NEVER and res.review.startswith("not in game:")


def test_never_learned_is_reported_before_no_skill_up():
    res = resolve(facts(acquire=3, yellow=50, gray=50), row("TRAINER"), None, None)
    assert res.review == NEVER


def test_capture_wins_over_never_learned():
    res = resolve(facts(acquire=3), row("TRAINER", skill=40), CAPTURED, None)
    assert res.review is None
    assert res.notes == ("in-game capture has it; DB2 marks it never learned "
                         "(AcquireMethod 3)",)


def test_absent_in_capture_keeps_the_capture_wording():
    res = resolve(facts(acquire=3), row("TRAINER"), IngameFacts(False, None), None)
    assert res.review == "not in game: absent from the in-game recipe list"


def test_leftover_category_with_missing_created_item_is_not_in_game():
    res = resolve(facts(**LEFTOVER), row("TRAINER", skill=40), None, None)
    assert res.review == ("not in game: DB2 category 'SEASON OF DISCOVERY', created item "
                          "238289 not in this build")


def test_leftover_category_with_a_known_created_item_resolves():
    res = resolve(facts(created_item="2996", leftover_category="SEASON OF DISCOVERY"),
                  row("TRAINER", skill=40), None, None)
    assert res.review is None and res.notes == ()


def test_missing_created_item_outside_a_leftover_category_is_a_note():
    res = resolve(facts(created_item="273911", created_missing=True),
                  row("TRAINER", skill=40), None, None)
    assert res.review is None
    assert res.notes == ("created item 273911 has no data in this build",)


def test_capture_wins_over_a_leftover_category():
    res = resolve(facts(**LEFTOVER), row("TRAINER", skill=40), CAPTURED, None)
    assert res.review is None
    assert res.notes == ("in-game capture has it; DB2 category 'SEASON OF DISCOVERY', "
                         "created item 238289 not in this build",)


# --- learned automatically --------------------------------------------------------------

def test_auto_learned_takes_min_rank_and_is_a_starter():
    res = resolve(facts(acquire=1, min_rank=1), "no wiki row", None, None)
    assert res.source == {"type": "STARTER", "certainty": "DB2"}
    assert res.difficulty == {"orange": 1, "yellow": 95, "green": 115, "gray": 135,
                              "certainty": "DB2", "orangeFrom": "AUTO"}
    assert res.notes == ()


def test_auto_learned_beats_item_cross_and_wiki():
    res = resolve(facts(acquire=1, min_rank=5, rsr=55, **ITEM), row("VENDOR", skill=80),
                  None, [("Vanilla", 40)])
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (5, "AUTO")
    assert res.source == {"type": "STARTER", "certainty": "DB2"}
    assert res.notes == (
        "wiki row skill 80 differs from AUTO orange 5",
        "DB2 marks it learned automatically; DB2 also has teaching item 6002",
        "DB2 marks it learned automatically; wiki source 'Vendor'")


@pytest.mark.parametrize("kind, raw", [("STARTER", "Automatic"), ("UNKNOWN", "?")])
def test_auto_learned_agreeing_or_silent_wiki_adds_no_note(kind, raw):
    res = resolve(facts(acquire=1, min_rank=1), row(kind, skill=1, raw=raw), None, None)
    assert res.source == {"type": "STARTER", "certainty": "DB2"} and res.notes == ()


def test_in_game_trainer_beats_auto_learned():
    res = resolve(facts(acquire=1, min_rank=1), row("TRAINER", skill=40),
                  IngameFacts(present=True, trainer_skill=30), None)
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (30, "INGAME")
    assert "in-game trainer teaches it; DB2 marks it learned automatically" in res.notes


def test_auto_learned_at_or_above_gray_gives_no_skill_up():
    res = resolve(facts(acquire=1, min_rank=135), "no wiki row", None, None)
    assert res.review == "no skill-up: learned at 135, gray 135"


def test_auto_learned_without_a_rank_falls_through():
    # MinSkillLineRank 0 is no learn skill; the source is still DB2's.
    res = resolve(facts(acquire=1, min_rank=0), row("TRAINER", skill=40), None, None)
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (40, "WIKI")
    assert res.source == {"type": "STARTER", "certainty": "DB2"}


# --- a learn skill above yellow ---------------------------------------------------------

def test_item_rank_above_yellow_below_gray_is_the_learn_skill():
    res = resolve(facts(rsr=120, **ITEM), row("VENDOR", skill=120), None, None)
    assert res.difficulty == {"orange": 120, "yellow": 95, "green": 115, "gray": 135,
                              "certainty": "DB2", "orangeFrom": "ITEM"}
    assert res.notes == ("learn skill 120 above yellow 95: teaching item 6002 "
                         "RequiredSkillRank",)


@pytest.mark.parametrize("rank", [135, 140])
def test_item_rank_at_or_above_gray_gives_no_skill_up(rank):
    res = resolve(facts(rsr=rank, **ITEM), row("VENDOR", skill=40), None, None)
    assert res.review == f"no skill-up: learned at {rank}, gray 135"
    assert res.review.startswith("no skill-up:")


def test_in_game_trainer_above_yellow_below_gray_is_the_learn_skill():
    res = resolve(facts(), row("TRAINER", skill=40), IngameFacts(True, 100), None)
    assert (res.difficulty["orange"], res.difficulty["orangeFrom"]) == (100, "INGAME")
    assert "learn skill 100 above yellow 95: in-game trainer" in res.notes


def test_in_game_trainer_at_or_above_gray_gives_no_skill_up():
    res = resolve(facts(), row("TRAINER", skill=40), IngameFacts(True, 135), None)
    assert res.review == "no skill-up: learned at 135, gray 135"


# --- the earliest learn skill any source gives (for the coverage gate) -------------------

def test_earliest_learn_skill_is_the_smallest_hint():
    f = facts(rsr=55, **ITEM)
    assert earliest_learn_skill(f, row("VENDOR", skill=80), None, [70, 60], [90]) == 55
    assert earliest_learn_skill(f, row("VENDOR", skill=40), None, [], []) == 40
    assert earliest_learn_skill(facts(), "no wiki row", IngameFacts(True, 30), [45], []) == 30
    assert earliest_learn_skill(facts(acquire=1, min_rank=1), "no wiki row", None, [], []) == 1


def test_earliest_learn_skill_ignores_what_is_no_learn_skill():
    # 0 ("learned at 0" in a cross bucket, an item without a rank) is not a learn skill.
    f = facts(rsr=0, **ITEM)
    assert earliest_learn_skill(f, row("VENDOR", skill=None), None, [0], [0]) is None
    assert earliest_learn_skill(facts(), "no wiki row", None, [], []) is None
    assert earliest_learn_skill(facts(), "ambiguous: x", None, [310], []) == 310


# --- a trainer capture without a recipe list -------------------------------------------

def test_trainer_entry_alone_proves_a_recipe_db2_marks_absent_is_in_game():
    seen = IngameFacts(present=None, trainer_skill=40, trainer_key="linen cloak")
    res = resolve(facts(acquire=3), row("TRAINER", skill=40), seen, None)
    assert res.source == {"type": "TRAINER", "certainty": "INGAME"}
    assert f"in-game capture has it; DB2 marks it never learned (AcquireMethod 3)" in res.notes


def test_shared_trainer_entry_goes_to_the_spell_db2_has():
    old = IngameFacts(present=None, trainer_skill=40, trainer_key="linen cloak")
    new = IngameFacts(present=None, trainer_skill=40, trainer_key="linen cloak")
    ingame = release_trainer_entries({"3496": old, "439128": new}, {"3496"})
    assert ingame["3496"] == IngameFacts(present=None, trainer_skill=None)
    assert ingame["439128"] == new
    assert trainer_ambiguities(ingame) == {}          # one claimant left: no ambiguity
    res = resolve(facts(spell_id="3496", acquire=3), row("TRAINER"), ingame["3496"], None)
    assert res.review == NEVER


def test_trainer_entry_only_absent_spells_reach_stays_with_them():
    only = IngameFacts(present=None, trainer_skill=40, trainer_key="linen cloak")
    assert release_trainer_entries({"3496": only}, {"3496"}) == {"3496": only}


def test_recipe_list_keeps_the_entry_of_a_spell_db2_marks_absent():
    listed = IngameFacts(present=True, trainer_skill=40, trainer_key="linen cloak")
    other = IngameFacts(present=True, trainer_skill=40, trainer_key="linen cloak")
    ingame = release_trainer_entries({"3496": listed, "439128": other}, {"3496"})
    assert ingame["3496"] == listed
