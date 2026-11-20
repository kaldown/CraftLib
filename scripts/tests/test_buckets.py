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
    assert list(BUCKETS) == ["vanilla", "tbc", "wotlk", "sod"]


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
    with pytest.raises(UnknownBucketError, match="vanilla, tbc, wotlk, sod"):
        get_bucket("forever")


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
    for argv in (["--bucket", "forever"], []):
        with pytest.raises(SystemExit):
            p.parse_args(argv)


@pytest.mark.parametrize("change", [
    {"enrich": "wiki"},
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
    assert r.stdout == "vanilla tbc wotlk sod\n"
