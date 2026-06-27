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
