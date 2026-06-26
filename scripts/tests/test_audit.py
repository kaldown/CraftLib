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
