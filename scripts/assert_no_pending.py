#!/usr/bin/env python3
"""Fail if any recipe source is still PENDING (generate_recipes.py would crash).

Usage:
    assert_no_pending.py <sources.json> [--exclude-seasonal]

--exclude-seasonal: skip recipes whose source JSON carries a truthy seasonId.
    WHY: the Vanilla bucket uses --exclude-seasonal in generate_recipes.py to
    drop SoD-only recipes (seasonId==2) that do not exist on a non-SoD Era
    client.  Those recipes will never be resolvable on the Vanilla pipeline,
    but that is intentional -- the gate must agree with generate to avoid
    blocking a correctly-filtered bucket.
"""
import json
import sys
from pathlib import Path


def main() -> int:
    args = sys.argv[1:]
    exclude_seasonal = "--exclude-seasonal" in args
    paths = [a for a in args if not a.startswith("-")]
    if not paths:
        print("usage: assert_no_pending.py <sources.json> [--exclude-seasonal]",
              file=sys.stderr)
        return 1
    path = Path(paths[0])
    data = json.loads(path.read_text())
    pending = []
    for sid, r in data.get("recipes", {}).items():
        if r.get("source", {}).get("certainty") != "PENDING":
            continue
        # WHY skip seasonal when flag set: seasonal recipes (seasonId truthy) are
        # excluded at generate time via --exclude-seasonal; the PENDING status is
        # irrelevant because generate never reaches them.  Treating them as gate
        # failures would block a correctly-filtered Vanilla run permanently.
        if exclude_seasonal and r.get("seasonId"):
            continue
        pending.append(sid)
    if pending:
        print(f"ERROR: {len(pending)} PENDING sources remain in {path}: {pending[:20]}",
              file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
