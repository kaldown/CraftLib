import io
import json

import pytest

import wiki
from wiki import WikiError, classify_source, fetch_wikitext, index_rows, normalize, parse_rows

FIVE = """{|class="darktable"
|+ Apprentice alchemy recipes
|-
! Item !! Skill !! Type !! New? !! Source
|-
| [[Elixir of Minor Defense#Forever]] || 1 || Elixir || Old || Automatic
|-
| [[Lesser Arcane Elixir (Forever)]] || 120 || Elixir || {{text|uncommon|NEW}} || {{cost|mfvr=45}}
|-
| [[Elixir of Greater Spirit]] || 165 || Elixir || {{text|uncommon|NEW}} || {{text|friendly|Friendly}}; {{cost|mfvr=120}}
|-
| [[Flask of Natural Accuracy]] || 300 || Flask || {{text|uncommon|NEW}} || ?
|-
| [[Elixir of Minor Spirit]] || 15 || Elixir || Old || Drop; [[Rath'mael]]
|-
| [[Elixir A]] || 20 || Elixir || Old || Special trainer
|-
| [[Elixir B]] || 25 || Elixir || Old || Crafted
|}
"""
FOUR = """{|
! Item !! Skill !! New? !! Source
|-
| [[Winter Veil Egg Nog#Classic]] || 35 || Old || Vendor
|-
| [[Odd Dish]] || 40 || Old || {{cost|mfvr=30}}
|}
"""
ORE = """{|
! Ore !! colspan=4 class=unsortable | Skills !! Stone !! Other
|-
| [[Copper Vein]] || 1 || 2 || 3 || 4 || x || y
|}
"""


def test_five_column_rows():
    rows = parse_rows(FIVE)
    assert [r.kind for r in rows] == [
        "STARTER", "VENDOR", "VENDOR", "UNKNOWN", "DROP", "SPECIAL_TRAINER", "CRAFTED"]
    r = rows[0]
    assert (r.key, r.skill) == ("elixir of minor defense", 1)
    assert rows[1].key == "lesser arcane elixir" and rows[1].currency == 45
    assert rows[1].display == "lesser arcane elixir"
    assert rows[2].currency == 120 and rows[2].rep_level == "Friendly"
    assert rows[0].line_no == 6


def test_four_column_and_cost_only():
    rows = parse_rows(FOUR)
    assert rows[0].key == "winter veil egg nog" and rows[0].kind == "VENDOR"
    assert rows[1].kind == "VENDOR" and rows[1].currency == 30


def test_ore_table_skipped():
    assert parse_rows(ORE) == []


def test_classify_other_and_trainer():
    assert classify_source("Trainer")[0] == "TRAINER"
    assert classify_source("")[0] == "UNKNOWN"
    assert classify_source("Somewhere else")[0] == "OTHER"


def test_normalize():
    assert normalize("[[Kaldorei Spider Kabob]]") == "kaldorei spider kabob"
    assert normalize("Gnomish ’Ham’  Radio") == "gnomish 'ham' radio"
    assert normalize("[[Target|Shown (Item)]]") == "target"


def test_index_rows_by_key_and_display():
    rows = parse_rows("{|\n! Item !! Skill !! Source\n|-\n| [[A|B]] || 1 || Vendor\n|}\n")
    idx = index_rows(rows)
    assert idx["a"] == idx["b"] == [rows[0]]


class FakeResp(io.BytesIO):
    def __enter__(self):
        return self

    def __exit__(self, *a):
        return False


def test_fetch_cached_no_network(tmp_path):
    (tmp_path / "Forever_alchemy_recipes.wikitext").write_text("cached", encoding="utf-8")

    def boom(*a, **k):
        raise AssertionError("network")
    assert fetch_wikitext("Forever alchemy recipes", tmp_path, opener=boom) == "cached"


def test_fetch_offline_missing(tmp_path):
    with pytest.raises(WikiError, match="Forever x"):
        fetch_wikitext("Forever x", tmp_path, offline=True)


def test_fetch_api_error(tmp_path):
    op = lambda req, **k: FakeResp(json.dumps({"error": {"code": "missingtitle"}}).encode())
    with pytest.raises(WikiError, match="missingtitle"):
        fetch_wikitext("Nope", tmp_path, opener=op, sleep=lambda s: None)


def test_fetch_success_writes_cache_and_sleeps(tmp_path):
    seen, slept = [], []

    def op(req, **k):
        seen.append(req)
        return FakeResp(json.dumps({"parse": {"wikitext": {"*": "hello"}}}).encode())
    out = fetch_wikitext("Forever x y", tmp_path / "c", opener=op, sleep=slept.append)
    assert out == "hello"
    assert (tmp_path / "c" / "Forever_x_y.wikitext").read_text(encoding="utf-8") == "hello"
    assert slept == [3.0]
    assert seen[0].get_header("User-agent") == "data-pipeline/1.0"
    assert "action=parse" in seen[0].full_url and "redirects=1" in seen[0].full_url
