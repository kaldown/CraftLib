#!/usr/bin/env python3
"""Fail if any recipe source is still cross-bucket-uncorroborated (refuse to ship a guess).

Usage:
    assert_no_unaligned.py --bucket <key> --profession <Name> [--sources-dir DIR]
"""
import argparse
import sys
from pathlib import Path

from buckets import UnknownProfessionError, add_bucket_argument, get_bucket
from pipeline_io import InputFileError, load_json

_MARK = "cross-bucket-uncorroborated"
REPO_ROOT = Path(__file__).resolve().parent.parent


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Fail on uncorroborated cross-bucket sources")
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
    bad = [sid for sid, r in data.get("recipes", {}).items()
           if r.get("source", {}).get("reviewReason") == _MARK]
    if bad:
        print(f"ERROR: bucket '{bucket.key}': {len(bad)} uncorroborated sources in {path}: {bad[:20]}",
              file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
