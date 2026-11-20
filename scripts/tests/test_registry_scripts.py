"""Registry-driven behaviour of the verifier, reconcile, audit and gate scripts."""
import json

import pytest

import assert_no_pending as anp
import audit_sources as au
import reconcile_cross_bucket as rcb
import verify_trainer_sources as vt
from buckets import get_bucket
from db2 import ColumnContractError


def _w(path, recipes):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps({"recipes": recipes}))
    return path


TRAINER_DB2 = {"name": "Fine Leather Boots", "source": {"type": "TRAINER", "certainty": "DB2"}}


def test_verify_returns_2_when_spells_fail(tmp_path, monkeypatch):
    sources = _w(tmp_path / "Leatherworking.json", {"2158": TRAINER_DB2})
    monkeypatch.setattr(vt, "_FETCH", lambda url: "")
    monkeypatch.setattr(vt.time, "sleep", lambda s: None)
    rc = vt.run(sources, tmp_path / ".fetch_state", get_bucket("sod"), base_delay=0)
    assert rc == 2
    state = json.loads((tmp_path / ".fetch_state" / "Leatherworking.json").read_text())
    assert state["spells"]["2158"]["status"] == "failed"


def test_verify_main_uses_registry_folder_and_subdomain(tmp_path, monkeypatch):
    _w(tmp_path / "SoD" / "Leatherworking.json", {"2158": TRAINER_DB2})
    urls = []

    def fake(url):
        urls.append(url)
        return '$.extend(g_spells[2158], {"name":"Fine Leather Boots","source":[6]});'
    monkeypatch.setattr(vt, "_FETCH", fake)
    monkeypatch.setattr(vt.time, "sleep", lambda s: None)
    rc = vt.main(["--bucket", "sod", "--profession", "Leatherworking",
                  "--sources-dir", str(tmp_path), "--base-delay", "0"])
    assert rc == 0
    assert urls == ["https://www.wowhead.com/classic/spell=2158"]
    assert (tmp_path / "SoD" / ".fetch_state" / "Leatherworking.json").exists()


def test_verify_unknown_bucket_rejected(tmp_path):
    with pytest.raises(SystemExit):
        vt.main(["--bucket", "cata", "--profession", "Leatherworking",
                 "--sources-dir", str(tmp_path)])


def test_verify_bucket_without_trainer_verification_exits_1(tmp_path, capsys):
    assert vt.main(["--bucket", "tbc", "--profession", "Leatherworking",
                    "--sources-dir", str(tmp_path)]) == 1
    assert "bucket 'tbc'" in capsys.readouterr().err


def test_reconcile_requires_parent(tmp_path, capsys):
    assert rcb.main(["--bucket", "tbc", "--all", "--sources-dir", str(tmp_path)]) == 1
    assert "bucket tbc declares no reconcile parent" in capsys.readouterr().err


def test_reconcile_missing_parent_sources_exits_2(tmp_path, capsys):
    _w(tmp_path / "SoD" / "Leatherworking.json", {"1": TRAINER_DB2})
    its = tmp_path / "ItemSparse.csv"
    its.write_text("ID,BuyPrice,MinFactionID\n1,0,0\n")
    rc = rcb.main(["--bucket", "sod", "--profession", "Leatherworking",
                   "--sources-dir", str(tmp_path), "--db2-itemsparse", str(its)])
    assert rc == 2
    err = capsys.readouterr().err
    assert "TBC" in err and "Leatherworking.json" in err


def test_reconcile_missing_keep_trainer_file_exits_2(tmp_path, capsys):
    _w(tmp_path / "SoD" / "Leatherworking.json", {})
    _w(tmp_path / "TBC" / "Leatherworking.json", {})
    its = tmp_path / "ItemSparse.csv"
    its.write_text("ID,BuyPrice,MinFactionID\n")
    rc = rcb.main(["--bucket", "sod", "--profession", "Leatherworking",
                   "--sources-dir", str(tmp_path), "--db2-itemsparse", str(its)])
    assert rc == 2
    assert "sod_keep_trainer.json" in capsys.readouterr().err


def test_load_itemsparse_non_integer_raises(tmp_path):
    p = tmp_path / "ItemSparse.csv"
    p.write_text("ID,BuyPrice,MinFactionID\n2406,abc,0\n")
    with pytest.raises(ColumnContractError, match="2406"):
        rcb.load_itemsparse(p)


def test_load_itemsparse_missing_column_raises(tmp_path):
    p = tmp_path / "ItemSparse.csv"
    p.write_text("ID,BuyPrice\n2406,5\n")
    with pytest.raises(ColumnContractError, match="MinFactionID"):
        rcb.load_itemsparse(p)


MISMATCH = {"1": {"name": "X", "source": {"type": "QUEST", "certainty": "WOWHEAD"},
                  "wowhead": {"source": [5]}}}


def test_audit_hardness_from_registry(tmp_path):
    _w(tmp_path / "Vanilla" / "Alchemy.json", MISMATCH)
    hard, warn = au.audit(tmp_path)
    assert hard == [] and len(warn) == 1
    _w(tmp_path / "SoD" / "Alchemy.json", MISMATCH)
    hard, warn = au.audit(tmp_path)
    assert [f[0] for f in hard] == ["SoD"]


def test_audit_unknown_folder_exits_2(tmp_path, capsys):
    _w(tmp_path / "Cata" / "Alchemy.json", {})
    assert au.main(["--sources-dir", str(tmp_path)]) == 2
    assert "Cata" in capsys.readouterr().err


def test_audit_bucket_scope(tmp_path):
    _w(tmp_path / "SoD" / "Alchemy.json", MISMATCH)
    assert au.main(["--sources-dir", str(tmp_path)]) == 1
    assert au.main(["--sources-dir", str(tmp_path), "--bucket", "vanilla"]) == 0
    assert au.main(["--sources-dir", str(tmp_path), "--bucket", "sod"]) == 1


def test_assert_no_pending_uses_registry_seasonal(tmp_path):
    rec = {"1": {"seasonId": 2, "source": {"type": "TRAINER", "certainty": "PENDING"}}}
    _w(tmp_path / "Vanilla" / "Alchemy.json", rec)
    _w(tmp_path / "TBC" / "Alchemy.json", rec)
    base = ["--profession", "Alchemy", "--sources-dir", str(tmp_path)]
    assert anp.main(["--bucket", "vanilla", *base]) == 0
    assert anp.main(["--bucket", "tbc", *base]) == 1
