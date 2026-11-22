"""wowhead_guide: Wowhead guide markup -> per-spell and per-item facts.

Fixtures are small hand-made markup in the shape of the pages measured on 2026-11-22: the
body is a JSON string passed to WH.markup.printHtml, tables are [table][tr][td] markup.
"""
import json

import pytest

import wowhead_guide as wg
from forever_resolve import GuideFacts

PAGE = "guide/professions/tailoring-overview"


def html(*bodies):
    scripts = "".join(f"<script>WH.markup.printHtml({json.dumps(b)}, \"guide-body\", {{}});"
                      f"</script>" for b in bodies)
    return f"<html><head><title>x</title></head><body>{scripts}</body></html>"


def table(header, *rows):
    def tr(cells, bold=False):
        cells = [f"[b]{c}[/b]" if bold else c for c in cells]
        return "[tr]" + "".join(f"[td]{c}[/td]" for c in cells) + "[/tr]"
    return ("[center][table class=grid width=75%]\r\n" + tr(header, bold=True) + "\r\n"
            + "\r\n".join(tr(r) for r in rows) + "\r\n[/table][/center]")


RECIPE_HEAD = ["Recipe", "Crafted Item", "Type", "Source", "Skill Level", "Materials"]


def recipe_row(spell, source, skill, creates="[item=5001]"):
    return [f"[spell={spell}]", creates, "Cloth", source, str(skill), "2x [item=2589]"]


def parse(*bodies, page=PAGE):
    return wg.parse_page(html(*bodies), page)


# --- markup -------------------------------------------------------------------------

def test_bodies_are_the_json_strings_of_print_html():
    text = html("first [b]body[/b]", "second \"quoted\" body")
    assert wg.markup_bodies(text) == ["first [b]body[/b]", 'second "quoted" body']


def test_page_without_markup_has_no_bodies():
    assert wg.markup_bodies("<html>WH.markup.printHtml(notAString)</html>") == []


# --- the source cell ----------------------------------------------------------------

@pytest.mark.parametrize("cell, kind", [
    ("Trainer", "TRAINER"),
    ("[b]Trainer[/b] [item=254004]", "TRAINER"),
    ("Special Trainer: [npc=249713] / [npc=1937]", "SPECIAL_TRAINER"),
    ("Learned automatically", "STARTER"),
    ("Drop: [npc=2007], [npc=3128]", "DROP"),
    ("[item=11612] World Drop, Fishing", "DROP"),
    ("[item=11612] Dungeon Boss Drop", "DROP"),
    ("Vendor: 45 Merchant\u2019s Favor", "VENDOR"),
    ("[item=6002] Vendor", "VENDOR"),
    ("Quest: [quest=92553] (Zephras Isle)", "QUEST"),
    ("[item=251368] [currency=3402 amount=30]", "VENDOR"),
    ("Unlock: Azeroth Commerce Friendly Vendor: 120 Merchant's Favor", "VENDOR"),
    ("Unknown", None),
    ("", None),
    ("[item=11612] Armorsmith only", None),
    ("[item=11612] [npc=5411], Zephras Isle", None),
    ("Contained in: [object=694054] (Deadwind Pass)", None),
    ("[item=11612] Backdrop Painter, Stormwind", None),     # "drop" inside a word
    # Several source keywords: alternatives, not one claim.
    ("Quest: [quest=92754] Vendor: [npc=253139] - 15 [item=254432]", None),
    ("Drop: [npc=1] or Vendor: 45 Merchant's Favor", None),
    ("Trainer or Drop: [npc=1]", None),
])
def test_source_kind(cell, kind):
    assert wg.parse_source(cell)["kind"] == kind


@pytest.mark.parametrize("cell, amount", [
    ("[item=251368] [currency=3402 amount=30]", 30),
    ("Vendor: 45 Merchant\u2019s Favor", 45),
    ("Vendor: 45 Merchant's Favor", 45),
    ("Vendor: 1,200 Merchant's Favor", 1200),
    ("[item=249476]\r\n45 [currency=3402]", 45),
    ("[item=249476] 45 [currency=1]", None),
    ("[currency=3402 amount=30] or [currency=3402 amount=30]", 30),
    ("[currency=3402 amount=30] or 45 Merchant's Favor", None),    # two prices: none is used
    ("[currency=1 amount=30]", None),                              # another currency
    ("[currency=3402 amount=0]", None),
    ("Trainer", None),
])
def test_source_currency(cell, amount):
    assert wg.parse_source(cell)["currency"] == amount


def test_source_keeps_ids_only():
    src = wg.parse_source("[item=11612] [color=q3]Mishta[/color] [npc=15179], Silithus "
                          "[item=11612]")
    assert src == {"kind": None, "items": [11612], "npcs": [15179], "currency": None}


# --- tables -------------------------------------------------------------------------

def test_recipe_table_rows_are_keyed_by_spell():
    facts = parse(table(RECIPE_HEAD,
                        recipe_row(1001, "Trainer", 40),
                        recipe_row(1002, "[item=6002] [currency=3402 amount=30]", 15,
                                   creates="[item=5002] (2)"),
                        recipe_row(1003, "Unknown", 35, creates="-")))
    assert facts.spells == {
        "1001": [{"skill": 40, "kind": "TRAINER", "items": [], "npcs": [], "currency": None,
                  "creates": 5001, "page": PAGE}],
        "1002": [{"skill": 15, "kind": "VENDOR", "items": [6002], "npcs": [], "currency": 30,
                  "creates": 5002, "page": PAGE}],
        "1003": [{"skill": 35, "kind": None, "items": [], "npcs": [], "currency": None,
                  "creates": None, "page": PAGE}],
    }
    assert facts.report.tables == {"recipe": 1} and facts.report.rows == 3


def test_minimum_skill_table_is_keyed_by_spell_too():
    facts = parse(table(["Item", "Minimum Skill Level", "Source"],
                        ["[spell=1306126]", "300", "Trainer"],
                        ["[spell=1262975]", "140", "Drop: [npc=260326] (Wetlands)"],
                        ["Plain text item", "10", "Trainer"]))
    assert facts.spells["1306126"][0]["skill"] == 300
    assert facts.spells["1262975"][0] == {"skill": 140, "kind": "DROP", "items": [],
                                          "npcs": [260326], "currency": None,
                                          "creates": None, "page": PAGE}
    assert facts.report.skipped == {"no [spell=id] in the row": 1}


def test_commerce_table_is_keyed_by_recipe_item_with_the_tab_vendor():
    body = ("[tabs name=professionvendors]\r\n[tab name=Enchanting]\r\n"
            "[b]Sold by:[/b] [npc=256732] /way #44 11.2, 71.6\r\n"
            + table(["Item", "Skill Required", "Cost"],
                    ["[item=249532]", "300", "240"], ["Enchanting Certification", "1", "5"])
            + "\r\n[/tab]\r\n[tab name=Alchemy]\r\n[b]Sold by:[/b] [npc=256729], /way\r\n"
            + table(["Item", "Skill Required", "Cost (Merchant's Favor)", "Title"],
                    ["[item=271621]", "300", "1,000", "the Alchemist"]) + "[/tab][/tabs]")
    facts = parse(body)
    assert facts.items == {
        "249532": [{"skill": 300, "kind": "VENDOR", "items": [249532], "npcs": [256732],
                    "currency": 240, "creates": None, "page": PAGE}],
        "271621": [{"skill": 300, "kind": "VENDOR", "items": [271621], "npcs": [256729],
                    "currency": 1000, "creates": None, "page": PAGE}],
    }
    assert facts.report.skipped == {"no [item=id] in the row": 1}
    assert facts.report.tables == {"commerce": 2}


def test_vendor_list_table_carries_no_currency():
    facts = parse(table(["Recipe", "Cooking Lvl", "Vendor", "Location", "Coordinates"],
                        ["[item=6325]", "1", "[npc=5494] [npc=3029]", "Stormwind", "/way 1 2"]))
    assert facts.items == {"6325": [{"skill": 1, "kind": "VENDOR", "items": [6325],
                                     "npcs": [5494, 3029], "currency": None,
                                     "creates": None, "page": PAGE}]}


def test_smelt_table_keeps_the_four_colours():
    colours = ("[b][color=skill-orange]-[/color] [color=skill-yellow]-[/color] "
               "[color=skill-green]65[/color] [color=skill-gray]75[/color][/b]")
    facts = parse(table(["Smelt", "Level Required", "Materials", "Creates"],
                        ["\r\n[spell=3304]\r\n", colours, "[item=2771] x1", "[item=3576] x1"]))
    assert facts.smelts == {"3304": {"orange": None, "yellow": None, "green": 65, "gray": 75,
                                     "creates": 3576, "page": PAGE}}


def test_known_other_tables_are_ignored_and_new_ones_reported():
    facts = parse(table(["Trainer", "Location", "Waypoint"], ["[npc=1]", "Here", "/way 1 1"]),
                  table(["Recipe", "Rank", "Mystery"], ["[spell=1001]", "1", "?"]))
    assert facts.spells == {} and facts.items == {}
    assert facts.report.unknown_headers == {"recipe | rank | mystery": 1}
    assert facts.report.tables == {"ignored": 1}


def test_short_and_unreadable_rows_are_counted_not_dropped_silently():
    facts = parse(table(RECIPE_HEAD,
                        ["[spell=1001]", "[item=5001]"],                    # too few cells
                        recipe_row(1002, "Trainer", "about 40"),            # no number
                        recipe_row(1003, "Trainer", 40)))
    assert list(facts.spells) == ["1002", "1003"]
    assert facts.spells["1002"][0]["skill"] is None
    assert facts.report.skipped == {"fewer cells than the header": 1}


def test_challenge_page_is_refused():
    with pytest.raises(wg.GuideError, match="challenge"):
        wg.parse_page("<script>window.gokuProps = {}</script>", PAGE)


def test_page_without_any_table_is_refused():
    # A guide whose format changed must not read as "this page has no recipes".
    with pytest.raises(wg.GuideError, match="no markup table"):
        wg.parse_page(html("just prose"), PAGE)


# --- the facts document -------------------------------------------------------------

def _facts(page, **kw):
    return wg.parse_page(html(*kw.pop("bodies")), page)


def test_build_doc_merges_pages_and_is_sorted():
    a = wg.parse_page(html(table(RECIPE_HEAD, recipe_row(1002, "Trainer", 40))), "guide/a")
    b = wg.parse_page(html(table(RECIPE_HEAD, recipe_row(1001, "Trainer", 10),
                                 recipe_row(1002, "Trainer", 45))), "guide/b")
    doc = wg.build_doc({"guide/a": (a, "2026-11-22"), "guide/b": (b, "2026-11-21")}, None)
    assert list(doc["spells"]) == ["1001", "1002"]
    assert [r["page"] for r in doc["spells"]["1002"]] == ["guide/a", "guide/b"]
    assert doc["pages"] == {"guide/a": {"fetched": "2026-11-22", "rows": 1},
                            "guide/b": {"fetched": "2026-11-21", "rows": 2}}


def test_build_doc_keeps_the_stored_rows_of_a_page_that_could_not_be_read():
    a = wg.parse_page(html(table(RECIPE_HEAD, recipe_row(1001, "Trainer", 10))), "guide/a")
    b = wg.parse_page(html(table(RECIPE_HEAD, recipe_row(1002, "Trainer", 45))), "guide/b")
    first = wg.build_doc({"guide/a": (a, "2026-11-22"), "guide/b": (b, "2026-11-22")}, None)
    a2 = wg.parse_page(html(table(RECIPE_HEAD, recipe_row(1001, "Trainer", 20))), "guide/a")
    second = wg.build_doc({"guide/a": (a2, "2026-11-23"), "guide/b": None}, first)
    assert second["spells"]["1001"][0]["skill"] == 20          # re-read page replaced
    assert second["spells"]["1002"] == first["spells"]["1002"]  # unread page kept
    assert second["pages"]["guide/b"] == first["pages"]["guide/b"]


def test_build_doc_drops_pages_no_longer_in_the_registry():
    a = wg.parse_page(html(table(RECIPE_HEAD, recipe_row(1001, "Trainer", 10))), "guide/a")
    first = wg.build_doc({"guide/a": (a, "2026-11-22")}, None)
    second = wg.build_doc({}, first)
    assert second["spells"] == {} and second["pages"] == {}


def test_load_facts_rejects_another_shape(tmp_path):
    path = tmp_path / "guide_facts.json"
    path.write_text(json.dumps({"spells": []}), encoding="utf-8")
    with pytest.raises(ValueError, match="guide facts"):
        wg.load_facts(path)
    assert wg.load_facts(tmp_path / "absent.json") is None


# --- reduction to what the resolver reads -------------------------------------------

def row(**kw):
    base = {"skill": None, "kind": None, "items": [], "npcs": [], "currency": None,
            "creates": None, "page": PAGE}
    base.update(kw)
    return base


def test_reduce_one_row():
    assert wg.reduce_rows([row(skill=40, kind="TRAINER", creates=5001)]) == GuideFacts(
        skill=40, kind="TRAINER", currency=None, items=(), creates=5001, notes=())


def test_reduce_combines_a_spell_row_and_its_commerce_row():
    facts = wg.reduce_rows([row(skill=15, items=[6002], creates=5002),
                            row(skill=15, kind="VENDOR", items=[6002], currency=30)])
    assert facts == GuideFacts(skill=15, kind="VENDOR", currency=30, items=(6002,),
                               creates=5002, notes=())


def test_reduce_drops_only_the_fields_rows_disagree_on():
    facts = wg.reduce_rows([row(skill=40, kind="TRAINER", creates=5001),
                            row(skill=60, kind="TRAINER", creates=5001)])
    assert (facts.skill, facts.kind, facts.creates) == (None, "TRAINER", 5001)
    assert facts.notes == ("guide rows disagree on skill: 40, 60",)


def test_reduce_reports_each_disagreement():
    facts = wg.reduce_rows([row(skill=40, kind="DROP", currency=30, creates=5001),
                            row(skill=40, kind="VENDOR", currency=45, creates=5002)])
    assert (facts.skill, facts.kind, facts.currency, facts.creates) == (40, None, None, None)
    assert facts.notes == ("guide rows disagree on source: DROP, VENDOR",
                           "guide rows disagree on price: 30, 45",
                           "guide rows disagree on created item: 5001, 5002")


def test_reduce_trainer_and_special_trainer_agree_on_the_stronger_wording():
    facts = wg.reduce_rows([row(kind="TRAINER"), row(kind="SPECIAL_TRAINER")])
    assert facts.kind == "SPECIAL_TRAINER" and facts.notes == ()


def test_reduce_smelt_colours_give_the_first_number_as_the_skill():
    smelt = {"orange": None, "yellow": None, "green": 65, "gray": 75, "creates": 3576,
             "page": PAGE}
    assert wg.reduce_rows([], smelt) == GuideFacts(skill=65, creates=3576)
    both = wg.reduce_rows([row(skill=65, kind="TRAINER")], smelt)
    assert (both.skill, both.kind, both.notes) == (65, "TRAINER", ())


def test_reduce_nothing_is_none():
    assert wg.reduce_rows([]) is None


def test_facts_for_joins_item_rows_through_the_given_items():
    doc = {"spells": {"1002": [row(skill=15, items=[6002], creates=5002)]},
           "items": {"6002": [row(skill=15, kind="VENDOR", items=[6002], currency=30)],
                     "7777": [row(skill=99, kind="VENDOR", items=[7777], currency=1)]},
           "smelts": {}, "pages": {}}
    assert wg.facts_for(doc, "1002", ["6002"]).currency == 30
    assert wg.facts_for(doc, "1002", []).currency is None
    assert wg.facts_for(doc, "1004", ["6002"]).currency == 30    # item rows alone count
    assert wg.facts_for(doc, "1004", []) is None
    assert wg.facts_for(None, "1002", ["6002"]) is None


def test_skills_for_lists_every_number_the_rows_give():
    doc = {"spells": {"1002": [row(skill=15), row(skill=None), row(skill=20)]},
           "items": {"6002": [row(skill=10, kind="VENDOR")]},
           "smelts": {"1002": {"orange": None, "yellow": 30, "green": 40, "gray": 50,
                               "creates": None, "page": PAGE}}, "pages": {}}
    assert sorted(wg.skills_for(doc, "1002", ["6002"])) == [10, 15, 20, 30]
    assert wg.skills_for(doc, "1004", []) == [] and wg.skills_for(None, "1002", []) == []


def test_cell_with_two_prices_is_marked_and_reduces_to_an_unsettled_price():
    src = wg.parse_source("[item=6002] [currency=3402 amount=30] or 45 Merchant's Favor")
    assert src["currency"] is None and src["unsettledPrice"] is True
    facts = parse(table(RECIPE_HEAD, recipe_row(
        1002, "[item=6002] [currency=3402 amount=30] or 45 Merchant's Favor", 15)))
    stored = facts.spells["1002"][0]
    assert stored["unsettledPrice"] is True and stored["currency"] is None
    reduced = wg.reduce_rows([stored])
    assert reduced.currency is None and reduced.currency_unsettled is True


def test_rows_disagreeing_on_the_price_reduce_to_an_unsettled_price():
    reduced = wg.reduce_rows([row(kind="VENDOR", currency=30), row(kind="VENDOR", currency=45)])
    assert (reduced.currency, reduced.currency_unsettled) == (None, True)
    settled = wg.reduce_rows([row(kind="VENDOR", currency=30), row(kind="VENDOR")])
    assert (settled.currency, settled.currency_unsettled) == (30, False)
    assert wg.reduce_rows([row(kind="VENDOR")]).currency_unsettled is False


def test_ordinary_rows_carry_no_extra_keys_and_several_sources_are_reported():
    facts = parse(table(RECIPE_HEAD, recipe_row(1001, "Trainer", 10),
                        recipe_row(1002, "Quest: [quest=1] Vendor: [npc=2]", 15)))
    assert set(facts.spells["1001"][0]) == {"skill", "kind", "items", "npcs", "currency",
                                            "creates", "page"}
    assert facts.spells["1002"][0]["kind"] is None
    assert facts.report.unread_sources == {"several sources in one cell": 1}
