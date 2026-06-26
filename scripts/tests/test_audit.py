import json
import audit_sources as au


def _tree(tmp_path, flavor, prof, recipes):
    d = tmp_path / flavor
    d.mkdir(parents=True, exist_ok=True)
    (d / f"{prof}.json").write_text(json.dumps({"recipes": recipes}))


def test_sod_wowhead_mismatch_is_hard(tmp_path):
    """SoD recipe with a type/wowhead.source contradiction must land in hard."""
    _tree(tmp_path, "SoD", "Alchemy", {
        "99001": {"name": "Test Potion",
                  "source": {"type": "QUEST", "certainty": "WOWHEAD"},
                  "wowhead": {"source": [5]}}})
    hard, warn = au.audit(tmp_path)
    assert any(f[2] == "99001" and f[4] == "wowhead-mismatch" for f in hard)
    assert not any(f[2] == "99001" and f[4] == "wowhead-mismatch" for f in warn)


def test_tbc_wowhead_mismatch_is_warning(tmp_path):
    """TBC/DEFAULT recipe with a type/wowhead.source contradiction must land in warn, NOT hard."""
    _tree(tmp_path, "TBC", "Tailoring", {
        "19435": {"name": "Mooncloth Boots",
                  "source": {"type": "TRAINER", "certainty": "DB2"},
                  "wowhead": {"source": [4]}}})
    hard, warn = au.audit(tmp_path)
    assert not any(f[2] == "19435" and f[4] == "wowhead-mismatch" for f in hard)
    assert any(f[2] == "19435" and f[4] == "wowhead-mismatch" for f in warn)


def test_crafted_only_not_flagged(tmp_path):
    _tree(tmp_path, "TBC", "Alchemy", {
        "1": {"name": "X", "source": {"type": "VENDOR", "certainty": "MANUAL"},
              "wowhead": {"source": [1]}}})
    hard, warn = au.audit(tmp_path)
    assert hard == []


def test_cross_bucket_inconsistency(tmp_path):
    """SoD TRAINER vs TBC WOWHEAD non-trainer (not allowlisted) must be hard cross-bucket."""
    _tree(tmp_path, "TBC", "Leatherworking", {
        "2158": {"name": "Fine Leather Boots",
                 "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 2406},
                 "wowhead": {"creates": [2307, 1, 1]}}})
    _tree(tmp_path, "SoD", "Leatherworking", {
        "2158": {"name": "Fine Leather Boots",
                 "source": {"type": "TRAINER", "certainty": "DB2"},
                 "wowhead": {"creates": [2307, 1, 1]}}})
    hard, warn = au.audit(tmp_path)
    assert any(f[2] == "2158" and f[4] == "cross-bucket" for f in hard)


def test_allowlisted_cross_bucket_skipped(tmp_path):
    """SoD TRAINER vs TBC WOWHEAD non-trainer, but spell is in sod_keep_trainer.json,
    must NOT appear in hard."""
    _tree(tmp_path, "TBC", "Leatherworking", {
        "2158": {"name": "Fine Leather Boots",
                 "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 2406},
                 "wowhead": {"creates": [2307, 1, 1]}}})
    _tree(tmp_path, "SoD", "Leatherworking", {
        "2158": {"name": "Fine Leather Boots",
                 "source": {"type": "TRAINER", "certainty": "DB2"},
                 "wowhead": {"creates": [2307, 1, 1]}}})
    # Write the allowlist at the sources_dir root (one level, not picked up as a bucket)
    (tmp_path / "sod_keep_trainer.json").write_text(json.dumps({"keepTrainer": ["2158"]}))
    hard, warn = au.audit(tmp_path)
    assert not any(f[2] == "2158" and f[4] == "cross-bucket" for f in hard)


def test_needs_review_is_warning_not_hard(tmp_path):
    _tree(tmp_path, "SoD", "Cooking", {
        "5": {"name": "Z", "source": {"type": "TRAINER", "certainty": "WOWHEAD",
              "needsReview": True}}})
    hard, warn = au.audit(tmp_path)
    assert hard == []
    assert any(f[2] == "5" for f in warn)


def test_cross_bucket_manual_vendor_is_hard(tmp_path):
    _tree(tmp_path, "TBC", "Blacksmithing", {"16980": {"name": "Rune Edge",
        "source": {"type": "VENDOR", "certainty": "MANUAL", "itemId": 12826, "cost": 20000},
        "wowhead": {"creates": [12779, 1, 1]}}})
    _tree(tmp_path, "SoD", "Blacksmithing", {"16980": {"name": "Rune Edge",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [12779, 1, 1]}}})
    hard, warn = au.audit(tmp_path)
    assert any(f[2] == "16980" and f[4] == "cross-bucket" for f in hard)


def test_cross_bucket_uncorroborated_marker_skipped(tmp_path):
    _tree(tmp_path, "TBC", "Blacksmithing", {"1": {"name": "A",
        "source": {"type": "VENDOR", "certainty": "MANUAL", "itemId": 9, "cost": 1}, "wowhead": {"creates": [2, 1, 1]}}})
    _tree(tmp_path, "SoD", "Blacksmithing", {"1": {"name": "A", "source": {
        "type": "TRAINER", "certainty": "DB2", "needsReview": True,
        "reviewReason": "cross-bucket-uncorroborated"}, "wowhead": {"creates": [2, 1, 1]}}})
    hard, warn = au.audit(tmp_path)
    assert not any(f[2] == "1" and f[4] == "cross-bucket" for f in hard)


def test_cross_bucket_bare_needsreview_still_hard(tmp_path):
    _tree(tmp_path, "TBC", "Blacksmithing", {"3": {"name": "B",
        "source": {"type": "DROP", "certainty": "MANUAL", "itemId": 9}, "wowhead": {"creates": [2, 1, 1]}}})
    _tree(tmp_path, "SoD", "Blacksmithing", {"3": {"name": "B", "source": {
        "type": "TRAINER", "certainty": "WOWHEAD", "needsReview": True}, "wowhead": {"creates": [2, 1, 1]}}})
    hard, warn = au.audit(tmp_path)
    assert any(f[2] == "3" and f[4] == "cross-bucket" for f in hard)
