"""Fail-fast pipeline driver: runs every stage for a bucket, in order, from the registry.

The step list comes from the bucket registry (professions, reconcile_parent,
verify_trainers), so a bucket cannot drift from what the Makefile runs. The old
Makefile chained stages with ';' so a failed gate never stopped the run; here the
first non-zero exit stops everything and is returned as the exit code.

Step order for `all`: fetch; then per profession extract, [reconcile], enrich,
[verify-trainers], assert-no-pending, assert-no-unaligned; then the audit; then
generate for every profession; then vendor-prices. No Lua file is rewritten until
the per-profession gates and the audit have passed for the whole bucket. The
generator's own checks still run one profession at a time, so a generator failure
can leave earlier professions already rewritten.

Exit codes (this driver and every script it runs):
  0  success
  1  usage/config error or gate finding: an unknown profession, a bucket that does
     not use the requested stage, a missing DB2 build directory (wrong --version or
     --data-dir), a PENDING/uncorroborated source left by assert_no_*, or a hard
     audit finding
  2  input-data error: a missing or malformed input file, a DB2 column-contract or
     canary failure, a generate gate (GenerateError), or a failed or unusable
     Wowhead fetch
argparse itself exits 2 on bad command-line syntax (unknown flag, invalid choice,
missing required argument); this driver's own command-line checks (--steps,
--version with --all) do the same.
"""
import argparse
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path
from typing import NamedTuple

sys.path.insert(0, str(Path(__file__).resolve().parent))
from buckets import (BUCKETS, Bucket, Profession, UnknownProfessionError,  # noqa: E402
                     add_bucket_argument, get_bucket)

REPO_ROOT = Path(__file__).resolve().parent.parent
SCRIPTS = REPO_ROOT / "scripts"
DB2_DIR = REPO_ROOT / "vendor" / "db2-parser"

# Execution order of `all` (see the module docstring for why the audit precedes generate).
STEP_NAMES = ("fetch", "extract", "reconcile", "enrich", "verify-trainers",
              "assert-no-pending", "assert-no-unaligned", "audit", "generate", "vendor-prices")

# Steps that hit Wowhead: only these need the politeness delay between professions.
_NETWORK_STEPS = ("enrich", "verify-trainers")
_OFFLINE_GENERATE = frozenset({"generate", "vendor-prices"})


class Step(NamedTuple):
    name: str
    argv: list
    profession: str | None


@dataclass
class Options:
    version: str
    data_dir: Path
    sources_dir: Path
    output_dir: Path
    steps: frozenset | None = None


def _script(name: str, bucket: Bucket, prof: Profession | None = None) -> list:
    argv = [sys.executable, str(SCRIPTS / f"{name}.py"), "--bucket", bucket.key]
    if prof is not None:
        argv += ["--profession", prof.folder]
    return argv


def fetch_step(version: str) -> Step:
    # Never `latest`: builds are pinned on purpose (vendor/db2-parser/BUILDS.md).
    return Step("fetch", ["make", "-C", str(DB2_DIR), "fetch", f"VERSION={version}"], None)


def plan_all(bucket: Bucket, professions: list, opts: Options) -> list:
    src = ["--sources-dir", str(opts.sources_dir)]
    gen = ["--version", opts.version, "--data-dir", str(opts.data_dir), *src,
           "--output-dir", str(opts.output_dir)]
    steps = [fetch_step(opts.version)]
    for p in professions:
        n = p.folder
        steps.append(Step("extract", _script("extract_db2_sources", bucket, p) + [
            "--version", opts.version, "--data-dir", str(opts.data_dir),
            "--output-dir", str(opts.sources_dir)], n))
        if bucket.reconcile_parent:
            steps.append(Step("reconcile", _script("reconcile_cross_bucket", bucket, p) + [
                *src, "--db2-itemsparse",
                str(opts.data_dir / opts.version / "ItemSparse.csv")], n))
        steps.append(Step("enrich", _script("fetch_wowhead_sources", bucket, p) + src, n))
        if bucket.verify_trainers:
            # WHY --on-block exit: under a persistent Wowhead block the default "sleep"
            # waits minutes per spell before failing anyway; exiting stops the run fast,
            # and the verifier's checkpoint makes a rerun resume where it stopped.
            steps.append(Step("verify-trainers", _script("verify_trainer_sources", bucket, p)
                              + src + ["--on-block", "exit"], n))
        steps.append(Step("assert-no-pending", _script("assert_no_pending", bucket, p) + src, n))
        steps.append(Step("assert-no-unaligned", _script("assert_no_unaligned", bucket, p) + src, n))
    # WHY the audit runs before any generate: it is a hard gate for some buckets (SoD).
    # Generating per profession first let a failing audit stop the run only after every
    # Recipes.lua of the bucket had already been rewritten.
    steps.append(Step("audit", _script("audit_sources", bucket) + src, None))
    for p in professions:
        steps.append(Step("generate", _script("generate_recipes", bucket, p) + gen, p.folder))
    steps.append(Step("vendor-prices",
                      _script("generate_recipes", bucket) + ["--vendor-prices-only"] + gen, None))
    if opts.steps is not None:
        steps = [s for s in steps if s.name in opts.steps]
    return steps


def run_steps(steps, runner=subprocess.call, delay: float = 2.0, sleep=time.sleep) -> int:
    prev = None  # profession of the last network step
    for s in steps:
        # Pause before the next profession's Wowhead requests, as the old per-profession
        # `sleep 2`. WHY only network steps: the offline generate steps now run as their
        # own block after the audit, and pausing between them protects no one.
        if s.name in _NETWORK_STEPS:
            if prev is not None and s.profession != prev:
                sleep(delay)
            prev = s.profession
        print(f"=== {s.name} {s.profession or ''}".rstrip(), flush=True)
        code = runner(s.argv)
        if code != 0:
            print(f"FAILED at step {s.name} ({s.profession or ''}): exit {code}", file=sys.stderr)
            return code
    return 0


def _add_dirs(p) -> None:
    p.add_argument("--version", help="DB2 build (default: the bucket's pinned build)")
    p.add_argument("--data-dir", type=Path, default=DB2_DIR / "artifacts")
    p.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources")
    p.add_argument("--output-dir", type=Path, default=REPO_ROOT / "Data")


def _opts(bucket: Bucket, a, steps=None) -> Options:
    return Options(version=a.version or bucket.build, data_dir=a.data_dir,
                   sources_dir=a.sources_dir, output_dir=a.output_dir, steps=steps)


def _execute(steps, dry_run: bool, delay: float = 2.0) -> int:
    if dry_run:
        for s in steps:
            print(" ".join(str(x) for x in s.argv))
        return 0
    return run_steps(steps, delay=delay)


def _profs(bucket: Bucket, name: str | None) -> list:
    if name:
        return [bucket.profession(name)]
    return [bucket.profession(f) for f in bucket.professions]


def _buckets_for(a) -> list:
    return list(BUCKETS.values()) if a.all else [get_bucket(a.bucket)]


def _parse_steps(value: str):
    """--steps value -> frozenset of step names, or an error message."""
    wanted = frozenset(x.strip() for x in value.split(",") if x.strip())
    # WHY reject an empty list: "" used to mean "no filter", i.e. the whole networked
    # pipeline (extract rewrites Data/Sources in place); "," silently ran nothing.
    if not wanted:
        return None, f"--steps {value!r} names no step; valid: {', '.join(STEP_NAMES)}"
    unknown = sorted(wanted - set(STEP_NAMES))
    if unknown:
        return None, f"unknown step(s): {', '.join(unknown)}; valid: {', '.join(STEP_NAMES)}"
    return wanted, None


def _dispatch(a) -> int:
    if a.cmd == "list":
        for b in BUCKETS.values():
            print(f"{b.key} {b.build} {','.join(b.professions)}")
        return 0
    if a.cmd == "fetch":
        builds = list(dict.fromkeys(b.build for b in _buckets_for(a)))  # vanilla+sod share one
        return _execute([fetch_step(v) for v in builds], a.dry_run)
    if a.cmd == "vendor-prices":
        if a.all and a.version:
            # One build number cannot be right for every bucket (each pins its own).
            print("--version cannot be combined with --all: each bucket uses its own pinned "
                  "build; pass --bucket <key> --version <build> instead", file=sys.stderr)
            return 2
        steps = []
        for b in _buckets_for(a):
            steps += plan_all(b, [], _opts(b, a, frozenset({"vendor-prices"})))
        return _execute(steps, a.dry_run)

    bucket = get_bucket(a.bucket)
    profs = _profs(bucket, a.profession)
    if a.cmd == "generate":
        return _execute(plan_all(bucket, profs, _opts(bucket, a, _OFFLINE_GENERATE)), a.dry_run)
    wanted = None
    if a.steps is not None:
        wanted, err = _parse_steps(a.steps)
        if err:
            print(err, file=sys.stderr)
            return 2
    return _execute(plan_all(bucket, profs, _opts(bucket, a, wanted)), a.dry_run, a.delay)


def main(argv: list | None = None) -> int:
    ap = argparse.ArgumentParser(description="Registry-driven fail-fast data pipeline")
    sub = ap.add_subparsers(dest="cmd", required=True)
    sub.add_parser("list")

    f = sub.add_parser("fetch")
    g = f.add_mutually_exclusive_group(required=True)
    g.add_argument("--bucket", choices=list(BUCKETS))
    g.add_argument("--all", action="store_true")
    f.add_argument("--dry-run", action="store_true")

    al = sub.add_parser("all")
    add_bucket_argument(al)
    al.add_argument("--profession")
    al.add_argument("--steps", help="comma-separated subset of: " + ",".join(STEP_NAMES))
    al.add_argument("--delay", type=float, default=2.0)
    al.add_argument("--dry-run", action="store_true")
    _add_dirs(al)

    ge = sub.add_parser("generate")
    add_bucket_argument(ge)
    ge.add_argument("--profession")
    ge.add_argument("--dry-run", action="store_true")
    _add_dirs(ge)

    vp = sub.add_parser("vendor-prices")
    g2 = vp.add_mutually_exclusive_group(required=True)
    g2.add_argument("--bucket", choices=list(BUCKETS))
    g2.add_argument("--all", action="store_true")
    vp.add_argument("--dry-run", action="store_true")
    _add_dirs(vp)

    a = ap.parse_args(argv)
    try:
        return _dispatch(a)
    except UnknownProfessionError as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
