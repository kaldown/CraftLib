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
