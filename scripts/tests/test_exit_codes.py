"""Exit-code convention (scripts/pipeline.py docstring): a malformed input file is exit 2.

WHY: an uncaught JSONDecodeError exits 1 with a traceback, which reads like a gate
finding instead of a broken input, and names no bucket.
"""
import json

import pytest

import assert_no_pending as anp
import assert_no_unaligned as anu
import audit_sources as au
import extract_db2_sources as ex
import fetch_wowhead_sources as fw
import generate_recipes as gr
import reconcile_cross_bucket as rcb
import verify_trainer_sources as vt
from tests.fixture_build import FIXTURE_VERSION, write_build, write_sources

BROKEN = '{"recipes": {"1": '   # truncated write


def _tree(tmp_path, broken_folder):
    # Every shipped bucket: the unrestricted audit requires each one's folder.
    for folder in ("Vanilla", "TBC", "WotLK", "SoD", "Forever"):
        d = tmp_path / folder
        d.mkdir(parents=True, exist_ok=True)
        (d / "Tailoring.json").write_text(json.dumps({"recipes": {}}), encoding="utf-8")
    (tmp_path / "sod_keep_trainer.json").write_text(json.dumps({"keepTrainer": []}))
    (tmp_path / broken_folder / "Tailoring.json").write_text(BROKEN, encoding="utf-8")


def _no_network(monkeypatch):
    monkeypatch.setattr(fw, "_fetch_page", lambda *a, **k: pytest.fail("network"))
    monkeypatch.setattr(fw, "fetch_wowhead_spell", lambda *a, **k: pytest.fail("network"))
    monkeypatch.setattr(vt, "_FETCH", lambda *a, **k: pytest.fail("network"))


@pytest.mark.parametrize("name,module,argv,broken", [
    ("assert_no_pending", anp, ["--bucket", "tbc", "--profession", "Tailoring"], "TBC"),
    ("assert_no_unaligned", anu, ["--bucket", "sod", "--profession", "Tailoring"], "SoD"),
    ("verify", vt, ["--bucket", "sod", "--profession", "Tailoring"], "SoD"),
    ("fetch-listview", fw, ["--bucket", "sod", "--profession", "Tailoring"], "SoD"),
    ("fetch-per-spell", fw, ["--bucket", "tbc", "--profession", "Tailoring"], "TBC"),
    ("audit", au, [], "WotLK"),
], ids=["assert_no_pending", "assert_no_unaligned", "verify", "fetch-listview",
        "fetch-per-spell", "audit"])
def test_malformed_sources_json_exits_2(tmp_path, monkeypatch, capsys, name, module, argv, broken):
    _no_network(monkeypatch)
    _tree(tmp_path, broken)
    assert module.main(argv + ["--sources-dir", str(tmp_path)]) == 2
    assert "Tailoring.json" in capsys.readouterr().err


def test_reconcile_malformed_sources_json_exits_2(tmp_path, capsys):
    _tree(tmp_path, "SoD")
    its = tmp_path / "ItemSparse.csv"
    its.write_text("ID,BuyPrice,MinFactionID\n")
    assert rcb.main(["--bucket", "sod", "--profession", "Tailoring", "--sources-dir",
                     str(tmp_path), "--db2-itemsparse", str(its)]) == 2
    assert "Tailoring.json" in capsys.readouterr().err


def test_generate_malformed_sources_json_exits_2(tmp_path):
    write_build(tmp_path / "art")
    src = write_sources(tmp_path / "src", "TBC")
    (src / "TBC" / "Tailoring.json").write_text(BROKEN, encoding="utf-8")
    assert gr.main(["--bucket", "tbc", "--version", FIXTURE_VERSION, "--profession", "Tailoring",
                    "--data-dir", str(tmp_path / "art"), "--sources-dir", str(src),
                    "--output-dir", str(tmp_path / "out")]) == 2


def test_extract_malformed_existing_sources_exits_2(tmp_path):
    write_build(tmp_path / "art")
    out = tmp_path / "src" / "SoD"
    out.mkdir(parents=True)
    (out / "Tailoring.json").write_text(BROKEN, encoding="utf-8")
    assert ex.main(["--bucket", "sod", "--profession", "Tailoring", "--version", FIXTURE_VERSION,
                    "--data-dir", str(tmp_path / "art"), "--output-dir", str(tmp_path / "src")]) == 2
    assert (out / "Tailoring.json").read_text(encoding="utf-8") == BROKEN
