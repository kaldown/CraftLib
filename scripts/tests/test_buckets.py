import argparse
import dataclasses
import subprocess
import sys
from pathlib import Path

import pytest

from buckets import (BUCKETS, RegistryError, UnknownBucketError, UnknownProfessionError,
                     _validate_registry, add_bucket_argument, bucket_for_folder, get_bucket)

REPO = Path(__file__).resolve().parents[2]


def test_registry_keys_and_order():
    assert list(BUCKETS) == ["vanilla", "tbc", "wotlk", "sod", "forever"]


def test_registry_values():
    v, t, w, s = (get_bucket(k) for k in ("vanilla", "tbc", "wotlk", "sod"))
    assert [(b.profile, b.folder) for b in (v, t, w, s)] == [
        ("VANILLA", "Vanilla"), ("TBC", "TBC"), ("WOTLK", "WotLK"), ("SOD", "SoD")]
    assert [(b.product, b.build) for b in (v, t, w, s)] == [
        ("wow_classic_era", "1.15.8.67156"), ("wow_anniversary", "2.5.5.65895"),
        ("wow_classic", "3.4.5.63697"), ("wow_classic_era", "1.15.8.67156")]
    assert len(v.professions) == 9 and len(t.professions) == 10 and len(w.professions) == 11
    assert s.professions == v.professions and "Mining" in s.professions
    assert "Jewelcrafting" in t.professions and "Inscription" in w.professions
    assert v.milestones == (75, 150, 225, 300) == s.milestones
    assert t.milestones == (75, 150, 225, 300, 375)
    assert w.milestones[-1] == 450
    assert [b.fixed_expansion for b in (v, t, w, s)] == [None, None, None, "SOD"]
    assert [(b.enrich, b.wowhead_subdomain) for b in (v, t, w, s)] == [
        ("wowhead-listview", "classic"), ("wowhead-per-spell", "tbc"),
        ("wowhead-listview", "wotlk"), ("wowhead-listview", "classic")]
    assert [b.exclude_seasonal for b in (v, t, w, s)] == [True, False, False, False]
    assert [b.vendor_scope for b in (v, t, w, s)] == ["SOD", "DEFAULT", "DEFAULT", "SOD"]
    assert [b.reconcile_parent for b in (v, t, w, s)] == [None, None, None, "tbc"]
    assert [b.keep_trainer_file for b in (v, t, w, s)] == [None, None, None, "sod_keep_trainer.json"]
    assert [b.verify_trainers for b in (v, t, w, s)] == [False, False, False, True]
    assert [b.audit_hard for b in (v, t, w, s)] == [False, False, False, True]
    assert [b.removed_recipes for b in (v, t, w, s)] == [
        "removed_recipes.json", "removed_recipes.json", "removed_recipes.json", None]
    assert [b.canary_floor_reagents for b in (v, t, w, s)] == [0.95] * 4
    assert [b.canary_floor_teaching for b in (v, t, w, s)] == [0.03, 0.50, 0.45, 0.03]
    assert len(v.column_overrides) == 0


def test_get_bucket_unknown_raises_listing_known():
    with pytest.raises(UnknownBucketError, match="vanilla, tbc, wotlk, sod, forever"):
        get_bucket("nope")


def test_bucket_for_folder():
    assert bucket_for_folder("SoD").key == "sod"
    with pytest.raises(UnknownBucketError):
        bucket_for_folder("Cata")


def test_profession_spellings():
    for x in ("FirstAid", "firstaid", "First Aid", "firstAid"):
        assert get_bucket("tbc").profession(x).folder == "FirstAid"
    with pytest.raises(UnknownProfessionError, match="vanilla"):
        get_bucket("vanilla").profession("Jewelcrafting")


def test_add_bucket_argument_rejects_unknown_and_missing():
    p = argparse.ArgumentParser()
    add_bucket_argument(p)
    assert p.parse_args(["--bucket", "sod"]).bucket == "sod"
    for argv in (["--bucket", "nope"], []):
        with pytest.raises(SystemExit):
            p.parse_args(argv)


@pytest.mark.parametrize("change", [
    {"enrich": "wiki"},  # tbc has no wiki_pages
    {"review_policy": "maybe"},
    {"item_effect_join": "other"},
    {"cross_orange_bucket": "nope"},
    {"cross_orange_bucket": "tbc"},
    {"held_back": ("Jewelcrafting", "Fishing")},
    {"coverage_floor": 0.9},
    {"coverage_max_gap": 10},
    {"coverage_floor": 0.9, "coverage_max_gap": 10, "held_back": ("Inscription",)},
    {"coverage_floor": 1.5, "coverage_max_gap": 10},
    {"coverage_floor": 0.0, "coverage_max_gap": 10},
    {"professions": ("Fishing",)},
    {"reconcile_parent": "tbc"},
    {"milestones": (75, 75)},
    {"canary_floor_teaching": 0.0},
])
def test_registry_validation_rejects_bad_entries(change):
    bad = dataclasses.replace(get_bucket("tbc"), **change)
    with pytest.raises(RegistryError):
        _validate_registry({"tbc": bad})


def test_cli_keys():
    r = subprocess.run([sys.executable, "scripts/buckets.py", "keys"], cwd=REPO,
                       capture_output=True, text=True)
    assert r.stdout == "vanilla tbc wotlk sod forever\n"


def test_forever_entry_values():
    f = get_bucket("forever")
    assert (f.key, f.profile, f.folder, f.product, f.build) == (
        "forever", "FOREVER", "Forever", "wowf", "1.60.1.71037")
    assert f.professions == get_bucket("vanilla").professions
    assert f.milestones == (75, 150, 225, 300)
    assert (f.fixed_expansion, f.enrich, f.wowhead_subdomain) == ("FOREVER", "wiki", "forever")
    assert not f.exclude_seasonal and f.vendor_scope == "FOREVER"
    assert f.reconcile_parent is None and f.keep_trainer_file is None
    assert not f.verify_trainers and not f.audit_hard and f.removed_recipes is None
    assert (f.canary_floor_reagents, f.canary_floor_teaching) == (0.95, 0.60)
    assert dict(f.column_overrides) == {
        "ItemEffect": ("ID", "SpellID"),
        "ItemSparse": ("ID", "Display_lang", "BuyPrice", "SellPrice", "MinFactionID",
                       "MinReputation", "VendorStackCount", "RequiredSkillRank",
                       "RequiredSkill")}
    assert (f.item_effect_join, f.has_tools) == ("xitem", True)
    assert f.difficulty_certainties == ("INGAME", "DB2", "CROSS", "WIKI")
    assert (f.review_policy, f.allow_unknown_source, f.strict_difficulty) == ("exclude", True, True)
    assert not f.milestones_verified
    assert (f.coverage_floor, f.coverage_max_gap) == (0.90, 10)
    assert f.cross_orange_bucket == "vanilla" and f.held_back == ()
    assert f.vendor_explicit_scope and not f.shipped
    assert dict(f.wiki_pages) == {
        "FirstAid": "Forever first aid recipes",
        "Blacksmithing": "Forever blacksmithing plans",
        "Leatherworking": "Forever leatherworking patterns",
        "Alchemy": "Forever alchemy recipes",
        "Cooking": "Forever cooking recipes",
        "Mining": "Forever mining techniques",
        "Tailoring": "Forever tailoring patterns",
        "Engineering": "Forever engineering schematics",
        "Enchanting": "Forever enchanting formulas"}
    assert f.profession("first aid").skill_line == 129


def test_existing_buckets_keep_defaults():
    for k in ("vanilla", "tbc", "wotlk", "sod"):
        b = get_bucket(k)
        assert b.item_effect_join == "parent" and b.review_policy == "raise"
        assert not b.allow_unknown_source and b.shipped
        assert not b.has_tools and b.held_back == () and not b.wiki_pages


def test_registry_rejects_wiki_pages_for_professions_outside_the_bucket():
    # A page for a profession the bucket does not have is never fetched: a typo or a stale entry.
    forever = get_bucket("forever")
    bad = dataclasses.replace(forever, wiki_pages={**forever.wiki_pages,
                                                   "Jewelcrafting": "Forever jewelcrafting"})
    with pytest.raises(RegistryError, match="Jewelcrafting"):
        _validate_registry({"forever": bad, "vanilla": get_bucket("vanilla")})
