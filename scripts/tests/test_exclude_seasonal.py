"""Tests for the --exclude-seasonal filter in generate_recipes.py.

WHY: The Era build's Wowhead /classic listview returns both Vanilla and
Season-of-Discovery recipes.  SoD-only ones carry seasonId==2.  They do not
exist on a non-SoD Era/Vanilla client and must be excluded from the Vanilla
bucket (the SoD bucket keeps them via its own pipeline).

RED without the filter: a seasonal recipe would pass through to the Vanilla Lua.
GREEN with the filter: extract_recipes skips it and reports "seasonal (seasonId)".
"""

import importlib.util
from pathlib import Path

spec = importlib.util.spec_from_file_location(
    "gen", Path(__file__).resolve().parents[1] / "generate_recipes.py"
)
gen = importlib.util.module_from_spec(spec)
spec.loader.exec_module(gen)

# ---------------------------------------------------------------------------
# Shared fixtures
# ---------------------------------------------------------------------------
_SKILL_LINE = 197  # Tailoring
_SPELL_VANILLA = "2580"   # a regular Vanilla Tailoring recipe (no seasonId)
_SPELL_SEASONAL = "428424"  # Phoenix Bindings -- SoD-only (seasonId=2)


def _make_data_and_indexes(spell_ids):
    """Build minimal data + indexes for a set of spell_ids in Tailoring."""
    data = {
        "SkillLineAbility": [
            {
                "SkillLine": str(_SKILL_LINE),
                "Spell": sid,
                "ClassMask": "0",
                "TrivialSkillLineRankLow": "200",
                "TrivialSkillLineRankHigh": "250",
            }
            for sid in spell_ids
        ]
    }
    indexes = {
        "crafted_items": {sid: str(int(sid) + 1) for sid in spell_ids},
        "spell_reagents": {sid: [("2589", 1)] for sid in spell_ids},
        "spell_names": {
            _SPELL_VANILLA: "Bolt of Woolen Cloth",
            _SPELL_SEASONAL: "Phoenix Bindings",
        },
        "item_names": {str(int(sid) + 1): f"Item{sid}" for sid in spell_ids},
        "item_details": {},
        "recipe_items": {},
        "trivial_ranks": {},
    }
    return data, indexes


def _make_verified_sources(spell_ids, seasonal_ids):
    """Build a verified_sources dict; any spell_id in seasonal_ids gets seasonId=2."""
    sources = {}
    for sid in spell_ids:
        entry = {
            "difficulty": {
                "orange": 150, "yellow": 185, "green": 200, "gray": 215,
                "certainty": "WOWHEAD",
            },
            "source": {"type": "TRAINER", "certainty": "WOWHEAD"},
        }
        if sid in seasonal_ids:
            entry["seasonId"] = 2
        sources[sid] = entry
    return sources


# ---------------------------------------------------------------------------
# Tests
# ---------------------------------------------------------------------------

def test_seasonal_recipe_excluded_when_flag_set():
    """With exclude_seasonal=True, a recipe carrying seasonId==2 MUST be skipped.

    This is the GREEN case: the filter is active and must block Phoenix Bindings
    from appearing in the Vanilla bucket.
    """
    all_spells = [_SPELL_VANILLA, _SPELL_SEASONAL]
    data, indexes = _make_data_and_indexes(all_spells)
    verified = _make_verified_sources(all_spells, seasonal_ids={_SPELL_SEASONAL})

    recipes, skipped = gen.extract_recipes(
        data, indexes, _SKILL_LINE,
        verified_sources=verified,
        exclude_seasonal=True,
    )

    recipe_ids = {str(r["id"]) for r in recipes}
    skipped_ids = {s["id"] for s in skipped}

    assert _SPELL_SEASONAL not in recipe_ids, (
        "Seasonal recipe (seasonId=2) must be excluded when --exclude-seasonal is set"
    )
    assert _SPELL_VANILLA in recipe_ids, (
        "Non-seasonal recipe must still be included when --exclude-seasonal is set"
    )
    assert _SPELL_SEASONAL in skipped_ids, (
        "Excluded seasonal recipe must appear in skipped list"
    )
    # Verify the skip reason is meaningful
    seasonal_skip = next(s for s in skipped if s["id"] == _SPELL_SEASONAL)
    assert "seasonal" in seasonal_skip["reason"], (
        f"Skip reason must mention 'seasonal'; got: {seasonal_skip['reason']!r}"
    )


def test_seasonal_recipe_included_when_flag_not_set():
    """With exclude_seasonal=False (default), a seasonId==2 recipe MUST pass through.

    This is the RED case for the OLD code (no filter): verifies that without the
    flag, seasonal recipes are treated as normal recipes (included in the bucket).
    This is correct for the SoD pipeline, which handles them deliberately.
    """
    all_spells = [_SPELL_VANILLA, _SPELL_SEASONAL]
    data, indexes = _make_data_and_indexes(all_spells)
    verified = _make_verified_sources(all_spells, seasonal_ids={_SPELL_SEASONAL})

    recipes, skipped = gen.extract_recipes(
        data, indexes, _SKILL_LINE,
        verified_sources=verified,
        exclude_seasonal=False,  # flag OFF -- SoD / TBC / WotLK path
    )

    recipe_ids = {str(r["id"]) for r in recipes}

    assert _SPELL_SEASONAL in recipe_ids, (
        "Without --exclude-seasonal the seasonal recipe must still be emitted "
        "(SoD pipeline relies on this)"
    )
    assert _SPELL_VANILLA in recipe_ids, (
        "Non-seasonal recipe must also be present when flag is off"
    )


def test_non_seasonal_recipe_never_excluded():
    """A recipe with no seasonId must never be skipped regardless of the flag."""
    data, indexes = _make_data_and_indexes([_SPELL_VANILLA])
    verified = _make_verified_sources([_SPELL_VANILLA], seasonal_ids=set())

    recipes_on, _ = gen.extract_recipes(
        data, indexes, _SKILL_LINE,
        verified_sources=verified,
        exclude_seasonal=True,
    )
    recipes_off, _ = gen.extract_recipes(
        data, indexes, _SKILL_LINE,
        verified_sources=verified,
        exclude_seasonal=False,
    )

    assert len(recipes_on) == 1, "Non-seasonal recipe must be included when flag is ON"
    assert len(recipes_off) == 1, "Non-seasonal recipe must be included when flag is OFF"
