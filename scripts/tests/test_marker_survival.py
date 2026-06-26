"""End-to-end marker-survival integration test.

Proves reconcile's two cross-bucket outputs survive the downstream pipeline
chain (fetch_wowhead_sources step 3 + verify_trainer_sources step 4) instead of
being clobbered back to a free trainer / having the review marker wiped.

The chain under test, for ONE SoD profession file:
  1. reconcile_cross_bucket.reconcile_profession ->
       - a CORROBORATED recipe becomes a CROSS source
       - an UNCORROBORATED recipe becomes the cross-bucket-uncorroborated marker
  2. fetch_wowhead_sources._resolve_source must return None (no change) for BOTH,
     even when Wowhead carries a trainer signal.
  3. verify_trainer_sources.run must NOT fetch the marker recipe.
  4. End state: CROSS source byte-identical to reconcile's output; marker recipe
     still carries reviewReason == "cross-bucket-uncorroborated" (release gate
     would still fire).
"""
import json

import fetch_wowhead_sources as fw
import reconcile_cross_bucket as rcb
import verify_trainer_sources as vt


def _write(path, recipes):
    path.write_text(json.dumps({"recipes": recipes}))
    return path


# A Wowhead trainer signal that WOULD clobber a free trainer if not guarded.
TRAINER_SIGNAL = {"source": [6], "trainingCost": 40}


def test_cross_and_marker_survive_full_chain(tmp_path, monkeypatch):
    # --- 1. Build SoD + TBC default JSONs with two TRAINER/DB2 SoD recipes. ---
    # "100" WILL corroborate: TBC DROP/WOWHEAD whose itemId is present in itemsparse.
    # "200" will FAIL corroboration: TBC DROP/WOWHEAD whose itemId is ABSENT.
    default_path = _write(tmp_path / "TBC.json", {
        "100": {"name": "Corroborated Recipe",
                "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 1111},
                "wowhead": {"creates": [5001, 1, 1]}},
        "200": {"name": "Uncorroborated Recipe",
                "source": {"type": "DROP", "certainty": "WOWHEAD", "itemId": 2222},
                "wowhead": {"creates": [5002, 1, 1]}},
    })
    sod_path = _write(tmp_path / "Leatherworking.json", {
        "100": {"name": "Corroborated Recipe",
                "source": {"type": "TRAINER", "certainty": "DB2"},
                "wowhead": {"creates": [5001, 1, 1]}},
        "200": {"name": "Uncorroborated Recipe",
                "source": {"type": "TRAINER", "certainty": "DB2"},
                "wowhead": {"creates": [5002, 1, 1]}},
    })
    # itemsparse contains 1111 (corroborates "100") but NOT 2222 (fails "200").
    itemsparse = {"1111": {"BuyPrice": 0, "MinFactionID": 0}}

    # --- 2. Reconcile: produces a CROSS source + a marker. ---
    inherited, total, needs_review = rcb.reconcile_profession(
        sod_path, default_path, set(), itemsparse)
    assert (inherited, total, needs_review) == (1, 2, 1)

    after_reconcile = json.loads(sod_path.read_text())["recipes"]
    cross_source = after_reconcile["100"]["source"]
    marker_source = after_reconcile["200"]["source"]
    assert cross_source == {"type": "DROP", "certainty": "CROSS", "itemId": 1111}
    assert marker_source == {"type": "TRAINER", "certainty": "DB2",
                             "needsReview": True,
                             "reviewReason": "cross-bucket-uncorroborated"}

    # --- 3. fetch step: _resolve_source must leave BOTH unchanged. ---
    assert fw._resolve_source(after_reconcile["100"], TRAINER_SIGNAL) is None
    assert fw._resolve_source(after_reconcile["200"], TRAINER_SIGNAL) is None

    # --- 4. verify step: the marker recipe must NOT be fetched. ---
    called = []
    monkeypatch.setattr(vt, "_FETCH", lambda url: called.append(url) or "")
    vt.run(sod_path, tmp_path / ".fetch_state",
           expansion="classic", base_delay=0, on_block="exit")

    # The marker recipe (sid "200") must be excluded from the candidate set.
    assert all("spell=200" not in u for u in called)
    # The CROSS recipe (sid "100") is not TRAINER/DB2, so it is naturally excluded.
    assert all("spell=100" not in u for u in called)

    # --- 5. End state: CROSS byte-identical; marker still flags the gate. ---
    final = json.loads(sod_path.read_text())["recipes"]
    assert final["100"]["source"] == cross_source  # still CROSS, type+itemId preserved
    assert final["200"]["source"]["reviewReason"] == "cross-bucket-uncorroborated"
