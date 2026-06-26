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
    its = {"2406": {"BuyPrice": 0, "MinFactionID": 0}}
    inherited, total, needs_review = rcb.reconcile_profession(sod, default, set(), its)
    assert (inherited, total, needs_review) == (1, 1, 0)
    out = json.loads(sod.read_text())["recipes"]["2158"]["source"]
    assert out == {"type": "DROP", "certainty": "CROSS", "itemId": 2406}


def test_skips_when_created_item_differs(tmp_path):
    default = _write(tmp_path, "TBC.json", {
        "999": {"name": "X", "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 1},
                "wowhead": {"creates": [100, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {
        "999": {"name": "Y", "source": {"type": "TRAINER", "certainty": "DB2"},
                "wowhead": {"creates": [200, 1, 1]}}})
    inherited, _, _ = rcb.reconcile_profession(sod, default, set(), {})
    assert inherited == 0


def test_skips_non_wowhead_default(tmp_path):
    default = _write(tmp_path, "TBC.json", {
        "5": {"name": "X", "source": {"type": "DROP", "certainty": "DB2", "itemId": 1}}})
    sod = _write(tmp_path, "SoD.json", {
        "5": {"name": "X", "source": {"type": "TRAINER", "certainty": "DB2"}}})
    inherited, _, _ = rcb.reconcile_profession(sod, default, set(), {})
    assert inherited == 0


def test_allowlist_keeps_trainer(tmp_path):
    default = _write(tmp_path, "TBC.json", {
        "7": {"name": "X", "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 1},
              "wowhead": {"creates": [9, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {
        "7": {"name": "X", "source": {"type": "TRAINER", "certainty": "DB2"},
              "wowhead": {"creates": [9, 1, 1]}}})
    inherited, _, _ = rcb.reconcile_profession(sod, default, {"7"}, {"1": {"BuyPrice": 0, "MinFactionID": 0}})
    assert inherited == 0


def test_load_itemsparse(tmp_path):
    p = tmp_path / "ItemSparse.csv"
    p.write_text("ID,BuyPrice,MinFactionID\n2406,100,0\n19442,100000,529\n")
    idx = rcb.load_itemsparse(p)
    assert idx["2406"] == {"BuyPrice": 100, "MinFactionID": 0}
    assert idx["19442"] == {"BuyPrice": 100000, "MinFactionID": 529}
    assert rcb.load_itemsparse(tmp_path / "nope.csv") == {}


def test_inherits_manual_vendor_with_matching_cost(tmp_path):
    default = _write(tmp_path, "TBC.json", {"16980": {"name": "Rune Edge",
        "source": {"type": "VENDOR", "certainty": "MANUAL", "itemId": 12826, "cost": 20000},
        "wowhead": {"creates": [12779, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"16980": {"name": "Rune Edge",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [12779, 1, 1]}}})
    its = {"12826": {"BuyPrice": 20000, "MinFactionID": 0}}
    assert rcb.reconcile_profession(sod, default, set(), its) == (1, 1, 0)
    assert json.loads(sod.read_text())["recipes"]["16980"]["source"] == \
        {"type": "VENDOR", "certainty": "CROSS", "itemId": 12826, "cost": 20000}


def test_inherits_db2_reputation_with_sod_faction_and_cost(tmp_path):
    rep = {"type": "REPUTATION", "certainty": "DB2", "itemId": 19442,
           "factionId": 529, "factionName": "Argent Dawn", "level": "Honored", "cost": 100000}
    default = _write(tmp_path, "TBC.json", {"23787": {"name": "Powerful Anti-Venom",
        "source": rep, "wowhead": {"creates": [19440, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"23787": {"name": "Powerful Anti-Venom",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [19440, 1, 1]}}})
    its = {"19442": {"BuyPrice": 100000, "MinFactionID": 529}}
    assert rcb.reconcile_profession(sod, default, set(), its) == (1, 1, 0)
    out = json.loads(sod.read_text())["recipes"]["23787"]["source"]
    assert out["type"] == "REPUTATION" and out["certainty"] == "CROSS" and out["factionName"] == "Argent Dawn"


def test_corroboration_fail_item_absent_marks_review(tmp_path):
    default = _write(tmp_path, "TBC.json", {"300": {"name": "X",
        "source": {"type": "DROP", "certainty": "MANUAL", "itemId": 777}, "wowhead": {"creates": [42, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"300": {"name": "X",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [42, 1, 1]}}})
    assert rcb.reconcile_profession(sod, default, set(), {"999": {"BuyPrice": 1, "MinFactionID": 0}}) == (0, 1, 1)
    out = json.loads(sod.read_text())["recipes"]["300"]["source"]
    assert out["type"] == "TRAINER" and out["needsReview"] is True
    assert out["reviewReason"] == "cross-bucket-uncorroborated"


def test_corroboration_fail_vendor_cost_mismatch(tmp_path):
    default = _write(tmp_path, "TBC.json", {"16981": {"name": "Y",
        "source": {"type": "VENDOR", "certainty": "MANUAL", "itemId": 12656, "cost": 20000}, "wowhead": {"creates": [9, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"16981": {"name": "Y",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [9, 1, 1]}}})
    assert rcb.reconcile_profession(sod, default, set(), {"12656": {"BuyPrice": 40000, "MinFactionID": 0}}) == (0, 1, 1)
    assert json.loads(sod.read_text())["recipes"]["16981"]["source"]["reviewReason"] == "cross-bucket-uncorroborated"


def test_corroboration_fail_reputation_no_sod_faction(tmp_path):  # the lone Sha'tar artifact
    rep = {"type": "REPUTATION", "certainty": "DB2", "itemId": 23576,
           "factionId": 935, "factionName": "The Sha'tar", "level": "Honored", "cost": 100000}
    default = _write(tmp_path, "TBC.json", {"28244": {"name": "Z", "source": rep, "wowhead": {"creates": [1, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"28244": {"name": "Z",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [1, 1, 1]}}})
    assert rcb.reconcile_profession(sod, default, set(), {"23576": {"BuyPrice": 100000, "MinFactionID": 0}}) == (0, 1, 1)


def test_vendor_without_cost_fails_closed(tmp_path):
    default = _write(tmp_path, "TBC.json", {"5": {"name": "V",
        "source": {"type": "VENDOR", "certainty": "MANUAL", "itemId": 50}, "wowhead": {"creates": [1, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"5": {"name": "V",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [1, 1, 1]}}})
    assert rcb.reconcile_profession(sod, default, set(), {"50": {"BuyPrice": 100, "MinFactionID": 0}}) == (0, 1, 1)


def test_reclaims_wowhead_conservative_tail_with_needs_review(tmp_path):
    # The conservative-tail stamp left by a prior pipeline pass: TRAINER/WOWHEAD/needsReview,
    # no reviewReason. Its TBC twin is a corroborated DB2 REPUTATION -> reclaimed to REPUTATION/CROSS.
    rep = {"type": "REPUTATION", "certainty": "DB2", "itemId": 19442,
           "factionId": 529, "factionName": "Argent Dawn", "level": "Honored", "cost": 100000}
    default = _write(tmp_path, "TBC.json", {"23787": {"name": "Powerful Anti-Venom",
        "source": rep, "wowhead": {"creates": [19440, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"23787": {"name": "Powerful Anti-Venom",
        "source": {"type": "TRAINER", "certainty": "WOWHEAD", "needsReview": True},
        "wowhead": {"creates": [19440, 1, 1]}}})
    its = {"19442": {"BuyPrice": 100000, "MinFactionID": 529}}
    assert rcb.reconcile_profession(sod, default, set(), its) == (1, 1, 0)
    out = json.loads(sod.read_text())["recipes"]["23787"]["source"]
    assert out == {"type": "REPUTATION", "certainty": "CROSS", "itemId": 19442,
                   "factionId": 529, "factionName": "Argent Dawn", "level": "Honored", "cost": 100000}
    assert "needsReview" not in out


def test_inherits_structural_starter_with_empty_itemsparse(tmp_path):
    # STARTER is a STRUCTURAL source type (no itemId/cost/faction) that was Wowhead-verified
    # in the TBC bucket; there is nothing to cross-check against DB2 ItemSparse, so it must
    # inherit WITHOUT corroboration -- even with an EMPTY itemsparse.
    default = _write(tmp_path, "TBC.json", {"8604": {"name": "Herb Baked Egg",
        "source": {"type": "STARTER", "certainty": "WOWHEAD"},
        "wowhead": {"creates": [6888, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"8604": {"name": "Herb Baked Egg",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [6888, 1, 1]}}})
    assert rcb.reconcile_profession(sod, default, set(), {}) == (1, 1, 0)
    out = json.loads(sod.read_text())["recipes"]["8604"]["source"]
    assert out == {"type": "STARTER", "certainty": "CROSS"}


def test_inherits_structural_discovery_with_empty_itemsparse(tmp_path):
    # DISCOVERY is the other structural type (world-object recipes); same corroboration exemption.
    default = _write(tmp_path, "TBC.json", {"3952": {"name": "Minor Recombobulator",
        "source": {"type": "DISCOVERY", "certainty": "WOWHEAD"},
        "wowhead": {"creates": [4388, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"3952": {"name": "Minor Recombobulator",
        "source": {"type": "TRAINER", "certainty": "DB2"}, "wowhead": {"creates": [4388, 1, 1]}}})
    assert rcb.reconcile_profession(sod, default, set(), {}) == (1, 1, 0)
    out = json.loads(sod.read_text())["recipes"]["3952"]["source"]
    assert out == {"type": "DISCOVERY", "certainty": "CROSS"}


def test_does_not_reclaim_wowhead_trainer_without_needs_review(tmp_path):
    # A plain TRAINER/WOWHEAD (no needsReview) is a confident Wowhead verdict, NOT the
    # conservative tail -> must be left alone. Locks the "only the explicitly-uncertain tail" boundary.
    default = _write(tmp_path, "TBC.json", {"40": {"name": "W",
        "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 1},
        "wowhead": {"creates": [9, 1, 1]}}})
    sod = _write(tmp_path, "SoD.json", {"40": {"name": "W",
        "source": {"type": "TRAINER", "certainty": "WOWHEAD"},
        "wowhead": {"creates": [9, 1, 1]}}})
    inherited, total, needs_review = rcb.reconcile_profession(
        sod, default, set(), {"1": {"BuyPrice": 0, "MinFactionID": 0}})
    assert inherited == 0
    out = json.loads(sod.read_text())["recipes"]["40"]["source"]
    assert out == {"type": "TRAINER", "certainty": "WOWHEAD"}
