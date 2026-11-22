import pytest
import gzip
import io
import fetch_wowhead_sources as fw


class _FakeResp:
    def __init__(self, body: bytes, encoding: str | None):
        self._body = body
        self.headers = {"Content-Encoding": encoding} if encoding else {}
    def read(self): return self._body
    def __enter__(self): return self
    def __exit__(self, *a): return False


def test_fetch_page_decompresses_gzip(monkeypatch):
    raw = b"<html>hello</html>"
    gz = gzip.compress(raw)
    monkeypatch.setattr(fw.urllib.request, "urlopen", lambda req, timeout=30: _FakeResp(gz, "gzip"))
    assert fw._fetch_page("https://example.test") == "<html>hello</html>"


from tests.conftest import FIXTURES  # noqa: E402


def test_extract_listview_spells_parses_fixture():
    html = (FIXTURES / "tailoring_listview.html").read_text(encoding="utf-8")
    rows = fw._extract_listview_spells(html)
    assert rows, "expected at least one recipe row"
    # Every row keyed by int id, and craft rows carry a 4-element colors array
    sample = next(r for r in rows.values() if "colors" in r)
    assert len(sample["colors"]) == 4
    assert "learnedat" in sample
    assert all(isinstance(k, int) for k in rows)


def test_difficulty_from_colors_maps_and_normalizes():
    # SoD epic: orange sentinel 0, learnedat carried separately
    d = fw._difficulty_from_colors([0, 285, 295, 305], "sod")
    assert d == {"orange": 0, "yellow": 285, "green": 295, "gray": 305,
                 "certainty": "WOWHEAD", "expansion": "sod"}
    d2 = fw._difficulty_from_colors([1, 55, 75, 95], "sod")
    assert d2["orange"] == 1 and d2["gray"] == 95


# --- inspecting a listview page of a wiki-enriched bucket (Forever) -----------------------

import wowhead  # noqa: E402
from buckets import get_bucket  # noqa: E402
from pipeline_io import load_json  # noqa: E402
from tests.fixture_build import write_resolved_forever  # noqa: E402

# 1001 trainer (learned at 1, yellow 10), 1002 and 1003 item-taught (ranks 15 and 35),
# 9999 a spell the sources do not have. 1004 (a review) is not on the page.
INSPECT_PAGE = ('<html><script>var listviewspells = ['
                '{"id":1001,"colors":[1,10,25,40],"learnedat":1,"source":[6],'
                '"trainingcost":10,"creates":[5001,1,1]},'
                '{"id":1002,"colors":[15,20,40,60],"learnedat":15,"source":[5],'
                '"creates":[5002,1,1]},'
                '{"id":1003,"colors":[0,40,60,85],"learnedat":40,"source":[5]},'
                '{"id":9999,"colors":[1,2,3,4],"learnedat":1}];</script></html>')
CHALLENGE = '<html><script>window.gokuProps = {};</script></html>'


def _seed_listview(src, text):
    forever = get_bucket("forever")
    url = wowhead.listview_url(forever, forever.profession("Tailoring"))
    cache = src / "Forever" / ".wowhead_cache"
    cache.mkdir(parents=True, exist_ok=True)
    (cache / wowhead.cache_name(wowhead.page_key(url))).write_text(text, encoding="utf-8")


def _inspect(src, *extra):
    return fw.main(["--bucket", "forever", "--profession", "Tailoring", "--sources-dir",
                    str(src), "--inspect", "--offline", *extra])


def test_inspect_reports_what_the_page_carries_and_writes_nothing(tmp_path, capsys):
    _art, src = write_resolved_forever(tmp_path)
    _seed_listview(src, INSPECT_PAGE)
    sources = src / "Forever" / "Tailoring.json"
    before = sources.read_bytes()
    assert _inspect(src) == 0
    assert sources.read_bytes() == before
    out = capsys.readouterr().out
    for line in (
        "rows 4: colors 4, learnedat 4, source 3, trainingcost 1, creates 2",
        "recipes in the sources 4: on the page 3, not on the page 1 (1004)",
        "on the page but not in the sources: 1 (9999)",
        "yellow/gray equal to DB2 on 2 of 3 (differs: 1003 40/85 vs 40/80)",
        "item-taught, learn skill from the item rank: learnedat equal on 1 of 2 "
        "(differs: 1003 40 vs 35)",
        "trainer or automatic: learnedat below yellow 1, equal to yellow 0, above 0",
        "source codes: 5 x2, 6 x1",
    ):
        assert line in out, line


def test_inspect_without_a_page_says_why_and_exits_2(tmp_path, capsys):
    _art, src = write_resolved_forever(tmp_path)
    assert _inspect(src) == 2
    assert "no page" in capsys.readouterr().err


def test_inspect_never_reads_a_challenge_page_as_an_empty_listview(tmp_path, capsys):
    _art, src = write_resolved_forever(tmp_path)
    _seed_listview(src, CHALLENGE)
    assert _inspect(src) == 2
    err = capsys.readouterr().err
    assert "challenge" in err


def test_inspect_page_without_a_listview_is_an_error(tmp_path, capsys):
    _art, src = write_resolved_forever(tmp_path)
    _seed_listview(src, "<html>redesigned</html>")
    assert _inspect(src) == 2
    assert "no listview" in capsys.readouterr().err


def test_wiki_enriched_bucket_is_never_rewritten_by_the_wowhead_route(tmp_path, capsys):
    # Without --inspect this command would run the per-spell route over resolved sources.
    _art, src = write_resolved_forever(tmp_path)
    sources = src / "Forever" / "Tailoring.json"
    before = sources.read_bytes()
    rc = fw.main(["--bucket", "forever", "--profession", "Tailoring", "--sources-dir", str(src)])
    assert rc == 1 and sources.read_bytes() == before
    assert "--inspect" in capsys.readouterr().err


def test_fetch_page_refuses_a_challenge_body(monkeypatch, capsys):
    # urllib reports HTTP 202 as success; the body must not be parsed as "no rows".
    monkeypatch.setattr(fw.urllib.request, "urlopen",
                        lambda req, timeout=30: _FakeResp(CHALLENGE.encode(), None))
    assert fw._fetch_page("https://www.wowhead.com/forever/spells/professions/mining") is None
    assert "challenge" in capsys.readouterr().err


@pytest.mark.parametrize("flag", [["--offline"], ["--refetch"], ["--pages-dir", "x"]])
def test_page_switches_without_inspect_are_refused_before_any_fetch(tmp_path, monkeypatch,
                                                                    capsys, flag):
    # They used to be ignored: "--bucket tbc --offline" still fetched and rewrote sources.
    from tests.fixture_build import write_sources

    def boom(*a, **k):
        raise AssertionError("must not fetch")
    monkeypatch.setattr(fw.urllib.request, "urlopen", boom)
    write_sources(tmp_path, "TBC")
    before = (tmp_path / "TBC" / "Tailoring.json").read_bytes()
    rc = fw.main(["--bucket", "tbc", "--profession", "Tailoring", "--sources-dir",
                  str(tmp_path), *flag])
    assert rc == 1 and "--inspect" in capsys.readouterr().err
    assert (tmp_path / "TBC" / "Tailoring.json").read_bytes() == before
