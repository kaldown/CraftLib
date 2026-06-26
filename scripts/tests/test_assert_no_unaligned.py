"""Tests for assert_no_unaligned.py release gate."""
import json
import sys

import pytest

import assert_no_unaligned as au


def _write_sources(tmp_path, recipes: dict) -> str:
    """Write a sources JSON file and return its path string."""
    path = tmp_path / "sources.json"
    path.write_text(json.dumps({"recipes": recipes}))
    return str(path)


def test_uncorroborated_returns_1_and_names_spell(tmp_path, monkeypatch, capsys):
    """A file with reviewReason == cross-bucket-uncorroborated -> exit 1, stderr names the spell."""
    path = _write_sources(tmp_path, {
        "12345": {"source": {"type": "TRAINER", "reviewReason": "cross-bucket-uncorroborated"}},
    })
    monkeypatch.setattr(sys, "argv", ["assert_no_unaligned.py", path])
    assert au.main() == 1
    captured = capsys.readouterr()
    assert "ERROR" in captured.err
    assert "12345" in captured.err


def test_clean_file_returns_0(tmp_path, monkeypatch):
    """A file with normal source types and no reviewReason -> exit 0."""
    path = _write_sources(tmp_path, {
        "11111": {"source": {"type": "TRAINER"}},
        "22222": {"source": {"type": "VENDOR", "cost": 100}},
        "33333": {"source": {"type": "DROP"}},
    })
    monkeypatch.setattr(sys, "argv", ["assert_no_unaligned.py", path])
    assert au.main() == 0


def test_bare_needs_review_no_review_reason_returns_0(tmp_path, monkeypatch):
    """A recipe with needsReview=True but NO reviewReason (v0.8.0 conservative tail) -> exit 0.

    This is the crux distinction: the conservative tail MUST NOT be blocked by this gate.
    Only the explicit cross-bucket-uncorroborated marker blocks release.
    """
    path = _write_sources(tmp_path, {
        "55555": {"source": {"type": "TRAINER", "needsReview": True}},
    })
    monkeypatch.setattr(sys, "argv", ["assert_no_unaligned.py", path])
    assert au.main() == 0


def test_no_path_argument_returns_1(monkeypatch, capsys):
    """Called with no file argument -> exit 1."""
    monkeypatch.setattr(sys, "argv", ["assert_no_unaligned.py"])
    assert au.main() == 1
