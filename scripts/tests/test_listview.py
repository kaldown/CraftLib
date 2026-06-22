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
