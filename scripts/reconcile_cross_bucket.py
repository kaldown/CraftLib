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
import csv
import json
import os
import sys
from pathlib import Path

SOD_VERSION = "1.15.8.67156"

INHERIT_TYPES = {"DROP", "VENDOR", "QUEST", "REPUTATION"}      # STARTER/DISCOVERY excluded (no cost/itemId)
INHERIT_CERTAINTY = {"WOWHEAD", "MANUAL", "DB2"}               # WOWHEAD + hand-verified MANUAL + DB2

SOD_PROFS = ["Alchemy", "Blacksmithing", "Enchanting", "Engineering",
             "Leatherworking", "Tailoring", "Cooking", "FirstAid"]


def load_itemsparse(path) -> dict:
    """itemId(str) -> {BuyPrice:int, MinFactionID:int}. Missing file -> {} (caller fails closed)."""
    out = {}
    p = Path(path)
    if not p.exists():
        return out
    with open(p, newline="", encoding="utf-8") as f:
        for row in csv.DictReader(f):
            try:
                out[row["ID"]] = {"BuyPrice": int(row.get("BuyPrice") or 0),
                                  "MinFactionID": int(row.get("MinFactionID") or 0)}
            except (KeyError, ValueError):
                continue
    return out


def _corroborated(source: dict, itemsparse: dict) -> bool:
    """True only when the SoD/Era DB2 confirms the inherited source's plan item + cost/faction."""
    item_id = source.get("itemId")
    if item_id is None:
        return False                              # all INHERIT_TYPES carry an itemId in practice
    it = itemsparse.get(str(item_id))
    if it is None:
        return False
    t = source.get("type")
    if t == "VENDOR":
        return source.get("cost") is not None and it["BuyPrice"] == source["cost"]
    if t == "REPUTATION":
        if it["MinFactionID"] == 0:
            return False
        cost = source.get("cost")
        return cost is None or it["BuyPrice"] == cost
    return True                                   # DROP / QUEST: existence is sufficient


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
    """spellId -> {source, created} for inherit-eligible non-trainer DEFAULT recipes."""
    index = {}
    if not default_path.exists():
        return index
    for sid, recipe in _load(default_path).get("recipes", {}).items():
        s = recipe.get("source", {})
        if s.get("certainty") in INHERIT_CERTAINTY and s.get("type") in INHERIT_TYPES:
            index[sid] = {"source": s, "created": _created_item(recipe)}
    return index


def reconcile_profession(sod_path, default_path, allowlist, itemsparse) -> tuple:
    sod = _load(sod_path)
    default_index = build_default_index(default_path)
    inherited = needs_review = 0
    recipes = sod.get("recipes", {})
    for sid, recipe in recipes.items():
        s = recipe.get("source", {})
        if not (s.get("type") == "TRAINER" and (
                s.get("certainty") == "DB2" or
                (s.get("certainty") == "WOWHEAD" and s.get("needsReview")))):
            continue
        if sid in allowlist:
            continue
        d = default_index.get(sid)
        if not d:
            continue
        sod_created = _created_item(recipe)
        if sod_created is not None and d["created"] is not None and sod_created != d["created"]:
            continue                              # spell-id-reuse guard
        if _corroborated(d["source"], itemsparse):
            new_source = dict(d["source"])
            new_source["certainty"] = "CROSS"
            recipe["source"] = new_source
            inherited += 1
        else:
            recipe["source"] = {"type": "TRAINER", "certainty": "DB2",
                                "needsReview": True, "reviewReason": "cross-bucket-uncorroborated"}
            needs_review += 1
    if inherited or needs_review:
        _atomic_write(sod_path, sod)
    return inherited, len(recipes), needs_review


def main() -> int:
    parser = argparse.ArgumentParser(description="Cross-bucket source reconciliation")
    parser.add_argument("--profession", help="Profession name (e.g. Leatherworking)")
    parser.add_argument("--all", action="store_true", help="Reconcile all SoD professions")
    parser.add_argument("--sources-dir", type=Path, default=Path("Data/Sources"))
    parser.add_argument("--db2-itemsparse", type=Path,
                        default=Path(f"vendor/db2-parser/artifacts/{SOD_VERSION}/ItemSparse.csv"))
    args = parser.parse_args()

    allowlist = _load_allowlist(args.sources_dir / "sod_keep_trainer.json")
    itemsparse = load_itemsparse(args.db2_itemsparse)
    if not itemsparse:
        print(f"  WARNING: no ItemSparse data from {args.db2_itemsparse}; "
              f"all corroborations will fail closed (needsReview)", file=sys.stderr)
    profs = SOD_PROFS if args.all else [args.profession]
    if not args.all and not args.profession:
        print("Specify --profession NAME or --all", file=sys.stderr)
        return 1

    total_inherited = 0
    for prof in profs:
        sod_path = args.sources_dir / "SoD" / f"{prof}.json"
        default_path = args.sources_dir / "TBC" / f"{prof}.json"
        if not sod_path.exists():
            print(f"  skip {prof}: {sod_path} missing", file=sys.stderr)
            continue
        inherited, total, needs_review = reconcile_profession(
            sod_path, default_path, allowlist, itemsparse)
        total_inherited += inherited
        print(f"  {prof}: inherited {inherited}/{total}, needsReview {needs_review}", file=sys.stderr)
    print(f"Total inherited: {total_inherited}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
