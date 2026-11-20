#!/usr/bin/env python3
"""Fail if any recipe source is still PENDING (generate_recipes.py would crash).

Usage:
    assert_no_pending.py --bucket <key> --profession <Name> [--sources-dir DIR]

Seasonal recipes (truthy seasonId) are skipped when the bucket's registry entry
sets exclude_seasonal.
    WHY: generate_recipes.py drops SoD-only recipes (seasonId==2) for the Vanilla
    bucket; they will never be resolvable there, and the gate must agree with
    generate or it blocks a correctly-filtered bucket forever. Reading the same
    registry flag makes the two agree by construction instead of by hand.
"""
import argparse
import sys
from pathlib import Path

from buckets import UnknownProfessionError, add_bucket_argument, get_bucket
from pipeline_io import InputFileError, load_json

REPO_ROOT = Path(__file__).resolve().parent.parent


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Fail if any source is still PENDING")
    add_bucket_argument(parser)
    parser.add_argument("--profession", required=True)
    parser.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)

    bucket = get_bucket(args.bucket)
    try:
        prof = bucket.profession(args.profession)
    except UnknownProfessionError as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 1
    path = args.sources_dir / bucket.folder / f"{prof.folder}.json"
    if not path.is_file():
        print(f"ERROR: bucket '{bucket.key}': sources file not found: {path}", file=sys.stderr)
        return 2
    try:
        data = load_json(path)
    except InputFileError as e:
        print(f"ERROR: bucket '{bucket.key}': {e}", file=sys.stderr)
        return 2
    pending = []
    for sid, r in data.get("recipes", {}).items():
        if r.get("source", {}).get("certainty") != "PENDING":
            continue
        if bucket.exclude_seasonal and r.get("seasonId"):
            continue
        pending.append(sid)
    if pending:
        print(f"ERROR: bucket '{bucket.key}': {len(pending)} PENDING sources remain in {path}: "
              f"{pending[:20]}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
