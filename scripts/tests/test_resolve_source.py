import fetch_wowhead_sources as fw


def test_pending_vendor_unchanged():
    rec = {"source": {"type": "PENDING", "certainty": "PENDING", "itemId": 5, "cost": 10}}
    out = fw._resolve_source(rec, {"source": [5]})
    assert out == {"type": "VENDOR", "certainty": "WOWHEAD", "itemId": 5, "cost": 10}


def test_quest_db2_demoted_to_drop():
    rec = {"source": {"type": "QUEST", "certainty": "DB2", "itemId": 42}}
    out = fw._resolve_source(rec, {"source": [2]})
    assert out == {"type": "DROP", "certainty": "WOWHEAD", "itemId": 42}


def test_crafted_only_array_is_ignored():
    rec = {"source": {"type": "QUEST", "certainty": "DB2", "itemId": 42}}
    assert fw._resolve_source(rec, {"source": [1]}) is None


def test_trainer_db2_not_demoted_here():
    rec = {"source": {"type": "TRAINER", "certainty": "DB2"}}
    assert fw._resolve_source(rec, {"source": [2]}) is None


def test_reputation_never_reclassified():
    rec = {"source": {"type": "REPUTATION", "certainty": "DB2", "itemId": 9}}
    assert fw._resolve_source(rec, {"source": [5]}) is None


def test_trainer_signal_wins():
    rec = {"source": {"type": "QUEST", "certainty": "DB2", "itemId": 42}}
    out = fw._resolve_source(rec, {"source": [6], "trainingCost": 100})
    assert out == {"type": "TRAINER", "certainty": "WOWHEAD", "trainingCost": 100}


def test_quest_to_vendor_without_cost_left_unchanged():
    rec = {"source": {"type": "QUEST", "certainty": "DB2", "itemId": 42}}
    assert fw._resolve_source(rec, {"source": [5]}) is None


def test_cross_source_is_left_unchanged():
    rec = {"source": {"type": "VENDOR", "certainty": "CROSS", "itemId": 5, "cost": 10}}
    assert fw._resolve_source(rec, {"source": [6], "trainingCost": 40}) is None  # trainer signal must NOT override CROSS


def test_uncorroborated_marker_is_left_unchanged():
    rec = {"source": {"type": "TRAINER", "certainty": "DB2", "needsReview": True,
                      "reviewReason": "cross-bucket-uncorroborated"}}
    assert fw._resolve_source(rec, {"source": [6], "trainingCost": 40}) is None
