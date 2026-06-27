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


# --- compute_vendor_prices ---------------------------------------------------

def _isparse_row(item_id, buy, sell, vsc):
    return {"ID": str(item_id), "BuyPrice": str(buy), "SellPrice": str(sell),
            "VendorStackCount": str(vsc), "Display_lang": f"Item{item_id}"}


def _details(*rows):
    return {r["ID"]: r for r in rows}


def test_per_unit_pins_divide_by_vendor_stack_count():
    allowlist = {
        "3371": {"name": "Empty Vial", "verified": True},
        "3372": {"name": "Leaded Vial", "verified": True},
        "8925": {"name": "Crystal Vial", "verified": True},
        "2678": {"name": "Mild Spices", "verified": True},
    }
    details = _details(
        _isparse_row(3371, 20, 1, 5),
        _isparse_row(3372, 200, 10, 5),
        _isparse_row(8925, 2500, 125, 5),
        _isparse_row(2678, 10, 0, 5),
    )
    by_id = {e["itemId"]: e["perUnit"] for e in gr.compute_vendor_prices(allowlist, details, "DEFAULT")}
    assert by_id == {3371: 4, 3372: 40, 8925: 500, 2678: 2}


def test_membership_gates_not_buyprice():
    # Runecloth/Copper Ore have BuyPrice>0 in ItemSparse but are NOT allowlisted,
    # so they must never appear in the computed table.
    allowlist = {"2320": {"name": "Coarse Thread", "verified": True}}
    details = _details(
        _isparse_row(2320, 10, 2, 1),
        _isparse_row(14047, 1600, 400, 1),  # Runecloth
        _isparse_row(2770, 20, 5, 1),       # Copper Ore
    )
    ids = {e["itemId"] for e in gr.compute_vendor_prices(allowlist, details, "DEFAULT")}
    assert ids == {2320}


def test_missing_from_itemsparse_raises_named():
    allowlist = {"9999999": {"name": "Phantom Reagent", "verified": True}}
    with pytest.raises(ValueError) as exc:
        gr.compute_vendor_prices(allowlist, _details(), "DEFAULT")
    assert "Phantom Reagent" in str(exc.value) and "9999999" in str(exc.value)


def test_buyprice_zero_raises_named():
    allowlist = {"3371": {"name": "Empty Vial", "verified": True}}
    details = _details(_isparse_row(3371, 0, 0, 5))
    with pytest.raises(ValueError) as exc:
        gr.compute_vendor_prices(allowlist, details, "DEFAULT")
    assert "Empty Vial" in str(exc.value) and "3371" in str(exc.value)


def test_flavor_scope_excludes_default_only_item_on_sod():
    allowlist = {"30817": {"name": "Simple Flour", "verified": True, "flavors": ["DEFAULT"]}}
    details = _details(_isparse_row(30817, 25, 0, 5))
    assert gr.compute_vendor_prices(allowlist, details, "SOD") == []
    # ...but present on DEFAULT:
    out = gr.compute_vendor_prices(allowlist, details, "DEFAULT")
    assert [e["itemId"] for e in out] == [30817]


def test_non_integer_per_unit_rounds():
    allowlist = {"3371": {"name": "Empty Vial", "verified": True}}
    details = _details(_isparse_row(3371, 21, 0, 5))  # 21/5 = 4.2
    out = gr.compute_vendor_prices(allowlist, details, "DEFAULT")
    assert out[0]["perUnit"] == 4


# --- generate_vendor_prices_lua ----------------------------------------------

def _entry(item_id, per, buy, vsc, name):
    return {"itemId": item_id, "perUnit": per, "buyPrice": buy, "vsc": vsc,
            "name": name, "verified": True}


def test_lua_sod_carries_flavor_tag():
    lua = gr.generate_vendor_prices_lua([_entry(3371, 4, 20, 5, "Empty Vial")], "SOD")
    assert 'flavor = "SOD",' in lua
    assert "[3371] = 4," in lua
    assert "CraftLib:RegisterVendorPrices({" in lua


def test_lua_default_omits_flavor_tag():
    lua = gr.generate_vendor_prices_lua([_entry(3371, 4, 20, 5, "Empty Vial")], "DEFAULT")
    assert "flavor =" not in lua
    assert "[3371] = 4," in lua
