"""Coverage (plan ruling R4) and the review files of a review_policy "exclude" bucket."""
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
    assert any("share" in f for f in rr.gate_failures(cov, FOREVER))


def test_share_exactly_at_the_floor_passes():
    shipped = [_r(i, 1, 300) for i in range(9)]
    cov = rr.coverage(shipped, [("101", "a", "no wiki row")], 300)
    assert cov.share == 0.9
    assert rr.gate_failures(cov, FOREVER) == []


def test_no_gate_without_a_floor():
    cov = rr.coverage([], [], 300)
    assert rr.gate_failures(cov, get_bucket("tbc")) == []


# --- review/<Prof>.json and REVIEW.md ----------------------------------------------

def _data(held=False, excluded=None, shipped=None):
    shipped = shipped if shipped is not None else [_r(5, 1, 300), _r(3, 1, 300, "UNKNOWN")]
    excluded = excluded if excluded is not None else [
        ("20", "Zeta", "no wiki row"), ("4", "Delta", "no wiki row: row 'x' taken by spell 9"),
        ("7", "Eta", "trainer per wiki but DB2 has teaching item 6004"),
        ("8", "Theta", "not in game: absent from the in-game recipe list")]
    for r in shipped:
        r["difficultyOrigin"] = "WIKI"
    cov = rr.coverage(shipped, excluded, 300)
    return rr.profession_data(cov, held, shipped, excluded, FOREVER)


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
