#!/usr/bin/env python3
"""Cross-bucket source reconciliation (Layer 1).

Corrects over-confident SoD TRAINER/DB2 source guesses by inheriting the
Wowhead-verified non-trainer source of the SAME spell from the DEFAULT (TBC)
bucket. Deterministic and idempotent: re-derived from DEFAULT sources every run,
so it does not depend on extract's preserve list.

Usage:
    python scripts/reconcile_cross_bucket.py --bucket sod --profession Leatherworking
    python scripts/reconcile_cross_bucket.py --bucket sod --all
"""
import argparse
import sys
from pathlib import Path

from buckets import (INHERIT_CERTAINTY, INHERIT_TYPES, UnknownProfessionError,
                     add_bucket_argument, get_bucket)
from db2 import ColumnContractError, load_csv_checked
from pipeline_io import KeepTrainerError, atomic_write_json, load_json, load_keep_trainer

REPO_ROOT = Path(__file__).resolve().parent.parent


def load_itemsparse(path) -> dict:
    """itemId(str) -> {BuyPrice:int, MinFactionID:int}.

    Raises on a missing file/column or a non-integer value: an empty index would make
    every corroboration fail closed and silently demote real inherited sources.
    """
    out = {}
    for row in load_csv_checked(Path(path), "ItemSparse", ("ID", "BuyPrice", "MinFactionID")):
        try:
            # A blank cell is how the dump writes 0.
            out[row["ID"]] = {"BuyPrice": int(row["BuyPrice"] or 0),
                              "MinFactionID": int(row["MinFactionID"] or 0)}
        except ValueError:
            raise ColumnContractError(
                f"ItemSparse item {row['ID']}: non-integer BuyPrice/MinFactionID "
                f"({row['BuyPrice']!r}/{row['MinFactionID']!r}) in {path}") from None
    return out


def _corroborated(source: dict, itemsparse: dict) -> bool:
    """True only when the SoD/Era DB2 confirms the inherited source's plan item + cost/faction."""
    if source.get("type") in ("STARTER", "DISCOVERY"):
        return True   # structural source: no cost/faction to cross-check (Wowhead-verified in the default bucket)
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


def _created_item(recipe: dict):
    creates = recipe.get("wowhead", {}).get("creates")
    if isinstance(creates, list) and creates:
        return creates[0]
    return None


def build_default_index(default_path: Path) -> dict:
    """spellId -> {source, created} for inherit-eligible non-trainer DEFAULT recipes."""
    index = {}
    for sid, recipe in load_json(default_path).get("recipes", {}).items():
        s = recipe.get("source", {})
        if s.get("certainty") in INHERIT_CERTAINTY and s.get("type") in INHERIT_TYPES:
            index[sid] = {"source": s, "created": _created_item(recipe)}
    return index


def reconcile_profession(sod_path, default_path, allowlist, itemsparse) -> tuple:
    sod = load_json(sod_path)
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
        atomic_write_json(sod_path, sod)
    return inherited, len(recipes), needs_review


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="Cross-bucket source reconciliation")
    add_bucket_argument(parser)  # the CHILD bucket; its parent comes from the registry
    parser.add_argument("--profession", help="Profession name (e.g. Leatherworking)")
    parser.add_argument("--all", action="store_true", help="Reconcile all of the bucket's professions")
    parser.add_argument("--sources-dir", type=Path, default=Path("Data/Sources"))
    parser.add_argument("--db2-itemsparse", type=Path, default=None)
    args = parser.parse_args(argv)

    child = get_bucket(args.bucket)
    if child.reconcile_parent is None:
        print(f"ERROR: bucket {child.key} declares no reconcile parent", file=sys.stderr)
        return 1
    parent = get_bucket(child.reconcile_parent)
    if args.all == bool(args.profession):
        print("ERROR: specify exactly one of --profession NAME or --all", file=sys.stderr)
        return 1
    try:
        profs = [p for p in child.professions] if args.all else [child.profession(args.profession).folder]
    except UnknownProfessionError as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 1

    # Preflight every input before touching any file: a half-reconciled bucket is worse than none.
    paths = {}
    for prof in profs:
        for b in (child, parent):
            f = args.sources_dir / b.folder / f"{prof}.json"
            if not f.exists():
                print(f"ERROR: bucket '{child.key}': sources file missing: {f}", file=sys.stderr)
                return 2
        paths[prof] = (args.sources_dir / child.folder / f"{prof}.json",
                       args.sources_dir / parent.folder / f"{prof}.json")

    allowlist = set()
    if child.keep_trainer_file is not None:
        keep_path = args.sources_dir / child.keep_trainer_file
        if not keep_path.exists():
            print(f"ERROR: bucket '{child.key}': keep-trainer file missing: {keep_path}", file=sys.stderr)
            return 2
        try:
            allowlist = load_keep_trainer(keep_path)
        except KeepTrainerError as e:
            print(f"ERROR: bucket '{child.key}': {e}", file=sys.stderr)
            return 2

    its_path = args.db2_itemsparse or (
        REPO_ROOT / "vendor" / "db2-parser" / "artifacts" / child.build / "ItemSparse.csv")
    try:
        itemsparse = load_itemsparse(its_path)
    except ColumnContractError as e:
        print(f"ERROR: bucket '{child.key}': {e}", file=sys.stderr)
        return 2

    total_inherited = 0
    for prof in profs:
        child_path, parent_path = paths[prof]
        inherited, total, needs_review = reconcile_profession(
            child_path, parent_path, allowlist, itemsparse)
        total_inherited += inherited
        print(f"  {prof}: inherited {inherited}/{total}, needsReview {needs_review}", file=sys.stderr)
    print(f"Total inherited: {total_inherited}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
