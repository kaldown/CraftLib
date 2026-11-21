"""Import of the owner's /lpprobe reports into tracked in-game captures (plan R8)."""
import json

import pytest

import import_probe
from buckets import get_bucket
from forever_resolve import IngameFacts
from import_probe import ingame_facts, merge_into, parse_report

BASE_KEYS = ("professionID={pid} professionName={name} skillLevel={lvl} maxSkillLevel={mx} "
             "skillModifier=0 parentProfessionID={parent} expansionName={exp}")


def kvline(pid, name, lvl, mx, parent, exp):
    return BASE_KEYS.format(pid=pid, name=name, lvl=lvl, mx=mx, parent=parent, exp=exp)


REPORT = "\n".join([
    "LPProbe report 2026-11-21 18:30",
    "",
    "== client ==",
    "build 1.60.1 71037 Nov 12 2026 interface=16001",
    "",
    "== profession window ==",
    # Tailoring base line; the child line is empty (professionID 0) like the probe prints it.
    "base: " + kvline(197, "Tailoring", 152, 225, "nil", "Classic Tailoring"),
    "child: " + kvline(0, "nil", "nil", "nil", "nil", "nil"),
    "ready true linked false showLearned true showUnlearned true onlyMakeable false onlySkillUp false",
    "recipes all=3 filtered(visible)=3",
    "format: id | name | learned | difficulty | skillUps | canSkillUp | sourceType | maxTrivial | flags | output+reagents | requirements | source text (unlearned)",
    "2963 | Linen Bandage | true | Trivial | 0 | false | 1 | 75 |  | out=1251x1-1 reag=2589x1 |  | ",
    "3915 | Brown Linen Vest | true | Medium | 1 | true | 1 | 100 |  | out=2575x1-1 reag=2996x3 |  | ",
    "12045 | Simple Linen Boots | false | Easy | 1 | true | 1 | 95 |  | out=0x1-1 reag=2996x2 | Tailoring:true | Drop: Defias Pillager",
    "",
    "== merchant ==",
    "npc Tharynn Bouden guid Creature-0-1-2-3-4-5 filter 1",
    "items 2 format: index | itemID | name | price(copper) | stack | available | extendedCost | currencyID | cost items",
    "1 | 2996 | Bolt of Linen Cloth | 250 | 1 | -1 | false | nil | ",
    "2 | 4291 | Silken Thread | nil | 1 | -1 | true | 1001 | 2x [Merchant's Favor] (Merchant's Favor)",
    "",
    "== trainer ==",
    "npc Georgio Bolero isTradeskillTrainer true filters available/unavailable/used true true false",
    "rank values (rank, max, modifier) 152 225 0",
    "services 3 format: index | name | type | subText | reqLevel | skill req (name rank met) | cost | link",
    "1 | Linen Cloak | available |  | 5 | Tailoring 35 true | 100 | Linen Cloak<item:2570>",
    "4 | Mystery Pattern | available |  | 5 | Tailoring 50 true | nil | nil",
    "2 | Apprentice Tailoring | available |  | 1 | nil nil nil | 10 | nil",
    "3 | Heavy Linen Bandage | available |  | 1 | First Aid 40 true | 150 | nil",
    "",
    "== currencies ==",
    "currency Merchant's Favor qty 12 id 1001",
    "currency Honor Points qty 0 id nil",
    "",
])


def test_parse_report():
    r = parse_report(REPORT)
    assert r.build == "1.60.1.71037"
    assert r.profession == {
        "skillLine": 197, "skillLevel": 152, "maxSkillLevel": 225, "skillModifier": 0,
        "base": {"professionID": 197, "professionName": "Tailoring", "skillLevel": 152,
                 "maxSkillLevel": 225, "skillModifier": 0, "parentProfessionID": None,
                 "expansionName": "Classic Tailoring"},
        "child": {"professionID": 0, "professionName": None, "skillLevel": None,
                  "maxSkillLevel": None, "skillModifier": 0, "parentProfessionID": None,
                  "expansionName": None},
    }
    assert r.recipes == {
        "2963": {"name": "Linen Bandage", "learned": True, "difficulty": "Trivial", "sourceText": ""},
        "3915": {"name": "Brown Linen Vest", "learned": True, "difficulty": "Medium", "sourceText": ""},
        "12045": {"name": "Simple Linen Boots", "learned": False, "difficulty": "Easy",
                  "sourceText": "Drop: Defias Pillager"},
    }
    assert r.trainer == [
        {"name": "Linen Cloak", "skillName": "Tailoring", "skill": 35, "cost": 100},
        {"name": "Mystery Pattern", "skillName": "Tailoring", "skill": 50, "cost": None},
        {"name": "Heavy Linen Bandage", "skillName": "First Aid", "skill": 40, "cost": 150},
    ]
    assert r.merchants == {"Tharynn Bouden": {"items": {
        "2996": {"name": "Bolt of Linen Cloth", "price": 250, "stack": 1,
                 "extendedCost": False, "costs": ""},
        "4291": {"name": "Silken Thread", "price": None, "stack": 1, "extendedCost": True,
                 "costs": "2x [Merchant's Favor] (Merchant's Favor)"},
    }}}
    assert r.currencies == {"Merchant's Favor": {"id": 1001}, "Honor Points": {"id": None}}


def test_child_line_wins_and_uses_parent_skill_line():
    text = "\n".join([
        "== profession window ==",
        "base: " + kvline(2800, "Tailoring", 10, 75, "nil", "Classic"),
        "child: " + kvline(2801, "Classic Tailoring", 152, 225, 197, "Classic"),
        "2963 | Linen Bandage | true | Trivial | 0 | false | 1 | 75 |  |  |  | ",
    ])
    p = parse_report(text).profession
    assert (p["skillLine"], p["skillLevel"], p["maxSkillLevel"]) == (197, 152, 225)
    assert p["base"]["professionID"] == 2800 and p["child"]["professionID"] == 2801


def test_child_without_parent_falls_back_to_its_own_id():
    text = "\n".join([
        "== profession window ==",
        "base: " + kvline(0, "nil", "nil", "nil", "nil", "nil"),
        "child: " + kvline(171, "Alchemy", 5, 75, "nil", "Classic"),
    ])
    assert parse_report(text).profession["skillLine"] == 171


def test_unrecognised_text_has_no_sections():
    r = parse_report("hello\nworld\n")
    assert not r.recognised
    assert parse_report(REPORT).recognised


def test_section_error_line_does_not_crash():
    r = parse_report("== trainer ==\nSECTION ERROR: boom\n")
    assert r.trainer == [] and r.recognised


@pytest.fixture
def bucket():
    return get_bucket("forever")


def load(path):
    return json.loads(path.read_text(encoding="utf-8"))


def test_merge_writes_profession_files(tmp_path, bucket):
    paths = merge_into(tmp_path, bucket, parse_report(REPORT))
    ingame = tmp_path / "Forever" / "ingame"
    names = {p.name for p in paths}
    assert names == {"Tailoring.json", "FirstAid.json", "Merchants.json", "Currencies.json"}
    assert all(p.parent == ingame for p in paths)
    t = load(ingame / "Tailoring.json")
    assert t["build"] == "1.60.1.71037"
    assert t["recipesCaptured"] == t["trainerCaptured"] == "2026-11-21"
    assert t["profession"]["skillLine"] == 197
    assert set(t["recipes"]) == {"2963", "3915", "12045"}
    assert t["trainer"] == {"linen cloak": {"skill": 35, "cost": 100},
                    "mystery pattern": {"skill": 50, "cost": None}}
    fa = load(ingame / "FirstAid.json")
    assert fa["trainer"] == {"heavy linen bandage": {"skill": 40, "cost": 150}}
    assert fa["recipes"] == {} and fa["profession"] is None
    m = load(ingame / "Merchants.json")
    assert m["Tharynn Bouden"]["captured"] == "2026-11-21"
    assert m["Tharynn Bouden"]["items"]["4291"]["extendedCost"] is True
    assert load(ingame / "Currencies.json")["Merchant's Favor"] == {"id": 1001}
    assert not list(ingame.glob("*.tmp"))


def test_trainer_only_reimport_keeps_recipes(tmp_path, bucket):
    merge_into(tmp_path, bucket, parse_report(REPORT))
    again = "\n".join([
        "== trainer ==",
        "services 1 format: x",
        "1 | Linen Belt | available |  | 5 | Tailoring 60 true | 200 | nil",
    ])
    paths = merge_into(tmp_path, bucket, parse_report(again))
    assert [p.name for p in paths] == ["Tailoring.json"]
    t = load(paths[0])
    assert set(t["recipes"]) == {"2963", "3915", "12045"}
    assert t["profession"]["skillLine"] == 197
    assert t["trainer"] == {"linen cloak": {"skill": 35, "cost": 100},
                            "mystery pattern": {"skill": 50, "cost": None},
                            "linen belt": {"skill": 60, "cost": 200}}


def test_new_recipe_capture_replaces_old(tmp_path, bucket):
    merge_into(tmp_path, bucket, parse_report(REPORT))
    newer = "\n".join([
        "== profession window ==",
        "base: " + kvline(197, "Tailoring", 160, 225, "nil", "Classic"),
        "5000 | Only Recipe | true | Easy | 1 | true | 1 | 90 |  |  |  | ",
    ])
    merge_into(tmp_path, bucket, parse_report(newer))
    t = load(tmp_path / "Forever" / "ingame" / "Tailoring.json")
    assert set(t["recipes"]) == {"5000"}
    assert t["profession"]["skillLevel"] == 160
    assert "linen cloak" in t["trainer"]


def test_merchants_merge_by_npc(tmp_path, bucket):
    merge_into(tmp_path, bucket, parse_report(REPORT))
    other = "\n".join([
        "== merchant ==",
        "npc Other Vendor guid x filter 1",
        "1 | 100 | Thing | 5 | 1 | -1 | false | nil | ",
    ])
    merge_into(tmp_path, bucket, parse_report(other))
    m = load(tmp_path / "Forever" / "ingame" / "Merchants.json")
    assert set(m) == {"Tharynn Bouden", "Other Vendor"}


def test_ingame_facts():
    cap = {"recipes": {"3915": {}}, "trainer": {"linen cloak": {"skill": 35, "cost": 100},
                                                "linen belt": {"skill": 60, "cost": None}}}
    assert ingame_facts(None, "3915", "Linen Cloak") is None
    assert ingame_facts(cap, "3915", "Linen Cloak") == IngameFacts(True, 35, 100, "linen cloak")
    assert ingame_facts(cap, "999", "Linen Belt") == IngameFacts(False, 60, None, "linen belt")
    assert ingame_facts(cap, "999", "Unknown Thing") == IngameFacts(False, None)
    empty = {"recipes": {}, "trainer": {}}
    assert ingame_facts(empty, "3915", "Linen Cloak") == IngameFacts(None, None)


def test_cli(tmp_path, capsys):
    f = tmp_path / "r.txt"
    f.write_text(REPORT, encoding="utf-8")
    src = tmp_path / "src"
    assert import_probe.main(["--bucket", "forever", "--input", str(f), "--sources-dir", str(src)]) == 0
    assert (src / "Forever" / "ingame" / "Tailoring.json").exists()
    f.write_text("nothing here\n", encoding="utf-8")
    assert import_probe.main(["--bucket", "forever", "--input", str(f), "--sources-dir", str(src)]) == 2


def window(*extra, all_n=1):
    return "\n".join([
        "== profession window ==",
        "base: " + kvline(197, "Tailoring", 160, 225, "nil", "Classic"),
        f"recipes all={all_n} filtered(visible)={all_n}",
        "5000 | Only Recipe | true | Easy | 1 | true | 1 | 90 |  |  |  | ",
        *extra,
    ])


def test_truncated_recipe_list_is_refused(tmp_path, bucket, capsys):
    for text, why in ((window("CAPPED at 6000 lines"), "CAPPED"),
                      (window("SECTION ERROR: boom"), "SECTION ERROR"),
                      (window(all_n=2), "all=2")):
        r = parse_report(text)
        assert why in r.recipe_error
        assert merge_into(tmp_path, bucket, r) == []
        assert why in capsys.readouterr().err
    assert not (tmp_path / "Forever" / "ingame" / "Tailoring.json").exists()
    assert parse_report(window()).recipe_error is None


def test_refused_recipes_still_import_other_sections(tmp_path):
    f = tmp_path / "r.txt"
    f.write_text(window("CAPPED at 6000 lines") + "\n\n== currencies ==\ncurrency Honor qty 1 id 7\n",
                 encoding="utf-8")
    src = tmp_path / "src"
    assert import_probe.main(["--bucket", "forever", "--input", str(f), "--sources-dir", str(src)]) == 2
    ingame = src / "Forever" / "ingame"
    assert (ingame / "Currencies.json").exists() and not (ingame / "Tailoring.json").exists()


def test_separate_stamps(tmp_path, bucket):
    merge_into(tmp_path, bucket, parse_report(REPORT))
    later = parse_report("LPProbe report 2026-12-01 10:00\n== trainer ==\n"
                         "1 | Linen Belt | available |  | 5 | Tailoring 60 true | 200 | nil\n")
    later.build = "9.9.9.9"
    t = load(merge_into(tmp_path, bucket, later)[0])
    assert (t["recipesCaptured"], t["trainerCaptured"]) == ("2026-11-21", "2026-12-01")
    assert t["build"] == "1.60.1.71037"


def test_skipped_trainer_skills_are_reported(tmp_path, bucket, capsys):
    r = parse_report("== trainer ==\n1 | Apprentice Riding | available |  | 1 | Riding 1 true | 40 | nil\n")
    assert merge_into(tmp_path, bucket, r) == []
    assert "Riding" in capsys.readouterr().err


def test_nil_merchant_name_is_null():
    r = parse_report("== merchant ==\nnpc V guid x filter 1\n1 | 5 | nil | 1 | 1 | -1 | false | nil | \n")
    assert r.merchants["V"]["items"]["5"]["name"] is None
