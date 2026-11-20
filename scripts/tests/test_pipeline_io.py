import json
import os

import pytest

from pipeline_io import atomic_write_json, atomic_write_text


def test_atomic_write_json_matches_json_dump_bytes(tmp_path):
    data = {"a": [1, 2, {"b": "café"}], "z": None}
    p = tmp_path / "x.json"
    atomic_write_json(p, data)
    ref = tmp_path / "ref.json"
    with open(ref, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)
    assert p.read_bytes() == ref.read_bytes()


def test_atomic_write_keeps_original_on_failure(tmp_path, monkeypatch):
    p = tmp_path / "x.txt"
    p.write_text("old")

    def boom(*a, **k):
        raise OSError("nope")
    monkeypatch.setattr(os, "replace", boom)
    with pytest.raises(OSError):
        atomic_write_text(p, "new")
    assert p.read_text() == "old"
    assert list(tmp_path.glob("*.tmp")) == []


def test_atomic_write_text_is_utf8(tmp_path):
    p = tmp_path / "x.lua"
    atomic_write_text(p, "Ã© café")
    assert p.read_bytes().decode("utf-8") == "Ã© café"
