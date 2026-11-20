import shutil
import subprocess
from pathlib import Path

import pytest

from tests.fixture_build import FIXTURE_VERSION, write_build, write_sources

REPO = Path(__file__).resolve().parents[2]
pytestmark = pytest.mark.skipif(shutil.which("make") is None, reason="make not installed")


def _make(*args):
    return subprocess.run(["make", "-C", str(REPO), *args], capture_output=True, text=True)


def _run(tmp_path, override=None):
    art, src, out = tmp_path / "art", tmp_path / "src", tmp_path / "out"
    write_build(art)
    # SoD bucket: no removed-recipes list, and Tailoring is one of its professions.
    write_sources(src, "SoD", recipes_override=override)
    args = (f"--steps assert-no-pending,generate --version {FIXTURE_VERSION} "
            f"--data-dir {art} --sources-dir {src} --output-dir {out}")
    r = _make("sod-all", "PROFESSION=Tailoring", f"ARGS={args}")
    return r, out / "SoD" / "Tailoring" / "Recipes.lua"


def test_unknown_bucket_target_fails():
    r = _make("forever-all")
    assert r.returncode != 0
    assert "No rule to make target" in r.stderr and "forever-all" in r.stderr, r.stderr


def test_failing_gate_stops_make(tmp_path):
    pending = {"1002": {"name": "Fixture Vest",
                        "source": {"type": "PENDING", "certainty": "PENDING",
                                   "itemId": 6002, "cost": 500}}}
    r, lua = _run(tmp_path, pending)
    assert r.returncode != 0, r.stdout + r.stderr
    # The stop must come from the gate itself, not from some earlier failure.
    assert "FAILED at step assert-no-pending" in r.stderr, r.stderr
    assert "=== generate" not in r.stdout, r.stdout
    assert not lua.exists()


def test_passing_gate_runs_generate(tmp_path):
    r, lua = _run(tmp_path)
    assert r.returncode == 0, r.stdout + r.stderr
    assert lua.exists()


def _data_snapshot(folder):
    return {p: p.stat().st_mtime_ns for p in sorted((REPO / "Data" / folder).rglob("*.lua"))}


def test_generate_without_out_refuses_and_writes_nothing():
    # WHY OUT is required: regenerating into the shipped Data/ is not a no-op (the
    # tracked sources drift from the shipped Lua), so it must be asked for explicitly.
    # --dry-run keeps this test from ever writing Data/ even if the guard regresses.
    before = _data_snapshot("TBC")
    r = _make("tbc-generate", "ARGS=--dry-run")
    assert r.returncode != 0
    assert "OUT=<dir>" in r.stderr and "OUT=Data" in r.stderr, r.stderr
    assert "generate_recipes.py" not in r.stdout, r.stdout   # the pipeline never started
    assert _data_snapshot("TBC") == before


def test_generate_with_out_passes_output_dir(tmp_path):
    r = _make("-n", "tbc-generate", f"OUT={tmp_path}")
    assert r.returncode == 0, r.stderr
    assert f"--output-dir {tmp_path}" in r.stdout


def test_vendor_prices_without_out_refuses():
    # make -n: prints recipes instead of running them, so nothing can be written.
    r = _make("-n", "vendor-prices")
    assert r.returncode != 0
    assert "OUT=<dir>" in r.stderr, r.stderr


@pytest.mark.parametrize("target", ["sod-all", "sod-fetch"])
def test_out_on_networked_targets_is_rejected(tmp_path, target):
    # OUT used to be silently ignored there, so the run still rewrote the repo's Data/.
    r = _make("-n", target, f"OUT={tmp_path}")
    assert r.returncode != 0
    assert "OUT" in r.stderr and target.split("-")[1] in r.stderr, r.stderr
    assert "pipeline.py" not in r.stdout
