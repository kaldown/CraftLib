"""CLI-level tests: the generator takes its identity from the bucket registry."""
import shutil
import subprocess

import pytest

import generate_recipes as gr
from tests.fixture_build import FIXTURE_VERSION, write_build, write_sources


def _run(tmp_path, bucket, *extra, folder=None, build_kw=None, src_kw=None, prof=True):
    write_build(tmp_path / "art", **(build_kw or {}))
    if folder:
        write_sources(tmp_path / "src", folder, **(src_kw or {}))
    argv = ["--bucket", bucket, "--version", FIXTURE_VERSION,
            "--data-dir", str(tmp_path / "art"), "--sources-dir", str(tmp_path / "src"),
            "--output-dir", str(tmp_path / "out")]
    if prof:
        argv += ["--profession", "Tailoring"]
    return gr.main(argv + list(extra))


def test_main_writes_registry_folder_profile_milestones(tmp_path):
    assert _run(tmp_path, "tbc", folder="TBC") == 0
    f = tmp_path / "out" / "TBC" / "Tailoring" / "Recipes.lua"
    lua = f.read_text()
    assert 'profile = "TBC"' in lua
    assert "milestones = { 75, 150, 225, 300, 375 }," in lua
    for i in range(1001, 1005):
        assert f"id = {i}" in lua
    if shutil.which("luac5.1"):
        assert subprocess.run(["luac5.1", "-p", str(f)]).returncode == 0


def test_main_sod_uses_fixed_expansion(tmp_path):
    assert _run(tmp_path, "sod", folder="SoD") == 0
    lua = (tmp_path / "out" / "SoD" / "Tailoring" / "Recipes.lua").read_text()
    assert lua.count("expansion = C.EXPANSION.SOD,") >= 5  # 4 recipes + profession header
    assert "C.EXPANSION.TBC" not in lua and "C.EXPANSION.VANILLA" not in lua


def test_main_unknown_bucket_rejected(tmp_path):
    with pytest.raises(SystemExit):
        gr.main(["--bucket", "forever"])


def test_main_unknown_profession_exits_1(tmp_path):
    write_build(tmp_path / "art")
    argv = ["--bucket", "vanilla", "--version", FIXTURE_VERSION,
            "--data-dir", str(tmp_path / "art"), "--sources-dir", str(tmp_path / "src"),
            "--output-dir", str(tmp_path / "out"), "--profession", "Jewelcrafting"]
    assert gr.main(argv) == 1


def test_main_missing_column_exits_2(tmp_path, capsys):
    rc = _run(tmp_path, "tbc", folder="TBC",
              build_kw={"omit_columns": {"SpellReagents": {"Reagent_0"}}})
    assert rc == 2
    err = capsys.readouterr().err
    assert "SpellReagents" in err and "Reagent_0" in err


def test_main_canary_failure_exits_2(tmp_path, capsys):
    rc = _run(tmp_path, "tbc", folder="TBC", build_kw={"teaching_parent_zero": True})
    assert rc == 2
    assert "teaching" in capsys.readouterr().err


def test_main_named_removed_file_missing_exits_2(tmp_path, capsys):
    rc = _run(tmp_path, "tbc", folder="TBC", src_kw={"with_removed": False})
    assert rc == 2
    assert "removed_recipes.json" in capsys.readouterr().err


def test_main_vendor_prices_only_uses_registry_folder(tmp_path):
    rc = _run(tmp_path, "wotlk", "--vendor-prices-only", folder="WotLK", prof=False)
    assert rc == 0
    lua = (tmp_path / "out" / "WotLK" / "VendorPrices.lua").read_text()
    assert 'profile = "WOTLK"' in lua
    assert "[2320] = 10," in lua
