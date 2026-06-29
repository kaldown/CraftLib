import json
import generate_recipes as gr
from tests.conftest import FIXTURES


def _recipe():
    src = json.loads((FIXTURES / "Tailoring.sources.json").read_text())
    r = src["recipes"]["2385"]
    return {
        "id": 2385, "name": "Brown Linen Vest", "skillRequired": 10,
        "skillRange": r["difficulty"], "reagents": [],
        "expansion": "SOD", "recipe_item": None,
        "source": r["source"],
    }


def test_generate_lua_emits_flavor_and_sod_milestones():
    prof = {"key": "tailoring", "name": "Tailoring", "constant": "TAILORING"}
    lua = gr.generate_lua([_recipe()], prof, expansion=1, flavor="sod")
    assert 'profile = "SOD",' in lua
    assert "milestones = { 75, 150, 225, 300 }," in lua
    assert "expansion = C.EXPANSION.SOD," in lua
    assert "-- Data/SoD/Tailoring/Recipes.lua" in lua


def test_trivial_ranks_index_built_from_skilllineability():
    data = {"SkillLineAbility": [
        {"Spell": "2385", "SkillLine": "197",
         "TrivialSkillLineRankLow": "45", "TrivialSkillLineRankHigh": "70"},
    ]}
    idx = gr.build_trivial_ranks(data)
    assert idx["2385"] == (45, 70)
