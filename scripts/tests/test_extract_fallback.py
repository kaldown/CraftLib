import extract_db2_sources as ex


def test_fallback_recipe_item_yields_pending():
    indexes = {
        "recipe_items": {},  # current (Era) build lacks the link
        "recipe_items_fallback": {"2158": "2406"},
        "item_details_fallback": {"2406": {"BuyPrice": "500", "SellPrice": "100",
                                           "MinFactionID": "0", "MinReputation": "0"}},
        "item_details": {},
    }
    out = ex.detect_source("2158", indexes)
    assert out["type"] == "PENDING"
    assert out["itemId"] == 2406 and out["cost"] == 500
