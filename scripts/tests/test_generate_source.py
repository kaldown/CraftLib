import pytest
import generate_recipes as gr


def _recipe(source):
    return {"id": 16980, "name": "Rune Edge", "skillRequired": 250,
            "skillRange": {"orange": 250, "yellow": 260, "green": 270, "gray": 280},
            "reagents": [], "expansion": "SOD", "recipe_item": None, "source": source}


_PROF = {"key": "blacksmithing", "name": "Blacksmithing", "constant": "BLACKSMITHING"}


def test_vendor_missing_cost_raises_naming_spell():
    src = {"type": "VENDOR", "certainty": "CROSS", "itemId": 12826}
    with pytest.raises(ValueError) as excinfo:
        gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "16980" in str(excinfo.value)


def test_complete_vendor_emits_itemid_and_cost():
    src = {"type": "VENDOR", "certainty": "CROSS", "itemId": 12826, "cost": 20000}
    lua = gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "itemId = 12826," in lua
    assert "cost = 20000," in lua


def test_unknown_source_type_raises_naming_spell():
    # A genuinely-unhandled type token (not TRAINER/REPUTATION/VENDOR/DROP/QUEST/
    # STARTER/DISCOVERY/UNKNOWN) must still hit the final else:raise.
    src = {"type": "BOGUS", "certainty": "X"}
    with pytest.raises(ValueError) as excinfo:
        gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "16980" in str(excinfo.value)


def test_structural_starter_source_is_emitted():
    # STARTER is a structural source (bare type line only, no itemId/cost): unlike UNKNOWN
    # it is NOT ejected -- it must be emitted with its bare type line and the recipe id.
    src = {"type": "STARTER", "certainty": "CROSS"}
    lua = gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "type = C.SOURCE_TYPE.STARTER," in lua
    assert "16980" in lua


def test_unknown_source_recipe_is_ejected_not_emitted():
    # UNKNOWN-source recipes (e.g. SoD-exclusive Tinkers/feasts not yet Wowhead-sourced)
    # are skipped during generation: no raise, and the recipe is absent from the Lua.
    unknown_src = {"type": "UNKNOWN", "certainty": "WOWHEAD"}
    lua = gr.generate_lua([_recipe(unknown_src)], _PROF, expansion=1)
    assert "16980" not in lua
    assert "Rune Edge" not in lua


def test_discovery_with_itemid_emits_type_and_itemid():
    # DISCOVERY is a real source type (SoD New Avalon Mage Tower formulas). With a known
    # formula/recipe itemId it must emit BOTH the type line and the itemId (mirrors QUEST/DROP),
    # unlike STARTER which is bare-type-only.
    src = {"type": "DISCOVERY", "certainty": "MANUAL", "itemId": 241191, "needsReview": True}
    lua = gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "type = C.SOURCE_TYPE.DISCOVERY," in lua
    assert "itemId = 241191," in lua


def test_discovery_without_itemid_emits_bare_type():
    # A discovery recipe with no formula item (puzzle-only) must still emit (not crash, not eject):
    # bare type line, no itemId in the source block.
    src = {"type": "DISCOVERY", "certainty": "MANUAL", "needsReview": True}
    lua = gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "type = C.SOURCE_TYPE.DISCOVERY," in lua
    assert "16980" in lua
    assert "itemId = " not in lua  # _recipe has no crafted itemId, so none should appear


def test_quest_emits_itemid():
    # QUEST carries the recipe itemId (quest reward); confirm the 9-recipe QUEST shape emits it.
    src = {"type": "QUEST", "certainty": "MANUAL", "itemId": 238649, "needsReview": True}
    lua = gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "type = C.SOURCE_TYPE.QUEST," in lua
    assert "itemId = 238649," in lua


def test_unknown_ejected_but_vendor_still_emitted():
    # Mixing one UNKNOWN + one VENDOR: only the VENDOR survives generation.
    unknown = {"id": 16980, "name": "Rune Edge", "skillRequired": 250,
               "skillRange": {"orange": 250, "yellow": 260, "green": 270, "gray": 280},
               "reagents": [], "expansion": "SOD", "recipe_item": None,
               "source": {"type": "UNKNOWN", "certainty": "WOWHEAD"}}
    vendor = {"id": 99999, "name": "Vendor Plan", "skillRequired": 250,
              "skillRange": {"orange": 250, "yellow": 260, "green": 270, "gray": 280},
              "reagents": [], "expansion": "SOD", "recipe_item": None,
              "source": {"type": "VENDOR", "certainty": "CROSS", "itemId": 12826, "cost": 20000}}
    lua = gr.generate_lua([unknown, vendor], _PROF, expansion=1)
    assert "16980" not in lua
    assert "Rune Edge" not in lua
    assert "99999" in lua
    assert "Vendor Plan" in lua


# ---------------------------------------------------------------------------
# Dedup test: WotLK SkillLineAbility class-specific duplicate rows
# ---------------------------------------------------------------------------

def _make_extract_fixtures(spell_id: str, skill_line_id: int):
    """Return (data, indexes, verified_sources) for a single spell with two SkillLineAbility rows.

    The two rows are identical apart from ClassMask (one general, one DK-specific) -- the exact
    shape seen in the WotLK First Aid data (e.g. spell 3276 with ClassMask 1503 vs 32).
    """
    data = {
        "SkillLineAbility": [
            # General row (ClassMask 1503 = all classes except DK)
            {"SkillLine": str(skill_line_id), "Spell": spell_id, "ClassMask": "1503",
             "TrivialSkillLineRankLow": "80", "TrivialSkillLineRankHigh": "100"},
            # Death-Knight-specific row (ClassMask 32) -- the WotLK duplicate
            {"SkillLine": str(skill_line_id), "Spell": spell_id, "ClassMask": "32",
             "TrivialSkillLineRankLow": "80", "TrivialSkillLineRankHigh": "100"},
        ]
    }
    indexes = {
        "crafted_items": {},
        "spell_reagents": {spell_id: [("1251", 1)]},  # one reagent so it passes the reagent gate
        "spell_names": {spell_id: "Heavy Linen Bandage"},
        "item_names": {"1251": "Linen Cloth"},
        "item_details": {},
        "recipe_items": {},
        "trivial_ranks": {},
    }
    verified_sources = {
        spell_id: {
            "difficulty": {
                "orange": 1, "yellow": 80, "green": 95, "gray": 100,
                "certainty": "WOWHEAD",
            },
            "source": {"type": "TRAINER", "certainty": "WOWHEAD"},
        }
    }
    return data, indexes, verified_sources


def test_extract_recipes_deduplicates_class_specific_rows():
    # WHY: WotLK SkillLineAbility has a general row (ClassMask 1503) AND a Death-Knight-specific
    # row (ClassMask 32) for the same spell.  extract_recipes must emit exactly ONE recipe -- the
    # duplicate row must be skipped, not added a second time.
    spell_id = "3276"
    skill_line_id = 129  # First Aid
    data, indexes, verified_sources = _make_extract_fixtures(spell_id, skill_line_id)

    recipes, skipped = gr.extract_recipes(
        data, indexes, skill_line_id, verified_sources=verified_sources
    )

    assert len(recipes) == 1, (
        f"Expected 1 recipe after dedup; got {len(recipes)}.  "
        "Two SkillLineAbility rows for the same spell must produce exactly one recipe."
    )
