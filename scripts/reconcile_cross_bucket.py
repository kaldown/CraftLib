#!/usr/bin/env python3
"""Cross-bucket source reconciliation (Layer 1).

Corrects over-confident SoD TRAINER/DB2 source guesses by inheriting the
Wowhead-verified non-trainer source of the SAME spell from the DEFAULT (TBC)
bucket. Deterministic and idempotent: re-derived from DEFAULT sources every run,
so it does not depend on extract's preserve list.

Usage:
    python scripts/reconcile_cross_bucket.py --profession Leatherworking
    python scripts/reconcile_cross_bucket.py --all
"""
import argparse
import json
import os
import sys
from pathlib import Path

NON_TRAINER = {"DROP", "VENDOR", "QUEST", "STARTER", "DISCOVERY"}

SOD_PROFS = ["Alchemy", "Blacksmithing", "Enchanting", "Engineering",
             "Leatherworking", "Tailoring", "Cooking", "FirstAid"]


def _load(path: Path) -> dict:
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)


def _atomic_write(path: Path, data: dict) -> None:
    tmp = str(path) + ".tmp"
    with open(tmp, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)
    os.replace(tmp, path)


def _created_item(recipe: dict):
    creates = recipe.get("wowhead", {}).get("creates")
    if isinstance(creates, list) and creates:
        return creates[0]
    return None


def _load_allowlist(path: Path) -> set:
    if path.exists():
        return set(str(s) for s in _load(path).get("keepTrainer", []))
    return set()


def build_default_index(default_path: Path) -> dict:
    """spellId -> {source, created} for WOWHEAD-certain non-trainer DEFAULT recipes."""
    index = {}
    if not default_path.exists():
        return index
    for sid, recipe in _load(default_path).get("recipes", {}).items():
        s = recipe.get("source", {})
        if s.get("certainty") == "WOWHEAD" and s.get("type") in NON_TRAINER:
            index[sid] = {"source": s, "created": _created_item(recipe)}
    return index


def reconcile_profession(sod_path: Path, default_path: Path, allowlist: set) -> tuple:
    sod = _load(sod_path)
    default_index = build_default_index(default_path)
    changed = 0
    recipes = sod.get("recipes", {})
    for sid, recipe in recipes.items():
        s = recipe.get("source", {})
        if not (s.get("type") == "TRAINER" and s.get("certainty") == "DB2"):
            continue
        if sid in allowlist:
            continue
        d = default_index.get(sid)
        if not d:
            continue
        sod_created = _created_item(recipe)
        # Spell-id-reuse guard: when both buckets name the created item, require a match.
        if sod_created is not None and d["created"] is not None and sod_created != d["created"]:
            continue
        new_source = dict(d["source"])
        new_source["certainty"] = "CROSS"
        recipe["source"] = new_source
        changed += 1
    if changed:
        _atomic_write(sod_path, sod)
    return changed, len(recipes)


def main() -> int:
    parser = argparse.ArgumentParser(description="Cross-bucket source reconciliation")
    parser.add_argument("--profession", help="Profession name (e.g. Leatherworking)")
    parser.add_argument("--all", action="store_true", help="Reconcile all SoD professions")
    parser.add_argument("--sources-dir", type=Path, default=Path("Data/Sources"))
    args = parser.parse_args()

    allowlist = _load_allowlist(args.sources_dir / "sod_keep_trainer.json")
    profs = SOD_PROFS if args.all else [args.profession]
    if not args.all and not args.profession:
        print("Specify --profession NAME or --all", file=sys.stderr)
        return 1

    total_changed = 0
    for prof in profs:
        sod_path = args.sources_dir / "SoD" / f"{prof}.json"
        default_path = args.sources_dir / "TBC" / f"{prof}.json"
        if not sod_path.exists():
            print(f"  skip {prof}: {sod_path} missing", file=sys.stderr)
            continue
        changed, total = reconcile_profession(sod_path, default_path, allowlist)
        total_changed += changed
        print(f"  {prof}: reconciled {changed}/{total}", file=sys.stderr)
    print(f"Total reconciled: {total_changed}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
