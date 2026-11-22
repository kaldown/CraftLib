#!/usr/bin/env python3
"""Read the recipe tables of a bucket's Wowhead guide pages into guide_facts.json.

The registry names the guide pages (Bucket.wowhead_guides). Each is taken from the folder
of pages saved from a browser (--pages-dir), else the page cache
(<sources>/<Folder>/.wowhead_cache/, not tracked), else the network: one request per page,
with the browser header set, a pause after each, and never for a page already cached
unless --force. A page that answers with Wowhead's JavaScript challenge is reported and
left alone.

Writes <sources>/<Folder>/guide_facts.json (tracked): per spell, and per recipe item, the
skill, a source keyword, ids and a Merchant's Favor amount; no page text. A page that could
not be read keeps the facts already stored for it, so an offline run changes nothing. The
wiki enrich step (fetch_wiki_sources.py) reads the file as evidence below DB2.

Usage:
    python scripts/fetch_wowhead_guides.py --bucket forever [--offline] [--force]
        [--pages-dir <folder>] [--inspect]

--inspect parses and prints what each page yields (tables, rows, rows skipped and why,
headers this parser does not know, source cells without a keyword) and writes nothing:
run it after any change of the pages or the parser, before relying on the facts.

Exit codes follow pipeline.py: 0 ok (unavailable pages are warnings: guide facts are
evidence, not a gate); 1 usage/config (the bucket names no guide pages, a missing
--pages-dir); 2 input data (a page in a format this parser cannot read, a malformed
facts file).
"""
import argparse
import sys
from pathlib import Path

import wowhead
import wowhead_guide
from buckets import add_bucket_argument, get_bucket
from pipeline_io import atomic_write_json

REPO_ROOT = Path(__file__).resolve().parent.parent
FACTS_FILE = "guide_facts.json"


def _counts(counter) -> "list[str]":
    return [f"{key} ({n})" for key, n in sorted(counter.items(), key=lambda kv: (-kv[1], kv[0]))]


def print_report(path: str, origin: str, facts) -> None:
    r = facts.report
    tables = ", ".join(f"{k} {n}" for k, n in sorted(r.tables.items())) or "none"
    print(f"{path} [{origin}]: tables {tables}; rows {r.rows}; spells {len(facts.spells)}, "
          f"recipe items {len(facts.items)}, smelts {len(facts.smelts)}")
    for line in _counts(r.unknown_headers):
        print(f"  unknown header: {line}")
    for line in _counts(r.skipped):
        print(f"  skipped: {line}")
    for line in _counts(r.unread_sources):
        print(f"  source without a keyword: {line}")


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Read recipe facts from Wowhead guide tables")
    add_bucket_argument(parser)
    parser.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources",
                        help="Base sources directory (bucket folder added automatically)")
    parser.add_argument("--pages-dir", type=Path,
                        help="folder of pages saved from a browser (used before the cache)")
    parser.add_argument("--offline", action="store_true",
                        help="never request: saved and cached pages only")
    parser.add_argument("--force", action="store_true",
                        help="request a page again even when it is cached")
    parser.add_argument("--delay", type=float, default=5.0,
                        help="seconds to wait after every request (default 5)")
    parser.add_argument("--inspect", action="store_true",
                        help="print what each page yields and write nothing")
    return parser


def main(argv: "list[str] | None" = None) -> int:
    args = build_parser().parse_args(argv)
    bucket = get_bucket(args.bucket)
    if not bucket.wowhead_guides:
        print(f"ERROR: bucket '{bucket.key}' has no guide pages (registry wowhead_guides)",
              file=sys.stderr)
        return 1
    folder = args.sources_dir / bucket.folder
    try:
        store = wowhead.PageStore(folder / ".wowhead_cache", saved_dir=args.pages_dir,
                                  offline=args.offline, force=args.force, delay=args.delay)
    except FileNotFoundError as e:
        print(f"ERROR: bucket '{bucket.key}': {e}", file=sys.stderr)
        return 1

    facts_file = folder / FACTS_FILE
    try:
        existing = wowhead_guide.load_facts(facts_file)
        pages = {}
        for path in bucket.wowhead_guides:
            page = store.get(wowhead.guide_url(bucket, path))
            if page is None:
                pages[path] = None
                continue
            facts = wowhead_guide.parse_page(page.text, path)
            pages[path] = (facts, page.fetched)
            if args.inspect:
                print_report(path, page.origin, facts)
            for header, n in facts.report.unknown_headers.items():
                # Never silent: a new table shape may hold recipes this parser misses.
                print(f"WARNING: {path}: {n} table(s) with a header this parser does not "
                      f"know: {header}", file=sys.stderr)
    except (wowhead_guide.GuideError, ValueError) as e:
        print(f"ERROR: bucket '{bucket.key}': {e}", file=sys.stderr)
        return 2

    read = [p for p, entry in pages.items() if entry is not None]
    for path in bucket.wowhead_guides:
        if pages[path] is not None:
            continue
        if path in ((existing or {}).get("pages") or {}):
            print(f"WARNING: {path}: not available; kept the facts stored for it",
                  file=sys.stderr)
        else:
            print(f"WARNING: {path}: not available and no stored facts", file=sys.stderr)

    doc = wowhead_guide.build_doc(pages, existing)
    summary = (f"{len(read)} of {len(bucket.wowhead_guides)} pages read, {store.requests} "
               f"requests; {len(doc['spells'])} spells, {len(doc['items'])} recipe items, "
               f"{len(doc['smelts'])} smelts")
    if args.inspect:
        print(f"\n{summary} (nothing written)")
        return 0
    folder.mkdir(parents=True, exist_ok=True)
    atomic_write_json(facts_file, doc)
    print(f"Wrote {facts_file}: {summary}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
