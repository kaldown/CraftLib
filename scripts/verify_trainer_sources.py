#!/usr/bin/env python3
"""Resumable, throttled per-spell verifier for the SoD trainer tail (Layer 4).

For SoD recipes still typed TRAINER/DB2 after cross-bucket reconciliation, fetch
the per-spell /classic/ page and reconcile against Wowhead's source array:
  - [6] or trainingcost -> keep TRAINER (upgrade to WOWHEAD)
  - [4]/[5]/[2]        -> reclassify QUEST/VENDOR/DROP (flagged needsReview when
                          the recipe itemId/cost is unknown)
  - no acquisition evidence on a genuinely-parsed page -> keep TRAINER + needsReview

Never emits PENDING. Idempotent + resumable via a sidecar checkpoint. Atomic
writes (temp + os.replace) make it Ctrl-C safe. Stdlib only.

Usage:
    python scripts/verify_trainer_sources.py --profession Leatherworking --expansion sod
    python scripts/verify_trainer_sources.py --profession Leatherworking --resume
"""
import argparse
import gzip
import json
import os
import random
import re
import sys
import time
import urllib.error
import urllib.request
from datetime import date
from pathlib import Path

_HEADERS = {
    "User-Agent": ("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
                   "AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15"),
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.9",
    "Accept-Encoding": "gzip",
    "Referer": "https://www.wowhead.com/",
    "Sec-Fetch-Dest": "document",
    "Sec-Fetch-Mode": "navigate",
    "Sec-Fetch-Site": "same-origin",
    "Upgrade-Insecure-Requests": "1",
}
_BACKOFF = [5, 15, 45, 120]
_TERMINAL = {"done", "needsReview"}


def _fix_js_object(js_text: str) -> str:
    return re.sub(r'(?<=[{,])(\s*)([a-zA-Z_]\w*)(\s*):', r'\1"\2"\3:', js_text)


def _FETCH(url: str):
    """Single GET, gzip-aware. Returns body text, "" on HTTP error, None on network error.

    "" (empty) signals a server-side block worth retrying; None signals a hard
    transport error. Separated so run() can back off appropriately.
    """
    try:
        req = urllib.request.Request(url, headers=_HEADERS)
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
    pattern = rf'\$\.extend\(g_spells\[{spell_id}\],\s*(\{{[^;]*?\}})\s*\)'
    m = re.search(pattern, html)
    if not m:
        return None
    for text in (m.group(1), _fix_js_object(m.group(1))):
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
    if 6 in types or has_training_cost:
        return ("TRAINER", False)
    meaningful = [c for c in types if c != 1]
    if not meaningful:
        return ("TRAINER", True)  # no acquisition evidence -> keep + flag
    if 5 in types:
        return ("VENDOR", True)
    if 2 in types:
        return ("DROP", True)
    if 4 in types:
        return ("QUEST", True)
    if 10 in types:
        return ("STARTER", True)
    if 7 in types:
        return ("DISCOVERY", True)
    return ("TRAINER", True)


def _load(path: Path) -> dict:
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)


def _atomic_write(path: Path, data: dict) -> None:
    tmp = str(path) + ".tmp"
    with open(tmp, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)
    os.replace(tmp, path)


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


def run(sources_path: Path, state_dir: Path, expansion: str = "classic",
        base_delay: float = 1.5, on_block: str = "sleep", limit: int = 0) -> int:
    data = _load(sources_path)
    state_dir.mkdir(parents=True, exist_ok=True)
    state_path = state_dir / sources_path.name
    state = _load(state_path) if state_path.exists() else {"version": 1, "spells": {}}
    spells = state["spells"]

    candidates = []
    for sid, recipe in data.get("recipes", {}).items():
        s = recipe.get("source", {})
        if s.get("type") == "TRAINER" and s.get("certainty") == "DB2":
            if spells.get(sid, {}).get("status") in _TERMINAL:
                continue
            candidates.append(sid)
    candidates.sort(key=lambda x: int(x))
    if limit:
        candidates = candidates[:limit]
    print(f"  {sources_path.stem}: {len(candidates)} trainer/DB2 to verify", file=sys.stderr)

    consecutive_blocks = 0
    for sid in candidates:
        recipe = data["recipes"][sid]
        name = recipe.get("name", "")
        url = f"https://www.wowhead.com/{expansion}/spell={sid}"
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
            _atomic_write(state_path, state)
            if consecutive_blocks >= 3:
                if on_block == "exit":
                    print("  Persistent block -> saved checkpoint, exiting for resume.", file=sys.stderr)
                    return 2
                print("  Persistent block -> long sleep, then continue.", file=sys.stderr)
                time.sleep(_BACKOFF[-1])
                consecutive_blocks = 0
            continue
        consecutive_blocks = 0
        decision, needs_review = classify(parsed["source"], "trainingCost" in parsed)
        _apply(recipe, decision, needs_review, parsed.get("trainingCost"))
        _atomic_write(sources_path, data)
        spells[sid] = {"status": "needsReview" if needs_review else "done",
                       "fetchedAt": date.today().isoformat(),
                       "attempts": spells.get(sid, {}).get("attempts", 0) + 1,
                       "decision": decision}
        _atomic_write(state_path, state)
        print(f"    spell {sid} ({name}): -> {decision}{' [review]' if needs_review else ''}",
              file=sys.stderr)
        time.sleep(base_delay + random.uniform(0, 0.5) if base_delay else 0)

    review = [sid for sid, st in spells.items() if st.get("status") == "needsReview"]
    print(f"  Done. needsReview: {len(review)} -> {review[:20]}", file=sys.stderr)
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description="Resumable SoD trainer-tail verifier")
    parser.add_argument("--profession", required=True)
    parser.add_argument("--expansion", default="sod")
    parser.add_argument("--sources-dir", type=Path, default=Path("Data/Sources"))
    parser.add_argument("--base-delay", type=float, default=1.5)
    parser.add_argument("--on-block", choices=["sleep", "exit"], default="sleep")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--resume", action="store_true", default=True)  # resume is always on
    args = parser.parse_args()

    exp_folder = {"sod": "SoD", "classic": "SoD", "tbc": "TBC"}.get(args.expansion.lower(), "SoD")
    subdomain = "classic" if args.expansion.lower() in ("sod", "classic") else args.expansion.lower()
    sources_path = args.sources_dir / exp_folder / f"{args.profession}.json"
    state_dir = args.sources_dir / exp_folder / ".fetch_state"
    if not sources_path.exists():
        print(f"Sources file not found: {sources_path}", file=sys.stderr)
        return 1
    return run(sources_path, state_dir, expansion=subdomain,
               base_delay=args.base_delay, on_block=args.on_block, limit=args.limit)


if __name__ == "__main__":
    sys.exit(main())
