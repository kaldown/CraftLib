"""Fail-fast pipeline driver: runs every stage for a bucket, in order, from the registry.

The step list comes from the bucket registry (professions, reconcile_parent,
verify_trainers), so a bucket cannot drift from what the Makefile runs. The old
Makefile chained stages with ';' so a failed gate never stopped the run; here the
first non-zero exit stops everything and is returned as the exit code.
"""
import argparse
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path
from typing import NamedTuple

sys.path.insert(0, str(Path(__file__).resolve().parent))
from buckets import BUCKETS, Bucket, Profession, add_bucket_argument, get_bucket  # noqa: E402

REPO_ROOT = Path(__file__).resolve().parent.parent
SCRIPTS = REPO_ROOT / "scripts"
DB2_DIR = REPO_ROOT / "vendor" / "db2-parser"

STEP_NAMES = ("fetch", "extract", "reconcile", "enrich", "verify-trainers",
              "assert-no-pending", "assert-no-unaligned", "generate", "audit", "vendor-prices")

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
            steps.append(Step("verify-trainers", _script("verify_trainer_sources", bucket, p) + src, n))
        steps.append(Step("assert-no-pending", _script("assert_no_pending", bucket, p) + src, n))
        steps.append(Step("assert-no-unaligned", _script("assert_no_unaligned", bucket, p) + src, n))
        steps.append(Step("generate", _script("generate_recipes", bucket, p) + gen, n))
    steps.append(Step("audit", _script("audit_sources", bucket) + src, None))
    steps.append(Step("vendor-prices",
                      _script("generate_recipes", bucket) + ["--vendor-prices-only"] + gen, None))
    if opts.steps is not None:
        steps = [s for s in steps if s.name in opts.steps]
    return steps


def run_steps(steps, runner=subprocess.call, delay: float = 2.0, sleep=time.sleep) -> int:
    polite = any(s.name in _NETWORK_STEPS for s in steps)
    prev = None
    for s in steps:
        # Pause when moving to the next profession, as the old per-profession `sleep 2`.
        if polite and prev is not None and s.profession and s.profession != prev:
            sleep(delay)
        if s.profession:
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

    if a.cmd == "list":
        for b in BUCKETS.values():
            print(f"{b.key} {b.build} {','.join(b.professions)}")
        return 0
    if a.cmd == "fetch":
        builds = list(dict.fromkeys(b.build for b in _buckets_for(a)))  # vanilla+sod share one
        return _execute([fetch_step(v) for v in builds], a.dry_run)
    if a.cmd == "vendor-prices":
        steps = []
        for b in _buckets_for(a):
            steps += plan_all(b, [], _opts(b, a, frozenset({"vendor-prices"})))
        return _execute(steps, a.dry_run)

    bucket = get_bucket(a.bucket)
    profs = _profs(bucket, a.profession)
    if a.cmd == "generate":
        return _execute(plan_all(bucket, profs, _opts(bucket, a, _OFFLINE_GENERATE)), a.dry_run)
    wanted = None
    if a.steps:
        wanted = frozenset(x.strip() for x in a.steps.split(",") if x.strip())
        unknown = sorted(wanted - set(STEP_NAMES))
        if unknown:
            print(f"unknown step(s): {', '.join(unknown)}; valid: {', '.join(STEP_NAMES)}",
                  file=sys.stderr)
            return 2
    return _execute(plan_all(bucket, profs, _opts(bucket, a, wanted)), a.dry_run, a.delay)


if __name__ == "__main__":
    sys.exit(main())
