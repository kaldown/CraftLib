"""Pins the bucket registry against the runtime constants, the TOC and the Data/ tree.

WHY: the registry (scripts/buckets.py) drives generation while Core/Constants.lua,
CraftLib.toc and Data/ are what actually ship. Any drift between them is a silent
runtime bug (a profile no client matches, a data file never loaded), so it fails here.
"""
import re
from pathlib import Path

from buckets import BUCKETS, PROFESSIONS
from generate_recipes import EMITTABLE_SOURCE_TYPES

ROOT = Path(__file__).resolve().parents[2]


def _constants_block(name: str) -> dict[str, str]:
    """Return {KEY: raw value} for the `NAME = { ... }` table in Core/Constants.lua."""
    text = (ROOT / "Core" / "Constants.lua").read_text(encoding="utf-8")
    m = re.search(r"^\s*" + name + r"\s*=\s*\{(.*?)^\s*\},", text, re.S | re.M)
    assert m, f"Core/Constants.lua has no {name} table"
    body = re.sub(r"--[^\n]*", "", m.group(1))
    return {k: v.strip() for k, v in re.findall(r"([A-Z_]+)\s*=\s*([^,\n]+),?", body)}


def _shipped():
    # WHY: a bucket flagged shipped=False has no Data/ files or TOC lines yet; the
    # consistency checks guard what ships, so they skip it until it is flipped.
    return [b for b in BUCKETS.values() if b.shipped]


def _written(b):
    # Held-back professions fail the coverage gate: not written, not in the TOC.
    return [p for p in b.professions if p not in b.held_back]


def _toc_data_lines() -> list[str]:
    lines = (ROOT / "CraftLib.toc").read_text(encoding="utf-8").splitlines()
    return [ln.strip() for ln in lines if ln.strip() and not ln.startswith("#")]


def test_profiles_match_constants():
    consts = {v.strip('"') for v in _constants_block("PROFILE").values()}
    registry = {b.profile for b in BUCKETS.values()}
    assert consts == registry, f"PROFILE only in constants: {consts - registry}; only in registry: {registry - consts}"


def test_source_types_and_expansions_exist_in_constants():
    src = set(_constants_block("SOURCE_TYPE"))
    missing = set(EMITTABLE_SOURCE_TYPES) - src
    assert not missing, f"emittable source types missing from SOURCE_TYPE: {sorted(missing)}"

    exp = set(_constants_block("EXPANSION"))
    wanted = {b.fixed_expansion for b in BUCKETS.values() if b.fixed_expansion}
    wanted |= {"VANILLA", "TBC", "WOTLK", "CATA", "MOP"}  # threshold-tagged expansions
    assert not wanted - exp, f"expansions missing from EXPANSION: {sorted(wanted - exp)}"

    pid = set(_constants_block("PROFESSION_ID"))
    bad = [p.folder for p in PROFESSIONS.values() if p.constant not in pid]
    assert not bad, f"profession constants missing from PROFESSION_ID: {bad}"


def test_toc_lists_exactly_the_registry_data_files():
    lines = _toc_data_lines()
    data = [ln for ln in lines if ln.startswith("Data/")]
    expected = set()
    for b in _shipped():
        expected.add(f"Data/{b.folder}/VendorPrices.lua")
        expected |= {f"Data/{b.folder}/{p}/Recipes.lua" for p in _written(b)}
    assert len(data) == len(set(data)), f"duplicate TOC data lines: {sorted(d for d in set(data) if data.count(d) > 1)}"
    assert set(data) == expected, f"TOC only: {sorted(set(data) - expected)}; registry only: {sorted(expected - set(data))}"
    for d in data:
        assert (ROOT / d).is_file(), f"TOC lists a missing file: {d}"
    # WHY: data files register through CraftLib.Constants/Init, so those must load first.
    first_data = lines.index(data[0])
    for core in ("Core/Constants.lua", "Core/Init.lua"):
        assert core in lines, f"{core} not in TOC"
        assert lines.index(core) < first_data, f"{core} must load before the first Data/ line"


def test_data_dirs_match_registry():
    folders = {b.folder for b in _shipped()}
    on_disk = {p.name for p in (ROOT / "Data").iterdir() if p.is_dir() and p.name != "Sources"}
    assert on_disk == folders, f"Data/ dirs only on disk: {on_disk - folders}; only in registry: {folders - on_disk}"
    for b in _shipped():
        subdirs = {p.name for p in (ROOT / "Data" / b.folder).iterdir() if p.is_dir()}
        assert subdirs == set(_written(b)), f"Data/{b.folder} subdirs {sorted(subdirs)} != professions {sorted(_written(b))}"
        # Sources JSON is required for every profession of a shipped bucket, held back or not.
        for prof in b.professions:
            src = ROOT / "Data" / "Sources" / b.folder / f"{prof}.json"
            assert src.is_file(), f"missing source file: {src.relative_to(ROOT)}"


def test_shipped_files_carry_profile_and_milestones():
    for b in _shipped():
        profile_tag = f'profile = "{b.profile}"'
        # Legacy tag accepted for sod only: remove when SoD is regenerated (Phase 2).
        accepted = [profile_tag] + ([f'flavor = "{b.profile}"'] if b.key == "sod" else [])
        files = [ROOT / "Data" / b.folder / "VendorPrices.lua"]
        files += [ROOT / "Data" / b.folder / p / "Recipes.lua" for p in _written(b)]
        for f in files:
            text = f.read_text(encoding="utf-8")
            assert any(t in text for t in accepted), f"{f.relative_to(ROOT)} lacks any of {accepted}"
            if f.name == "Recipes.lua":
                ms = f"milestones = {{ {', '.join(map(str, b.milestones))} }},"
                assert ms in text, f"{f.relative_to(ROOT)} lacks `{ms}`"
