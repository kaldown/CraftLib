import json
import audit_sources as au


def _tree(tmp_path, flavor, prof, recipes):
    d = tmp_path / flavor
    d.mkdir(parents=True, exist_ok=True)
    (d / f"{prof}.json").write_text(json.dumps({"recipes": recipes}))


def test_flags_wowhead_mismatch(tmp_path):
    _tree(tmp_path, "TBC", "Tailoring", {
        "19435": {"name": "Mooncloth Boots",
                  "source": {"type": "TRAINER", "certainty": "DB2"},
                  "wowhead": {"source": [4]}}})
    hard, warn = au.audit(tmp_path)
    assert any(f[2] == "19435" and f[4] == "wowhead-mismatch" for f in hard)


def test_crafted_only_not_flagged(tmp_path):
    _tree(tmp_path, "TBC", "Alchemy", {
        "1": {"name": "X", "source": {"type": "VENDOR", "certainty": "MANUAL"},
              "wowhead": {"source": [1]}}})
    hard, warn = au.audit(tmp_path)
    assert hard == []


def test_cross_bucket_inconsistency(tmp_path):
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


def test_needs_review_is_warning_not_hard(tmp_path):
    _tree(tmp_path, "SoD", "Cooking", {
        "5": {"name": "Z", "source": {"type": "TRAINER", "certainty": "WOWHEAD",
              "needsReview": True}}})
    hard, warn = au.audit(tmp_path)
    assert hard == []
    assert any(f[2] == "5" for f in warn)
