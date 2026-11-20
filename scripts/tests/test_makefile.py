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
    assert _make("forever-all").returncode != 0


def test_failing_gate_stops_make(tmp_path):
    pending = {"1002": {"name": "Fixture Vest",
                        "source": {"type": "PENDING", "certainty": "PENDING",
                                   "itemId": 6002, "cost": 500}}}
    r, lua = _run(tmp_path, pending)
    assert r.returncode != 0, r.stdout + r.stderr
    assert not lua.exists()


def test_passing_gate_runs_generate(tmp_path):
    r, lua = _run(tmp_path)
    assert r.returncode == 0, r.stdout + r.stderr
    assert lua.exists()
