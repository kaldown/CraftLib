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


def test_missing_fallback_build_exits_1(tmp_path, capsys):
    # WHY: a mistyped --fallback-version was silently ignored, so recipes the
    # fallback build would have marked PENDING came out as false TRAINER/DB2.
    from tests.fixture_build import FIXTURE_VERSION, write_build
    write_build(tmp_path / "art")
    rc = ex.main(["--bucket", "sod", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
                  "--data-dir", str(tmp_path / "art"), "--output-dir", str(tmp_path / "src"),
                  "--fallback-version", "2.5.5.0000"])
    assert rc == 1
    err = capsys.readouterr().err
    assert str(tmp_path / "art" / "2.5.5.0000") in err and "bucket 'sod'" in err
    assert not (tmp_path / "src" / "SoD" / "Tailoring.json").exists()


def test_add_fallback_indexes_rejects_missing_dir(tmp_path):
    import pytest
    with pytest.raises(FileNotFoundError, match="nope"):
        ex.add_fallback_indexes({}, tmp_path / "nope")
