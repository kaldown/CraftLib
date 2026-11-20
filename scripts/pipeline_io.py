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


class InputFileError(ValueError):
    """An input file that exists but is not valid JSON (exit 2: input-data error)."""


def load_json(path: Path):
    try:
        with open(path, encoding="utf-8") as f:
            return json.load(f)
    except json.JSONDecodeError as e:
        # WHY re-raise: JSONDecodeError names only a line/column, and uncaught it exits 1
        # with a traceback, which reads like a gate finding. Callers map this to exit 2.
        raise InputFileError(f"{path}: malformed JSON ({e})") from None


class KeepTrainerError(ValueError):
    pass


def load_keep_trainer(path: Path) -> set:
    """The keep-trainer allowlist as a set of spell-id strings.

    Strict on purpose: a missing/misspelled key must not read as an empty list, or
    reconcile would overwrite every deliberately kept trainer recipe.
    """
    data = load_json(path)
    if not isinstance(data, dict) or not isinstance(data.get("keepTrainer"), list):
        raise KeepTrainerError(f"{path}: expected an object with a 'keepTrainer' list")
    return {str(s) for s in data["keepTrainer"]}
