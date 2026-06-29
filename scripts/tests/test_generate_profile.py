import importlib.util, pathlib
spec = importlib.util.spec_from_file_location(
    "gen", pathlib.Path(__file__).resolve().parents[1] / "generate_recipes.py")
gen = importlib.util.module_from_spec(spec); spec.loader.exec_module(gen)

PROF = {"key": "tailoring", "name": "Tailoring", "constant": "TAILORING"}
def _recipe(skill, exp):
    return {"id": 1, "name": "X", "skillRequired": skill,
            "skillRange": {"orange": skill, "yellow": skill, "green": skill, "gray": skill},
            "reagents": [], "expansion": exp,
            "source": {"type": "TRAINER", "certainty": "WOWHEAD"}}

def test_wotlk_profile_tag_and_milestones():
    lua = gen.generate_lua([_recipe(450, "WOTLK")], PROF, 3)
    assert 'profile = "WOTLK"' in lua
    assert "{ 75, 150, 225, 300, 375, 450 }" in lua

def test_vanilla_profile_tag_and_cap():
    lua = gen.generate_lua([_recipe(300, "VANILLA")], PROF, 1)
    assert 'profile = "VANILLA"' in lua
    assert "{ 75, 150, 225, 300 }" in lua

def test_sod_still_tags_sod():
    lua = gen.generate_lua([_recipe(300, "SOD")], PROF, 1, flavor="sod")
    assert 'profile = "SOD"' in lua
