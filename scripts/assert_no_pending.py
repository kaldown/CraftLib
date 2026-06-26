#!/usr/bin/env python3
"""Fail if any recipe source is still PENDING (generate_recipes.py would crash)."""
import json
import sys
from pathlib import Path


def main() -> int:
    if len(sys.argv) < 2:
        print("usage: assert_no_pending.py <sources.json>", file=sys.stderr)
        return 1
    path = Path(sys.argv[1])
    data = json.loads(path.read_text())
    pending = [sid for sid, r in data.get("recipes", {}).items()
               if r.get("source", {}).get("certainty") == "PENDING"]
    if pending:
        print(f"ERROR: {len(pending)} PENDING sources remain in {path}: {pending[:20]}",
              file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
