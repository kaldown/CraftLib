"""Atomic file writes for the data pipeline.

Every pipeline script rewrites its own inputs in place, so a crash mid-write
would leave a truncated JSON/Lua file that the next stage silently misreads.
Writing to a sibling temp file and renaming makes each write all-or-nothing.
"""
import json
import os
from pathlib import Path


def atomic_write_text(path: Path, text: str) -> None:
    path = Path(path)
    # Same directory as the target: os.replace is only atomic within one filesystem.
    tmp = str(path) + ".tmp"
    try:
        # newline="" stops Windows from rewriting "\n", keeping output byte-identical.
        with open(tmp, "w", encoding="utf-8", newline="") as f:
            f.write(text)
        os.replace(tmp, path)
    except BaseException:
        # Never leave a stray .tmp behind (it would be staged by git).
        try:
            os.remove(tmp)
        except FileNotFoundError:
            pass
        raise


def atomic_write_json(path: Path, data) -> None:
    # No trailing newline and default ensure_ascii: matches the historical json.dump output.
    atomic_write_text(path, json.dumps(data, indent=2))


def load_json(path: Path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)
