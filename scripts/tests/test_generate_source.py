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
    src = {"type": "STARTER", "certainty": "X"}
    with pytest.raises(ValueError) as excinfo:
        gr.generate_lua([_recipe(src)], _PROF, expansion=1)
    assert "16980" in str(excinfo.value)


def test_unknown_source_recipe_is_ejected_not_emitted():
    # UNKNOWN-source recipes (e.g. SoD-exclusive Tinkers/feasts not yet Wowhead-sourced)
    # are skipped during generation: no raise, and the recipe is absent from the Lua.
    unknown_src = {"type": "UNKNOWN", "certainty": "WOWHEAD"}
    lua = gr.generate_lua([_recipe(unknown_src)], _PROF, expansion=1)
    assert "16980" not in lua
    assert "Rune Edge" not in lua


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
