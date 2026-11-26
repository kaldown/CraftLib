"""recipe.specialization: the spell a recipe's teaching item requires, when that spell
belongs to the recipe's own profession line (a specialization such as Tribal
Leatherworking), "unknown" when the build has no data for the item.

Fixture: Tailoring (line 197). Fixture Vest (1002) is taught by 6002, Fixture Cloak (1003)
by 6003, Fixture Boots (1004) by 6004; Fixture Bolt (1001) has no teaching item. Spell
26798 sits in the Tailoring line like a specialization; 33388 is a riding skill in line 762.
"""
import dataclasses
import json
import shutil
import subprocess

import pytest

import buckets
import db2
import generate_recipes as gr
from tests.fixture_build import FIXTURE_VERSION, write_build, write_sources

MOONCLOTH, RIDING = 26798, 33388
ABILITIES = {MOONCLOTH: ("Mooncloth Tailoring", 197), RIDING: ("Apprentice Riding", 762)}
FACTS = "TBC/specialization_facts.json"


def _run(tmp_path, monkeypatch=None, *, facts=None, **build_kw):
    build_kw.setdefault("extra_abilities", ABILITIES)
    write_build(tmp_path / "art", **build_kw)
    src = write_sources(tmp_path / "src", "TBC")
    if facts is not None:
        monkeypatch.setitem(buckets.BUCKETS, "tbc", dataclasses.replace(
            buckets.BUCKETS["tbc"], specialization_facts=FACTS))
        (src / FACTS).write_text(json.dumps(facts), encoding="utf-8")
    rc = gr.main(["--bucket", "tbc", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
                  "--data-dir", str(tmp_path / "art"), "--sources-dir", str(src),
                  "--output-dir", str(tmp_path / "out")])
    path = tmp_path / "out" / "TBC" / "Tailoring" / "Recipes.lua"
    return rc, (path.read_text() if path.is_file() else "")


def _block(lua: str, spell: int) -> str:
    """The Lua block of one recipe (from its id line to the next recipe's comment)."""
    start = lua.index(f"        id = {spell},")
    end = lua.find("\n    -- ", start)
    return lua[start:end if end != -1 else len(lua)]


SPEC_LINE = '        specialization = { spellId = 26798, name = "Mooncloth Tailoring" },'


def test_spec_in_line_writes_field(tmp_path):
    rc, lua = _run(tmp_path, required_ability={6002: MOONCLOTH})
    assert rc == 0
    vest = _block(lua, 1002)
    assert SPEC_LINE in vest
    # Before the source, after the reagents: one fixed place in every recipe block.
    assert vest.index(SPEC_LINE) < vest.index("        source = {")
    assert "specialization" not in _block(lua, 1003)
    assert ('    specializations = { { spellId = 26798, name = "Mooncloth Tailoring" } },'
            in lua)
    if shutil.which("luac5.1"):
        f = tmp_path / "out" / "TBC" / "Tailoring" / "Recipes.lua"
        assert subprocess.run(["luac5.1", "-p", str(f)]).returncode == 0


def test_riding_requirement_ignored(tmp_path):
    rc, lua = _run(tmp_path, required_ability={6002: RIDING})
    assert rc == 0
    assert "specialization" not in lua


def test_zero_requirement_no_field(tmp_path):
    rc, lua = _run(tmp_path)
    assert rc == 0
    assert "specialization" not in lua


def test_no_teaching_item_no_field(tmp_path):
    # Fixture Bolt (1001) is a trainer recipe without a teaching item: the trainer gap.
    rc, lua = _run(tmp_path, required_ability={6002: MOONCLOTH})
    assert rc == 0
    assert "specialization" not in _block(lua, 1001)


def test_no_itemsparse_row_unknown(tmp_path):
    rc, lua = _run(tmp_path, omit_items=frozenset({6004}))
    assert rc == 0
    assert "        specialization = { unknown = true }," in _block(lua, 1004)
    # An unknown names no specialization of the profession.
    assert "specializations" not in lua


def test_fact_settles_unknown(tmp_path, monkeypatch):
    facts = {"_note": "test", "items": {"6004": {"spellId": MOONCLOTH, "evidence": "tooltip"}}}
    rc, lua = _run(tmp_path, monkeypatch, facts=facts, omit_items=frozenset({6004}))
    assert rc == 0
    assert SPEC_LINE in _block(lua, 1004)


def test_fact_of_none_settles_unknown(tmp_path, monkeypatch):
    facts = {"_note": "test", "items": {"6004": {"spellId": 0, "evidence": "tooltip"}}}
    rc, lua = _run(tmp_path, monkeypatch, facts=facts, omit_items=frozenset({6004}))
    assert rc == 0
    assert "specialization" not in _block(lua, 1004)


def test_fact_agreeing_with_build_warns(tmp_path, monkeypatch, capsys):
    facts = {"_note": "test", "items": {"6002": {"spellId": MOONCLOTH, "evidence": "tooltip"}}}
    rc, lua = _run(tmp_path, monkeypatch, facts=facts, required_ability={6002: MOONCLOTH})
    assert rc == 0
    assert SPEC_LINE in _block(lua, 1002)
    assert "specialization_facts.json item 6002 is no longer needed" in capsys.readouterr().err


# A GenerateError is a ValueError: main reports it naming the bucket and exits 2,
# before any file is written.
def _fails(capsys, rc, lua, *words):
    err = capsys.readouterr().err
    assert rc == 2 and lua == ""
    for w in words:
        assert w in err, err


def test_fact_contradicting_build_fails(tmp_path, monkeypatch, capsys):
    facts = {"_note": "test", "items": {"6002": {"spellId": 0, "evidence": "tooltip"}}}
    _fails(capsys, *_run(tmp_path, monkeypatch, facts=facts, required_ability={6002: MOONCLOTH}),
           "6002", "specialization_facts.json")


def test_fact_without_evidence_fails(tmp_path, monkeypatch, capsys):
    facts = {"_note": "test", "items": {"6004": {"spellId": MOONCLOTH}}}
    _fails(capsys, *_run(tmp_path, monkeypatch, facts=facts, omit_items=frozenset({6004})),
           "6004", "evidence")


def test_fact_naming_a_spell_outside_the_line_fails(tmp_path, monkeypatch, capsys):
    facts = {"_note": "test", "items": {"6004": {"spellId": RIDING, "evidence": "tooltip"}}}
    _fails(capsys, *_run(tmp_path, monkeypatch, facts=facts, omit_items=frozenset({6004})),
           "6004", "33388")


def test_spell_without_name_fails(tmp_path, capsys):
    _fails(capsys, *_run(tmp_path, required_ability={6002: MOONCLOTH},
                         omit_spell_names=frozenset({str(MOONCLOTH)})), "26798")


def test_itemsparse_contract_requires_required_ability(tmp_path):
    write_build(tmp_path / "art", omit_columns={"ItemSparse": {"RequiredAbility"}})
    with pytest.raises(db2.ColumnContractError, match="RequiredAbility"):
        db2.load_table(tmp_path / "art" / FIXTURE_VERSION, "ItemSparse", buckets.get_bucket("tbc"))
    assert "RequiredAbility" in db2.required_columns(buckets.get_bucket("forever"), "ItemSparse")


def test_profession_specializations_distinct_and_sorted():
    recipes = [{"specialization": {"spellId": 10660, "name": "Tribal Leatherworking"}},
               {"specialization": {"unknown": True}},
               {},
               {"specialization": {"spellId": 10656, "name": "Dragonscale Leatherworking"}},
               {"specialization": {"spellId": 10660, "name": "Tribal Leatherworking"}}]
    assert gr.profession_specializations(recipes) == [
        {"spellId": 10656, "name": "Dragonscale Leatherworking"},
        {"spellId": 10660, "name": "Tribal Leatherworking"}]


def test_named_facts_file_missing_exits_2(tmp_path, monkeypatch, capsys):
    monkeypatch.setitem(buckets.BUCKETS, "tbc", dataclasses.replace(
        buckets.BUCKETS["tbc"], specialization_facts=FACTS))
    rc, lua = _run(tmp_path)
    _fails(capsys, rc, lua, "specialization_facts.json", "not found")
