"""Coverage and the review files of a review_policy "exclude" bucket."""
import dataclasses

import pytest

import review_report as rr
from buckets import get_bucket

FOREVER = get_bucket("forever")


def _r(spell, skill, gray, kind="TRAINER"):
    return {"id": spell, "name": f"Recipe {spell}", "skillRequired": skill,
            "skillRange": {"orange": skill, "yellow": skill, "green": skill, "gray": gray},
            "source": {"type": kind}}


# --- coverage ----------------------------------------------------------------------

def test_gap_of_ten_points():
    # Covers 1-50 (skill 1, gray 51) and 61-299: points 51..60 are uncovered.
    cov = rr.coverage([_r(1, 1, 51), _r(2, 61, 300)], [], 300)
    assert (cov.max_gap, cov.gap) == (10, (51, 60))
    assert rr.gate_failures(cov, FOREVER) == []


def test_gap_of_eleven_points_fails():
    cov = rr.coverage([_r(1, 1, 51), _r(2, 62, 300)], [], 300)
    assert (cov.max_gap, cov.gap) == (11, (51, 61))
    failures = rr.gate_failures(cov, FOREVER)
    assert len(failures) == 1 and "11" in failures[0] and "51-61" in failures[0]


def test_full_coverage_has_no_gap():
    cov = rr.coverage([_r(1, 1, 300)], [], 300)
    assert (cov.max_gap, cov.gap) == (0, None)


def test_nothing_shipped_is_one_gap_over_every_point():
    cov = rr.coverage([], [("1", "a", "no wiki row")], 300)
    assert (cov.shipped, cov.in_game, cov.share) == (0, 1, 0.0)
    assert (cov.max_gap, cov.gap) == (299, (1, 299))


def test_the_longest_gap_wins_and_ties_keep_the_first():
    cov = rr.coverage([_r(1, 3, 10), _r(2, 13, 300)], [], 300)
    # 1..2 uncovered (2 points), 10..12 uncovered (3 points).
    assert (cov.max_gap, cov.gap) == (3, (10, 12))
    tie = rr.coverage([_r(1, 4, 10), _r(2, 13, 300)], [], 300)
    assert (tie.max_gap, tie.gap) == (3, (1, 3))


def test_recipe_learned_above_the_cap_covers_nothing():
    cov = rr.coverage([_r(1, 1, 300), _r(2, 315, 340)], [], 300)
    assert (cov.shipped, cov.max_gap) == (2, 0)


def test_share_counts_only_in_game_exclusions():
    shipped = [_r(i, 1, 300) for i in range(9)] + [_r(9, 1, 300, "UNKNOWN")]
    excluded = [("101", "a", "no wiki row"),
                ("102", "b", "not in game: absent from the in-game recipe list"),
                ("103", "c", "no skill-up: yellow == gray"),
                ("104", "d", "no learn skill: wiki skill 70 above yellow 60")]
    cov = rr.coverage(shipped, excluded, 300)
    assert (cov.shipped, cov.in_game, cov.known_source) == (10, 12, 9)
    assert cov.share == pytest.approx(10 / 12)
    assert rr.gate_failures(cov, FOREVER) == []           # 10 of 12 meets the 0.75 floor
    stricter = dataclasses.replace(FOREVER, coverage_floor=0.90)
    assert any("share" in f for f in rr.gate_failures(cov, stricter))


def test_share_exactly_at_the_floor_passes():
    # 3 of 4 is exactly the 0.75 floor; one fewer fails.
    shipped = [_r(i, 1, 300) for i in range(3)]
    cov = rr.coverage(shipped, [("101", "a", "no wiki row")], 300)
    assert cov.share == 0.75
    assert rr.gate_failures(cov, FOREVER) == []
    below = rr.coverage(shipped[:2], [("101", "a", "no wiki row")], 300)
    assert any("share" in f for f in rr.gate_failures(below, FOREVER))


def test_no_gate_without_a_floor():
    cov = rr.coverage([], [], 300)
    assert rr.gate_failures(cov, get_bucket("tbc")) == []


# --- the gap counted only where the game has a skill-up recipe -------------------------

def test_points_no_excluded_recipe_could_cover_are_no_gap():
    # Mining's shape: smelts cover 1-139 and 155-184; nothing in the game gives a skill-up
    # at 140-154 or 185-299, and the one excluded recipe is learned at 310.
    shipped = [_r(1, 1, 140), _r(2, 155, 185)]
    cov = rr.coverage(shipped, [("9", "Elementium", "no wiki row")], 300,
                      possible=[(310, 320)])
    assert (cov.max_gap, cov.gap) == (0, None)
    # Every point counted (the first definition): the same data fails.
    assert rr.coverage(shipped, [("9", "Elementium", "no wiki row")], 300).max_gap == 115


def test_points_an_excluded_recipe_could_cover_are_a_gap():
    # Engineering's old shape: nothing shipped at 1-24 while an excluded recipe, learnable
    # from skill 1 for all the evidence says, gives skill-ups up to 40.
    cov = rr.coverage([_r(1, 25, 300)], [("9", "Powder", "unknown source")], 300,
                      possible=[(1, 40)])
    assert (cov.max_gap, cov.gap) == (24, (1, 24))
    assert rr.gate_failures(cov, FOREVER)


def test_gap_run_is_broken_by_points_nothing_could_cover():
    # Uncovered 100-199; excluded recipes could cover 100-104 and 150-162 only.
    cov = rr.coverage([_r(1, 1, 100), _r(2, 200, 300)], [], 300,
                      possible=[(100, 105), (150, 163)])
    assert (cov.max_gap, cov.gap) == (13, (150, 162))


def test_possible_range_above_the_cap_or_empty_marks_no_point():
    # Shipped covers 1-99 only. A range above the cap, an empty one and one inside the
    # covered points leave 100-299 uncounted: no gap.
    cov = rr.coverage([_r(1, 1, 100)], [], 300, possible=[(310, 320), (150, 150), (0, 5)])
    assert (cov.max_gap, cov.gap) == (0, None)
    assert rr.coverage([_r(1, 1, 100)], [], 300, possible=[(150, 151)]).gap == (150, 150)


def test_skill_up_ranges_per_excluded_in_game_recipe():
    excluded = [("101", "a", "no wiki row"), ("102", "b", "no wiki row"),
                ("103", "c", "no wiki row"), ("104", "d", "no wiki row"),
                ("105", "e", "not in game: absent from the in-game recipe list"),
                ("106", "f", "no skill-up: yellow == gray")]
    sources = {"101": {"forever": {"learnFrom": 45}},      # a hint below yellow: used
               "102": {"forever": {"learnFrom": 95}},      # later than yellow: not believed
               "103": {},                                  # no hint: from skill 1
               "105": {"forever": {"learnFrom": 10}}, "106": {"forever": {"learnFrom": 10}}}
    ranks = {"101": (60, 100), "102": (60, 100), "103": (60, 100), "105": (5, 50),
             "106": (40, 40)}
    assert rr.skill_up_ranges(excluded, sources, ranks, 300) == [
        (45, 100), (60, 100), (1, 100), (1, 300)]     # 104: no thresholds -> 1 to the cap


def test_no_possible_ranges_means_no_gap_at_all():
    # Nothing excluded in game: every uncovered point is the game's own.
    cov = rr.coverage([_r(1, 1, 50)], [], 300, possible=[])
    assert cov.max_gap == 0


def test_review_text_says_which_gap_definition_applies(tmp_path):
    review_dir = tmp_path / "review"
    data = _data()
    rr.write_profession(review_dir, "Tailoring", data)
    counted = rr.render(review_dir, FOREVER)
    assert "an excluded in-game recipe could give a skill-up" in counted
    every = rr.render(review_dir, dataclasses.replace(FOREVER, gap_skill_up_only=False))
    assert "an excluded in-game recipe could give a skill-up" not in every
    assert "where no shipped recipe has skillRequired <= p < gray." in every


# --- review/<Prof>.json and REVIEW.md ----------------------------------------------

def _data(held=False, excluded=None, shipped=None, notes=()):
    shipped = shipped if shipped is not None else [_r(5, 1, 300), _r(3, 1, 300, "UNKNOWN")]
    excluded = excluded if excluded is not None else [
        ("20", "Zeta", "no wiki row"), ("4", "Delta", "no wiki row: row 'x' taken by spell 9"),
        ("7", "Eta", "trainer per wiki but DB2 has teaching item 6004"),
        ("8", "Theta", "not in game: absent from the in-game recipe list")]
    for r in shipped:
        r["difficultyOrigin"] = "WIKI"
    cov = rr.coverage(shipped, excluded, 300)
    return rr.profession_data(cov, held, shipped, excluded, FOREVER, notes)


NOTES = [("20", "Zeta", "wiki says vendor; price not in DB2 or wiki"),
         ("5", "Recipe 5", "wiki row skill 80 differs from ITEM orange 55"),
         ("5", "Recipe 5", "in-game trainer teaches it; DB2 also has teaching item 6004")]


def test_notes_are_stored_sorted_and_stable(tmp_path):
    path = rr.write_profession(tmp_path / "review", "Tailoring", _data(notes=NOTES))
    first = path.read_bytes()
    assert rr.load_profession(path)["notes"] == [
        [5, "Recipe 5", "in-game trainer teaches it; DB2 also has teaching item 6004"],
        [5, "Recipe 5", "wiki row skill 80 differs from ITEM orange 55"],
        [20, "Zeta", "wiki says vendor; price not in DB2 or wiki"]]
    rr.write_profession(tmp_path / "review", "Tailoring", _data(notes=list(reversed(NOTES))))
    assert path.read_bytes() == first


def test_render_lists_the_notes(tmp_path):
    review = tmp_path / "review"
    rr.write_profession(review, "Tailoring", _data(notes=NOTES))
    rr.write_profession(review, "Alchemy", _data(excluded=[]))
    md = rr.render(review, FOREVER)
    tailoring = _section(md, "Tailoring")
    assert "### Notes (3)\n\n- 5 Recipe 5: in-game trainer teaches it; DB2 also has " \
           "teaching item 6004\n" in tailoring
    assert "- 20 Zeta: wiki says vendor; price not in DB2 or wiki" in tailoring
    assert "### Notes (0)\n\nnone" in _section(md, "Alchemy")


def test_source_notes_reads_every_recipe():
    sources = {"20": {"name": "Zeta", "forever": {"notes": ["b", "a"]}},
               "5": {"name": "Recipe 5"}, "7": {"name": "Eta", "forever": {}}}
    assert sorted(rr.source_notes(sources)) == [("20", "Zeta", "a"), ("20", "Zeta", "b")]
    assert rr.source_notes(None) == []


@pytest.mark.parametrize("bad", [{"notes": "one"}, {"notes": [1]}, {"notes": [""]}])
def test_source_notes_refuses_a_malformed_list(bad):
    with pytest.raises(ValueError) as e:
        rr.source_notes({"20": {"name": "Zeta", "forever": bad}})
    assert "20" in str(e.value)


def test_review_file_from_before_notes_says_they_are_not_recorded(tmp_path):
    # Generating one profession re-renders REVIEW.md from every review file; one written
    # before notes existed must neither stop the run nor read as "no notes".
    review = tmp_path / "review"
    path = rr.write_profession(review, "Tailoring", _data(notes=NOTES))
    rr.write_profession(review, "Alchemy", _data())
    data = rr.load_profession(path)
    del data["notes"]
    path.write_text(__import__("json").dumps(data), encoding="utf-8")
    md = rr.render(review, FOREVER)
    assert "### Notes (not recorded)\n\nThis review file predates notes; regenerate " \
           "Tailoring." in _section(md, "Tailoring")
    assert "### Notes (0)" in _section(md, "Alchemy")


def test_render_says_the_milestones_are_unconfirmed(tmp_path):
    review = tmp_path / "review"
    rr.write_profession(review, "Tailoring", _data())
    line = "Milestones (75, 150, 225, 300) not yet confirmed in game."
    assert line in rr.render(review, FOREVER)
    verified = dataclasses.replace(FOREVER, milestones_verified=True)
    assert "not yet confirmed" not in rr.render(review, verified)


def test_write_profession_is_sorted_and_stable(tmp_path):
    data = _data()
    path = rr.write_profession(tmp_path / "review", "Tailoring", data)
    first = path.read_bytes()
    loaded = rr.load_profession(path)
    assert [e[0] for e in loaded["excluded"]] == [4, 7, 8, 20]
    assert loaded["unknownSource"] == [[3, "Recipe 3"]]
    assert loaded["sourceTypes"] == {"TRAINER": 1, "UNKNOWN": 1}
    assert loaded["orangeFrom"] == {"WIKI": 2}
    # Same data in another order -> the same bytes.
    shuffled = dict(data, excluded=list(reversed(data["excluded"])))
    rr.write_profession(tmp_path / "review", "Tailoring", shuffled)
    assert path.read_bytes() == first
    assert first.endswith(b"\n")


def test_render_lists_coverage_groups_and_unknowns(tmp_path):
    review = tmp_path / "review"
    rr.write_profession(review, "Tailoring", _data())
    rr.write_profession(review, "Alchemy", _data(held=True, excluded=[]))
    md = rr.render(review, FOREVER)
    assert md == rr.render(review, FOREVER)                     # deterministic
    assert "make forever-generate" in md                         # how to regenerate
    assert "| Profession | Shipped | In game | Share | Known-source share | Largest gap | Held back |" in md
    # Registry order (Alchemy before Tailoring), not file order.
    assert md.index("| Alchemy |") < md.index("| Tailoring |")
    assert "| Tailoring | 2 | 5 | 40.0% | 20.0% | 0 | no |" in md
    assert "| Alchemy | 2 | 2 | 100.0% | 50.0% | 0 | yes |" in md
    tailoring = md[md.index("## Tailoring"):]
    # Grouped by reason prefix, numbers folded, a taken row apart from a missing one.
    for heading in ("### no wiki row (1)", "### no wiki row (taken by another spell) (1)",
                    "### trainer per wiki but DB2 has teaching item N (1)",
                    "### not in game (1)"):
        assert heading in tailoring, heading
    assert "- 7 Eta: trainer per wiki but DB2 has teaching item 6004" in tailoring
    assert "- 3 Recipe 3" in tailoring.split("UNKNOWN source")[1]
    assert "Not generated yet:" in md and "Blacksmithing" in md


def test_render_ignores_nothing_silently(tmp_path):
    review = tmp_path / "review"
    rr.write_profession(review, "Jewelcrafting", _data())   # not a Forever profession
    with pytest.raises(ValueError) as e:
        rr.render(review, FOREVER)
    assert "Jewelcrafting" in str(e.value)


def test_reason_group():
    assert rr.reason_group("no wiki row") == "no wiki row"
    assert rr.reason_group("no wiki row: row 'a' taken by spell 12") == \
        "no wiki row (taken by another spell)"
    assert rr.reason_group("no learn skill: wiki skill 70 above yellow 60") == "no learn skill"
    assert rr.reason_group("trainer per wiki but DB2 has teaching item 6004") == \
        "trainer per wiki but DB2 has teaching item N"


def test_profession_data_records_the_gate():
    data = _data()
    assert data["coverage"]["floor"] == FOREVER.coverage_floor
    assert data["coverage"]["maxGapAllowed"] == FOREVER.coverage_max_gap
    assert data["coverage"]["passes"] is False          # 2 of 5 in game
    ungated = dataclasses.replace(FOREVER, coverage_floor=None, coverage_max_gap=None)
    cov = rr.coverage([], [], 300)
    assert rr.profession_data(cov, False, [], [], ungated)["coverage"]["passes"] is None


def test_render_formats_the_share_from_the_counts(tmp_path):
    # 373 / 429 = 0.86946: rounding the stored 0.8695 again would print 87.0%.
    cov = rr.Coverage(shipped=373, in_game=429, share=373 / 429, known_source=373,
                      max_gap=0, gap=None)
    rr.write_profession(tmp_path / "review", "Tailoring",
                        rr.profession_data(cov, False, [], [], FOREVER))
    assert "| Tailoring | 373 | 429 | 86.9% | 86.9% | 0 | no |" in rr.render(tmp_path / "review",
                                                                           FOREVER)


def _section(md: str, prof: str) -> str:
    start = md.index(f"## {prof}\n")
    end = md.find("\n## ", start + 1)
    return md[start:] if end == -1 else md[start:end]


def test_render_states_why_a_profession_is_held_back(tmp_path):
    review = tmp_path / "review"
    # 2 of 5 in game: below the 0.75 floor.
    rr.write_profession(review, "Tailoring", _data(held=True))
    # Shipped only from skill 30: points 1-29 have no recipe.
    rr.write_profession(review, "Mining", _data(held=True, excluded=[],
                                                 shipped=[_r(5, 30, 300)]))
    md = rr.render(review, FOREVER)
    assert _section(md, "Tailoring").startswith(
        "## Tailoring\n\nHeld back (not shipped): share 0.400 (2 of 5 in game) below the "
        "floor 0.75.\n")
    assert _section(md, "Mining").startswith(
        "## Mining\n\nHeld back (not shipped): largest gap 29 skill points (1-29) above the "
        "maximum 10.\n")


def test_render_held_back_but_passing_says_so(tmp_path):
    review = tmp_path / "review"
    rr.write_profession(review, "Alchemy", _data(held=True, excluded=[]))
    rr.write_profession(review, "Tailoring", _data())
    md = rr.render(review, FOREVER)
    assert "Held back (not shipped): passes the coverage gate" in _section(md, "Alchemy")
    assert "Held back" not in _section(md, "Tailoring")


# --- specializations -----------------------------------------------------------------

def _spec_shipped():
    tribal = dict(_r(19063, 250, 290), name="Chimeric Boots",
                  specialization={"spellId": 10660, "name": "Tribal Leatherworking"})
    onyxia = dict(_r(19106, 300, 320), name="Onyxia Scale Breastplate",
                  specialization={"unknown": True})
    scale = dict(_r(10650, 255, 295), name="Dragonscale Breastplate",
                 specialization={"spellId": 10656, "name": "Dragonscale Leatherworking"})
    return [onyxia, _r(5, 1, 300), tribal, scale]


def test_specializations_are_stored_sorted(tmp_path):
    path = rr.write_profession(tmp_path / "review", "Leatherworking", _data(shipped=_spec_shipped()))
    assert rr.load_profession(path)["specializations"] == [
        [10650, "Dragonscale Breastplate", 10656, "Dragonscale Leatherworking"],
        [19063, "Chimeric Boots", 10660, "Tribal Leatherworking"],
        [19106, "Onyxia Scale Breastplate", 0, "unknown"]]


def test_render_lists_the_specializations(tmp_path):
    review = tmp_path / "review"
    rr.write_profession(review, "Leatherworking", _data(shipped=_spec_shipped()))
    rr.write_profession(review, "Alchemy", _data())
    md = rr.render(review, FOREVER)
    lw = _section(md, "Leatherworking")
    assert ("### Specialization (3)\n\n"
            "- 10650 Dragonscale Breastplate: Dragonscale Leatherworking\n"
            "- 19063 Chimeric Boots: Tribal Leatherworking\n"
            "- 19106 Onyxia Scale Breastplate: unknown (teaching item not in this build)") in lw
    assert "### Specialization (0)\n\nnone" in _section(md, "Alchemy")


def test_review_file_from_before_specializations_says_so(tmp_path):
    review = tmp_path / "review"
    path = rr.write_profession(review, "Leatherworking", _data(shipped=_spec_shipped()))
    data = rr.load_profession(path)
    del data["specializations"]
    path.write_text(__import__("json").dumps(data), encoding="utf-8")
    assert "### Specialization (not recorded)" in _section(rr.render(review, FOREVER), "Leatherworking")
