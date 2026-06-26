import json
import reconcile_cross_bucket as rcb


def _write(tmp_path, name, recipes):
    p = tmp_path / name
    p.write_text(json.dumps({"recipes": recipes}))
    return p


def test_inherits_default_drop_for_shared_trainer_guess(tmp_path):
    default = _write(tmp_path, "TBC.json", {
        "2158": {"name": "Fine Leather Boots",
                 "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 2406},
                 "wowhead": {"creates": [2307, 1, 1]}},
    })
    sod = _write(tmp_path, "SoD.json", {
        "2158": {"name": "Fine Leather Boots",
                 "source": {"type": "TRAINER", "certainty": "DB2"},
                 "wowhead": {"creates": [2307, 1, 1]}},
    })
    changed, total = rcb.reconcile_profession(sod, default, set())
    assert (changed, total) == (1, 1)
    out = json.loads(sod.read_text())["recipes"]["2158"]["source"]
    assert out == {"type": "DROP", "certainty": "CROSS", "itemId": 2406}


def test_skips_when_created_item_differs(tmp_path):
    default = _write(tmp_path, "TBC.json", {
        "999": {"name": "X", "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 1},
                "wowhead": {"creates": [100, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {
        "999": {"name": "Y", "source": {"type": "TRAINER", "certainty": "DB2"},
                "wowhead": {"creates": [200, 1, 1]}}})
    changed, _ = rcb.reconcile_profession(sod, default, set())
    assert changed == 0


def test_skips_non_wowhead_default(tmp_path):
    default = _write(tmp_path, "TBC.json", {
        "5": {"name": "X", "source": {"type": "DROP", "certainty": "DB2", "itemId": 1}}})
    sod = _write(tmp_path, "SoD.json", {
        "5": {"name": "X", "source": {"type": "TRAINER", "certainty": "DB2"}}})
    changed, _ = rcb.reconcile_profession(sod, default, set())
    assert changed == 0


def test_allowlist_keeps_trainer(tmp_path):
    default = _write(tmp_path, "TBC.json", {
        "7": {"name": "X", "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 1},
              "wowhead": {"creates": [9, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {
        "7": {"name": "X", "source": {"type": "TRAINER", "certainty": "DB2"},
              "wowhead": {"creates": [9, 1, 1]}}})
    changed, _ = rcb.reconcile_profession(sod, default, {"7"})
    assert changed == 0
