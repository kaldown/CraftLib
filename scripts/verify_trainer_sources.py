#!/usr/bin/env python3
"""Resumable, throttled per-spell verifier for a bucket's trainer tail (Layer 4).

Runs for buckets whose registry entry sets verify_trainers (today SoD). For
recipes still typed TRAINER/DB2 after cross-bucket reconciliation, fetch the
per-spell page on the bucket's Wowhead subdomain and reconcile against
Wowhead's source array:
  - [6] or trainingcost -> keep TRAINER (upgrade to WOWHEAD)
  - [5]/[2]/[4]/[10]/[7] -> reclassify VENDOR/DROP/QUEST/STARTER/DISCOVERY (first
                            match in that order), flagged needsReview
  - none of those codes on a genuinely-parsed page (empty, crafted-only, or only
    unmapped codes such as 3/11/12) -> keep TRAINER + needsReview

Never emits PENDING. Idempotent + resumable via a sidecar checkpoint. Atomic
writes (temp + os.replace) make it Ctrl-C safe. Stdlib only.

Usage:
    python scripts/verify_trainer_sources.py --bucket sod --profession Leatherworking
    python scripts/verify_trainer_sources.py --bucket sod --profession Leatherworking --limit 20
"""
import argparse
import gzip
import json
import random
import re
import sys
import time
import urllib.error
import urllib.request
from datetime import date
from pathlib import Path

from buckets import UnknownProfessionError, add_bucket_argument, get_bucket
from pipeline_io import InputFileError, atomic_write_json, load_json
from wowhead import (ACQUISITION_PRIORITY, CRAFTED, HEADERS, TRAINER, fix_js_object,
                     g_spells_extend_pattern, spell_url)

REPO_ROOT = Path(__file__).resolve().parent.parent

_BACKOFF = [5, 15, 45, 120]
_TERMINAL = {"done", "needsReview"}


def _FETCH(url: str):
    """Single GET, gzip-aware. Returns body text, "" on HTTP error, None on network error.

    "" (empty) signals a server-side block worth retrying; None signals a hard
    transport error. Separated so run() can back off appropriately.
    """
    try:
        req = urllib.request.Request(url, headers=HEADERS)
        with urllib.request.urlopen(req, timeout=30) as resp:
            body = resp.read()
            if (resp.headers.get("Content-Encoding") or "") == "gzip":
                body = gzip.decompress(body)
            return body.decode("utf-8", "replace")
    except urllib.error.HTTPError as e:
        if e.code in (403, 429, 503):
            return ""  # retryable block
        return None
    except (urllib.error.URLError, TimeoutError, OSError):
        return None


def parse_spell_page(html: str, spell_id: int, expected_name: str):
    """Return {'source':[...], 'trainingCost':int?} only if the page genuinely
    parsed AND the name matches (soft-block / wrong-page guard). Else None."""
    if not html:
        return None
    m = re.search(g_spells_extend_pattern(spell_id), html)
    if not m:
        return None
    for text in (m.group(1), fix_js_object(m.group(1))):
        try:
            blob = json.loads(text)
            break
        except json.JSONDecodeError:
            blob = None
    if blob is None:
        return None
    name = blob.get("name", "")
    if name.strip().lower() != expected_name.strip().lower():
        return None
    out = {"source": blob.get("source", [])}
    if "trainingcost" in blob:
        out["trainingCost"] = blob["trainingcost"]
    return out


def classify(source_array, has_training_cost: bool):
    """(decisionType, needsReview). Conservative: keep TRAINER unless there is
    positive non-trainer evidence."""
    types = source_array or []
    if TRAINER in types or has_training_cost:
        return ("TRAINER", False)
    meaningful = [c for c in types if c != CRAFTED]
    if not meaningful:
        return ("TRAINER", True)  # no acquisition evidence -> keep + flag
    for code, decision in ACQUISITION_PRIORITY:
        if code in types:
            return (decision, True)
    return ("TRAINER", True)


def _apply(recipe: dict, decision: str, needs_review: bool, training_cost=None) -> None:
    src = {"type": decision, "certainty": "WOWHEAD"}
    # Preserve a known recipe itemId if the prior source carried one.
    item_id = recipe.get("source", {}).get("itemId")
    if decision in ("DROP", "VENDOR", "QUEST") and item_id is not None:
        src["itemId"] = item_id
    if decision == "TRAINER" and training_cost is not None:
        src["trainingCost"] = training_cost
    if needs_review:
        src["needsReview"] = True
    recipe["source"] = src


def run(sources_path: Path, state_dir: Path, bucket,
        base_delay: float = 1.5, on_block: str = "sleep", limit: int = 0) -> int:
    data = load_json(sources_path)
    state_dir.mkdir(parents=True, exist_ok=True)
    state_path = state_dir / sources_path.name
    state = load_json(state_path) if state_path.exists() else {"version": 1, "spells": {}}
    spells = state["spells"]

    candidates = []
    for sid, recipe in data.get("recipes", {}).items():
        s = recipe.get("source", {})
        if s.get("type") == "TRAINER" and s.get("certainty") == "DB2" \
                and s.get("reviewReason") != "cross-bucket-uncorroborated":
            if spells.get(sid, {}).get("status") in _TERMINAL:
                continue
            candidates.append(sid)
    candidates.sort(key=lambda x: int(x))
    if limit:
        candidates = candidates[:limit]
    print(f"  {sources_path.stem}: {len(candidates)} trainer/DB2 to verify", file=sys.stderr)

    consecutive_blocks = 0
    failed_ids = []  # ids that ended 'failed' in THIS run (stale state from earlier runs is retried above)
    for sid in candidates:
        recipe = data["recipes"][sid]
        name = recipe.get("name", "")
        url = spell_url(bucket, int(sid))
        parsed = None
        for attempt in range(len(_BACKOFF) + 1):
            html = _FETCH(url)
            parsed = parse_spell_page(html, int(sid), name) if html else None
            if parsed is not None:
                break
            wait = _BACKOFF[min(attempt, len(_BACKOFF) - 1)]
            print(f"    spell {sid}: no valid page (attempt {attempt + 1}); backoff {wait}s",
                  file=sys.stderr)
            time.sleep(wait)
        if parsed is None:
            consecutive_blocks += 1
            spells[sid] = {"status": "failed", "attempts": spells.get(sid, {}).get("attempts", 0) + 1,
                           "lastError": "no-valid-page"}
            failed_ids.append(sid)
            atomic_write_json(state_path, state)
            if consecutive_blocks >= 3:
                if on_block == "exit":
                    print("  Persistent block -> saved checkpoint, exiting for resume.", file=sys.stderr)
                    print(f"  Failed spells: {failed_ids}", file=sys.stderr)
                    return 2
                print("  Persistent block -> long sleep, then continue.", file=sys.stderr)
                time.sleep(_BACKOFF[-1])
                consecutive_blocks = 0
            continue
        consecutive_blocks = 0
        decision, needs_review = classify(parsed["source"], "trainingCost" in parsed)
        _apply(recipe, decision, needs_review, parsed.get("trainingCost"))
        atomic_write_json(sources_path, data)
        spells[sid] = {"status": "needsReview" if needs_review else "done",
                       "fetchedAt": date.today().isoformat(),
                       "attempts": spells.get(sid, {}).get("attempts", 0) + 1,
                       "decision": decision}
        atomic_write_json(state_path, state)
        print(f"    spell {sid} ({name}): -> {decision}{' [review]' if needs_review else ''}",
              file=sys.stderr)
        time.sleep(base_delay + random.uniform(0, 0.5) if base_delay else 0)

    review = [sid for sid, st in spells.items() if st.get("status") == "needsReview"]
    print(f"  Done. needsReview: {len(review)} -> {review[:20]}", file=sys.stderr)
    if failed_ids:
        # A pipeline must not read a run with unverified spells as success.
        print(f"  ERROR: {len(failed_ids)} spell(s) failed verification: {failed_ids}", file=sys.stderr)
        return 2
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Resumable trainer-tail verifier")
    add_bucket_argument(parser)
    parser.add_argument("--profession", required=True)
    # Repo-rooted like every other stage: a cwd-relative default rewrote whatever
    # Data/Sources happened to sit under the current directory.
    parser.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources")
    parser.add_argument("--base-delay", type=float, default=1.5)
    parser.add_argument("--on-block", choices=["sleep", "exit"], default="sleep")
    parser.add_argument("--limit", type=int, default=0)
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)

    bucket = get_bucket(args.bucket)
    if not bucket.verify_trainers:
        print(f"ERROR: bucket '{bucket.key}' does not use trainer verification "
              f"(verify_trainers is false)", file=sys.stderr)
        return 1
    try:
        prof = bucket.profession(args.profession)
    except UnknownProfessionError as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 1
    sources_path = args.sources_dir / bucket.folder / f"{prof.folder}.json"
    state_dir = args.sources_dir / bucket.folder / ".fetch_state"
    if not sources_path.exists():
        print(f"ERROR: bucket '{bucket.key}': sources file not found: {sources_path}", file=sys.stderr)
        return 2
    try:
        return run(sources_path, state_dir, bucket,
                   base_delay=args.base_delay, on_block=args.on_block, limit=args.limit)
    except InputFileError as e:   # raised by the initial loads, before any fetch
        print(f"ERROR: bucket '{bucket.key}': {e}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    sys.exit(main())
