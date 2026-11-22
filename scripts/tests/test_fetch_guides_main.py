"""fetch_wowhead_guides.py: the registry's guide pages -> <sources>/<Folder>/guide_facts.json.

Offline throughout: pages are seeded into the page cache (or a saved-pages folder), so no
test opens a socket.
"""
import dataclasses
import json

import pytest

import buckets
import fetch_wowhead_guides as fg
import wowhead
from pipeline_io import load_json
from tests.test_wowhead_guide import RECIPE_HEAD, html, recipe_row, table

GUIDES = ("guide/a", "guide/b")


@pytest.fixture
def bucket(monkeypatch):
    b = dataclasses.replace(buckets.BUCKETS["forever"], wowhead_guides=GUIDES)
    monkeypatch.setitem(buckets.BUCKETS, "forever", b)
    return b


def seed(src, bucket, path, text):
    cache = src / bucket.folder / ".wowhead_cache"
    cache.mkdir(parents=True, exist_ok=True)
    name = wowhead.cache_name(wowhead.page_key(wowhead.guide_url(bucket, path)))
    (cache / name).write_text(text, encoding="utf-8")


def run(src, *extra):
    return fg.main(["--bucket", "forever", "--sources-dir", str(src), "--offline", *extra])


def facts_path(src):
    return src / "Forever" / "guide_facts.json"


A = html(table(RECIPE_HEAD, recipe_row(1001, "Trainer", 10)))
B = html(table(RECIPE_HEAD, recipe_row(1002, "[item=6002] [currency=3402 amount=30]", 15)))


def test_writes_the_facts_of_every_registry_page(tmp_path, bucket, capsys):
    seed(tmp_path, bucket, "guide/a", A)
    seed(tmp_path, bucket, "guide/b", B)
    assert run(tmp_path) == 0
    doc = load_json(facts_path(tmp_path))
    assert list(doc["spells"]) == ["1001", "1002"]
    assert doc["spells"]["1002"][0]["currency"] == 30
    assert set(doc["pages"]) == set(GUIDES)
    err = capsys.readouterr().err
    assert "2 of 2 pages read" in err and "0 requests" in err


def test_rerun_on_the_same_pages_changes_no_byte(tmp_path, bucket):
    seed(tmp_path, bucket, "guide/a", A)
    seed(tmp_path, bucket, "guide/b", B)
    assert run(tmp_path) == 0
    first = facts_path(tmp_path).read_bytes()
    assert run(tmp_path) == 0
    assert facts_path(tmp_path).read_bytes() == first


def test_unreadable_page_keeps_its_stored_rows(tmp_path, bucket, capsys):
    seed(tmp_path, bucket, "guide/a", A)
    seed(tmp_path, bucket, "guide/b", B)
    assert run(tmp_path) == 0
    stored = load_json(facts_path(tmp_path))
    cache = tmp_path / "Forever" / ".wowhead_cache"
    (cache / wowhead.cache_name(wowhead.page_key(wowhead.guide_url(bucket, "guide/b")))).unlink()
    capsys.readouterr()
    assert run(tmp_path) == 0
    assert load_json(facts_path(tmp_path)) == stored
    err = capsys.readouterr().err
    assert "guide/b" in err and "kept" in err and "1 of 2 pages read" in err


def test_page_never_read_and_not_available_is_a_warning(tmp_path, bucket, capsys):
    seed(tmp_path, bucket, "guide/a", A)
    assert run(tmp_path) == 0
    doc = load_json(facts_path(tmp_path))
    assert list(doc["pages"]) == ["guide/a"]
    assert "guide/b: not available and no stored facts" in capsys.readouterr().err


def test_saved_pages_folder_is_used(tmp_path, bucket):
    saved = tmp_path / "saved"
    saved.mkdir()
    for path, text in (("guide/a", A), ("guide/b", B)):
        url = wowhead.guide_url(bucket, path)
        (saved / f"{path[-1]}.html").write_text(
            text.replace("<head>", f'<head><link rel="canonical" href="{url}">'),
            encoding="utf-8")
    assert run(tmp_path, "--pages-dir", str(saved)) == 0
    assert list(load_json(facts_path(tmp_path))["spells"]) == ["1001", "1002"]


def test_inspect_reports_and_writes_nothing(tmp_path, bucket, capsys):
    odd = html(table(RECIPE_HEAD, recipe_row(1001, "Contained in: [object=5]", 10),
                     ["[spell=1002]", "[item=5002]"]),
               table(["Recipe", "Rank", "Mystery"], ["[spell=1001]", "1", "?"]))
    seed(tmp_path, bucket, "guide/a", odd)
    seed(tmp_path, bucket, "guide/b", B)
    assert run(tmp_path, "--inspect") == 0
    assert not facts_path(tmp_path).exists()
    out = capsys.readouterr().out
    assert "guide/a" in out and "recipe 1" in out
    assert "unknown header: recipe | rank | mystery (1)" in out
    assert "skipped: fewer cells than the header (1)" in out
    assert "source without a keyword: contained in (1)" in out


def test_page_in_another_format_stops_the_run_before_writing(tmp_path, bucket, capsys):
    seed(tmp_path, bucket, "guide/a", A)
    seed(tmp_path, bucket, "guide/b", "<html><body>redesigned</body></html>")
    assert run(tmp_path) == 2
    assert not facts_path(tmp_path).exists()
    assert "guide/b" in capsys.readouterr().err


def test_malformed_stored_facts_stop_the_run(tmp_path, bucket, capsys):
    seed(tmp_path, bucket, "guide/a", A)
    facts_path(tmp_path).write_text(json.dumps({"spells": []}), encoding="utf-8")
    assert run(tmp_path) == 2
    assert "guide facts" in capsys.readouterr().err


def test_bucket_without_guides_is_a_usage_error(tmp_path, capsys):
    assert fg.main(["--bucket", "tbc", "--sources-dir", str(tmp_path), "--offline"]) == 1
    assert "no guide pages" in capsys.readouterr().err


def test_guide_url_uses_the_bucket_subdomain(bucket):
    assert wowhead.guide_url(bucket, "guide/a") == "https://www.wowhead.com/forever/guide/a"
