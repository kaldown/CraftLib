#!/usr/bin/env python3
"""Audit recipe source classifications (Layer 5).

Two checks, offline:
  1. Wowhead cross-check: where a recipe stores wowhead.source, flag if our
     source.type's expected acquisition code is absent (CRAFTED=1-only and empty
     arrays ignored; REPUTATION skipped; TRAINER excused if trainingCost present).
  2. Cross-bucket consistency: a SoD TRAINER whose DEFAULT same-spell entry is a
     WOWHEAD non-trainer source (created items agree) is flagged.

Exit 1 on any hard finding unless --warn-only. needsReview entries are warnings.
"""
import argparse
import glob
import json
import os
import sys
from pathlib import Path

EXPECT = {"DROP": 2, "VENDOR": 5, "QUEST": 4, "TRAINER": 6, "STARTER": 10, "DISCOVERY": 7}
NON_TRAINER = {"DROP", "VENDOR", "QUEST", "STARTER", "DISCOVERY"}


def _created(recipe):
    c = recipe.get("wowhead", {}).get("creates")
    return c[0] if isinstance(c, list) and c else None


def _has_training_cost(recipe):
    wh = recipe.get("wowhead", {})
    return "trainingCost" in wh or "trainingcost" in wh


def audit(sources_dir: Path):
    hard, warn = [], []
    buckets = {}
    for p in sorted(glob.glob(os.path.join(str(sources_dir), "*", "*.json"))):
        flavor = os.path.basename(os.path.dirname(p))
        prof = os.path.basename(p)[:-5]
        buckets.setdefault(flavor, {})[prof] = json.load(open(p))

    # Load the keep-trainer allowlist (one level up from bucket subdirs; absent = empty)
    keep_trainer = set()
    allowlist_path = sources_dir / "sod_keep_trainer.json"
    if allowlist_path.exists():
        try:
            data = json.load(open(allowlist_path))
            keep_trainer = set(data.get("keepTrainer", []))
        except (json.JSONDecodeError, OSError):
            pass

    # Check 1: Wowhead cross-check
    # SoD mismatches are hard; DEFAULT/TBC mismatches are deferred warnings (frozen this release).
    for flavor, profs in buckets.items():
        for prof, data in profs.items():
            for sid, recipe in data.get("recipes", {}).items():
                s = recipe.get("source", {})
                t = s.get("type")
                if t == "REPUTATION":
                    continue
                if s.get("needsReview"):
                    warn.append((flavor, prof, sid, recipe.get("name"), "needsReview", t, None))
                    continue
                whsrc = recipe.get("wowhead", {}).get("source")
                if not whsrc:
                    continue
                meaningful = [c for c in whsrc if c != 1]
                if not meaningful:
                    continue
                exp = EXPECT.get(t)
                if t in EXPECT and exp not in whsrc:
                    if t == "TRAINER" and _has_training_cost(recipe):
                        continue
                    finding = (flavor, prof, sid, recipe.get("name"), "wowhead-mismatch", t, whsrc)
                    if flavor == "SoD":
                        hard.append(finding)
                    else:
                        warn.append(finding)

    # Check 2: cross-bucket consistency (SoD TRAINER vs DEFAULT WOWHEAD non-trainer)
    # Spell IDs in the keep-trainer allowlist are intentional SoD-specific trainer recipes.
    default_index = {}
    for prof, data in buckets.get("TBC", {}).items():
        for sid, recipe in data.get("recipes", {}).items():
            s = recipe.get("source", {})
            if s.get("certainty") == "WOWHEAD" and s.get("type") in NON_TRAINER:
                default_index[sid] = (s.get("type"), _created(recipe))
    for prof, data in buckets.get("SoD", {}).items():
        for sid, recipe in data.get("recipes", {}).items():
            s = recipe.get("source", {})
            if s.get("type") != "TRAINER":
                continue
            if sid in keep_trainer:
                continue
            d = default_index.get(sid)
            if not d:
                continue
            sod_created = _created(recipe)
            if sod_created is not None and d[1] is not None and sod_created != d[1]:
                continue
            hard.append(("SoD", prof, sid, recipe.get("name"), "cross-bucket", d[0], None))

    return hard, warn


def main() -> int:
    parser = argparse.ArgumentParser(description="Audit recipe source classifications")
    parser.add_argument("--sources-dir", type=Path, default=Path("Data/Sources"))
    parser.add_argument("--warn-only", action="store_true", help="Exit 0 even on hard findings")
    args = parser.parse_args()

    hard, warn = audit(args.sources_dir)
    for f in warn:
        print(f"  WARN  {f[0]}/{f[1]} spell={f[2]} {f[3]!r} [{f[4]}]", file=sys.stderr)
    for f in hard:
        print(f"  HARD  {f[0]}/{f[1]} spell={f[2]} {f[3]!r} [{f[4]}] our={f[5]} detail={f[6]}",
              file=sys.stderr)
    print(f"\nAudit: {len(hard)} hard, {len(warn)} needs-review", file=sys.stderr)
    if hard and not args.warn_only:
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
