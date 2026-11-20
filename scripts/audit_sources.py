#!/usr/bin/env python3
"""Audit recipe source classifications (Layer 5).

Two checks, offline:
  1. Wowhead cross-check: where a recipe stores wowhead.source, flag if our
     source.type's expected acquisition code is absent (CRAFTED=1-only and empty
     arrays ignored; REPUTATION skipped; TRAINER excused if trainingCost present).
  2. Cross-bucket consistency: a child-bucket TRAINER whose reconcile-parent
     same-spell entry is a trusted non-trainer source (created items agree) is flagged.

Exit 1 on any hard finding unless --warn-only. needsReview entries are warnings.
Exit 2 on an input error: a sources folder the registry does not know, a missing
bucket folder, parent twin or keep-trainer file, or a malformed JSON file.
"""
import argparse
import glob
import os
import sys
from pathlib import Path

from buckets import (BUCKETS, INHERIT_CERTAINTY, INHERIT_TYPES, UnknownBucketError,
                     bucket_for_folder)
from pipeline_io import InputFileError, KeepTrainerError, load_json, load_keep_trainer
from wowhead import EXPECTED_CODE as EXPECT

REPO_ROOT = Path(__file__).resolve().parent.parent


def _created(recipe):
    c = recipe.get("wowhead", {}).get("creates")
    return c[0] if isinstance(c, list) and c else None


def _has_training_cost(recipe):
    wh = recipe.get("wowhead", {})
    return "trainingCost" in wh or "trainingcost" in wh


class AuditInputError(RuntimeError):
    pass


def validate_inputs(sources_dir: Path, only_bucket=None) -> None:
    """Raise AuditInputError if an input the audit needs is missing.

    WHY: a gate that treats missing data as empty passes green without running
    check 2 (or any check). Every in-scope bucket needs its folder with at least
    one profession file; a bucket with a parent also needs the parent folder, the
    parent twin of every child file, and its keep-trainer file.
    """
    scope = list(BUCKETS.values()) if only_bucket is None else [BUCKETS[only_bucket.key]]
    for b in scope:
        folder = sources_dir / b.folder
        files = sorted(folder.glob("*.json")) if folder.is_dir() else []
        if not files:
            raise AuditInputError(f"bucket '{b.key}': no sources found in {folder}")
        if b.reconcile_parent is None:
            continue
        parent = BUCKETS[b.reconcile_parent]
        if not (sources_dir / parent.folder).is_dir():
            raise AuditInputError(
                f"bucket '{b.key}': parent folder missing: {sources_dir / parent.folder}")
        for f in files:
            twin = sources_dir / parent.folder / f.name
            if not twin.is_file():
                raise AuditInputError(f"bucket '{b.key}': parent sources file missing: {twin}")
        if b.keep_trainer_file is not None and not (sources_dir / b.keep_trainer_file).is_file():
            raise AuditInputError(
                f"bucket '{b.key}': keep-trainer file missing: {sources_dir / b.keep_trainer_file}")


def audit(sources_dir: Path, only_bucket=None):
    """Return (hard, warn). Raises UnknownBucketError for a folder the registry does not know.

    only_bucket: a Bucket to restrict to (check 1 on its folder, check 2 only if it has a parent).
    """
    hard, warn = [], []
    buckets = {}
    for p in sorted(glob.glob(os.path.join(str(sources_dir), "*", "*.json"))):
        folder = os.path.basename(os.path.dirname(p))
        bucket_for_folder(folder)   # fail loud on an unregistered folder rather than guess its hardness
        prof = os.path.basename(p)[:-5]
        buckets.setdefault(folder, {})[prof] = load_json(Path(p))

    # Check 1: Wowhead cross-check. Hardness comes from the registry (audit_hard).
    for folder, profs in buckets.items():
        bucket = bucket_for_folder(folder)
        if only_bucket is not None and bucket.key != only_bucket.key:
            continue
        for prof, data in profs.items():
            for sid, recipe in data.get("recipes", {}).items():
                s = recipe.get("source", {})
                t = s.get("type")
                if t == "REPUTATION":
                    continue
                if s.get("needsReview"):
                    warn.append((folder, prof, sid, recipe.get("name"), "needsReview", t, None))
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
                    finding = (folder, prof, sid, recipe.get("name"), "wowhead-mismatch", t, whsrc)
                    (hard if bucket.audit_hard else warn).append(finding)

    # Check 2: cross-bucket consistency, for every bucket that declares a reconcile parent
    # (a child TRAINER whose parent twin is a trusted non-trainer source, created items agree).
    for child in BUCKETS.values():
        if child.reconcile_parent is None:
            continue
        if only_bucket is not None and child.key != only_bucket.key:
            continue
        parent = BUCKETS[child.reconcile_parent]
        # Spell IDs in the keep-trainer file are intentional child-specific trainer recipes.
        keep_trainer = set()
        if child.keep_trainer_file is not None:
            keep_path = sources_dir / child.keep_trainer_file
            # Absence is rejected by validate_inputs (main); audit() itself stays usable on partial trees.
            if keep_path.exists():
                keep_trainer = load_keep_trainer(keep_path)
        parent_index = {}
        for prof, data in buckets.get(parent.folder, {}).items():
            for sid, recipe in data.get("recipes", {}).items():
                s = recipe.get("source", {})
                if s.get("certainty") in INHERIT_CERTAINTY and s.get("type") in INHERIT_TYPES:
                    parent_index[sid] = (s.get("type"), _created(recipe))
        for prof, data in buckets.get(child.folder, {}).items():
            for sid, recipe in data.get("recipes", {}).items():
                s = recipe.get("source", {})
                if s.get("type") != "TRAINER":
                    continue
                if sid in keep_trainer:
                    continue
                if s.get("reviewReason") == "cross-bucket-uncorroborated":
                    continue   # owned by assert_no_unaligned (avoid double-gating)
                d = parent_index.get(sid)
                if not d:
                    continue
                child_created = _created(recipe)
                if child_created is not None and d[1] is not None and child_created != d[1]:
                    continue
                hard.append((child.folder, prof, sid, recipe.get("name"), "cross-bucket", d[0], None))

    return hard, warn


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Audit recipe source classifications")
    # Repo-rooted like every other stage (a cwd-relative default depended on where it ran).
    parser.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources")
    parser.add_argument("--bucket", choices=list(BUCKETS), help="Restrict the audit to one bucket")
    parser.add_argument("--warn-only", action="store_true", help="Exit 0 even on hard findings")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)

    only = BUCKETS[args.bucket] if args.bucket else None
    try:
        # Unknown folders first (names the folder), then required inputs, then the audit.
        for p in sorted(args.sources_dir.glob("*/*.json")):
            bucket_for_folder(p.parent.name)
        validate_inputs(args.sources_dir, only)
        hard, warn = audit(args.sources_dir, only)
    except (UnknownBucketError, AuditInputError, KeepTrainerError, InputFileError) as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 2
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
