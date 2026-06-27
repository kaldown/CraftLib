import json
from pathlib import Path

import pytest

import generate_recipes as gr

ALLOWLIST = Path(__file__).resolve().parent.parent.parent / "Data" / "Sources" / "vendor_reagents.json"


def test_allowlist_is_valid_and_well_shaped():
    data = json.loads(ALLOWLIST.read_text())
    assert "vendorReagents" in data
    reagents = data["vendorReagents"]
    assert reagents, "allowlist must not be empty"
    for item_id, meta in reagents.items():
        assert item_id.isdigit(), f"key {item_id!r} must be a numeric itemId string"
        assert isinstance(meta.get("name"), str) and meta["name"], f"{item_id} needs a name"
        assert "verified" in meta, f"{item_id} needs an explicit verified flag"
        if "flavors" in meta:
            assert set(meta["flavors"]) <= {"DEFAULT", "SOD"}, f"{item_id} bad flavors"


def test_known_vendor_reagents_present_and_gating_items_absent():
    reagents = json.loads(ALLOWLIST.read_text())["vendorReagents"]
    # Canonical vendor-sold reagents must be allowlisted.
    for item_id in ("2320", "3371", "8925", "2678"):
        assert item_id in reagents
    # BuyPrice>0 but NOT vendor-stocked: must never be allowlisted (data-truth).
    for item_id in ("14047", "2770", "2318"):  # Runecloth, Copper Ore, Light Leather
        assert item_id not in reagents


def test_simple_flour_is_default_only():
    reagents = json.loads(ALLOWLIST.read_text())["vendorReagents"]
    # 30817 is absent from the Era/SoD DB2 build, so it must be flavor-scoped to DEFAULT
    # or generating the SoD table would fail loud.
    assert reagents["30817"]["flavors"] == ["DEFAULT"]
