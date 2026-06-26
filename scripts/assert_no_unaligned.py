#!/usr/bin/env python3
"""Fail if any recipe source is still cross-bucket-uncorroborated (refuse to ship a guess)."""
import json, sys
from pathlib import Path
_MARK = "cross-bucket-uncorroborated"

def main() -> int:
    if len(sys.argv) < 2:
        print("usage: assert_no_unaligned.py <sources.json>", file=sys.stderr); return 1
    data = json.loads(Path(sys.argv[1]).read_text())
    bad = [sid for sid, r in data.get("recipes", {}).items()
           if r.get("source", {}).get("reviewReason") == _MARK]
    if bad:
        print(f"ERROR: {len(bad)} uncorroborated sources in {sys.argv[1]}: {bad[:20]}", file=sys.stderr)
        return 1
    return 0

if __name__ == "__main__":
    sys.exit(main())
