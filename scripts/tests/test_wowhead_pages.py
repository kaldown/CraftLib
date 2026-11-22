"""wowhead.PageStore: saved pages, the disk cache and the polite network fetch.

No test opens a socket: the store takes an opener (url -> (status, text)) and a sleep.
"""
import urllib.request

import pytest

import wowhead
from wowhead import PageStore, cache_name, is_challenge, page_key, page_kind

GUIDE = "https://www.wowhead.com/forever/guide/professions/mining/overview-leveling"
LISTVIEW = "https://www.wowhead.com/forever/spells/professions/mining"
SPELL = "https://www.wowhead.com/forever/spell=2657"
BODY = "<html><head><title>Mining</title></head><body>recipes</body></html>"
CHALLENGE = ('<html><script>window.awsWafCookieDomainList = ["wowhead.com"]; '
             'window.gokuProps = {"key":"x"};</script></html>')


class Net:
    """A scripted opener: url -> list of (status, text) replies, used in order."""

    def __init__(self, replies=None, default=(200, BODY)):
        self.replies = {u: list(r) for u, r in (replies or {}).items()}
        self.default = default
        self.calls = []

    def __call__(self, url):
        self.calls.append(url)
        queue = self.replies.get(url)
        return queue.pop(0) if queue else self.default


def no_network(url):
    raise AssertionError(f"unexpected request for {url}")


def store(tmp_path, opener=no_network, **kw):
    sleeps = []
    kw.setdefault("delay", 5.0)
    s = PageStore(tmp_path / "cache", opener=opener, sleep=sleeps.append,
                  today="2026-11-22", log=lambda msg: None, **kw)
    return s, sleeps


def saved_page(folder, name, url, body="saved body"):
    folder.mkdir(parents=True, exist_ok=True)
    path = folder / name
    path.write_text(f'<html><head><link rel="canonical" href="{url}"></head>{body}</html>',
                    encoding="utf-8")
    return path


# --- keys ---------------------------------------------------------------------------

@pytest.mark.parametrize("url, key", [
    (GUIDE, "forever/guide/professions/mining/overview-leveling"),
    (GUIDE + "?x=1#recipes", "forever/guide/professions/mining/overview-leveling"),
    (SPELL, "forever/spell=2657"),
    (SPELL + "/smelt-copper", "forever/spell=2657"),
    ("http://wowhead.com/forever/spell=2657/smelt-copper#taught-by-npc", "forever/spell=2657"),
    (LISTVIEW + "/", "forever/spells/professions/mining"),
])
def test_page_key_ignores_host_query_and_the_spell_name(url, key):
    assert page_key(url) == key


def test_page_key_rejects_another_site():
    with pytest.raises(ValueError, match="not a wowhead.com address"):
        page_key("https://example.com/forever/spell=2657")


@pytest.mark.parametrize("url, kind", [(GUIDE, "guide"), (LISTVIEW, "listview"),
                                       (SPELL, "spell"),
                                       ("https://www.wowhead.com/forever/guides/professions",
                                        "guide")])
def test_page_kind(url, kind):
    assert page_kind(page_key(url)) == kind


def test_cache_name_keeps_the_path_readable():
    assert cache_name(page_key(GUIDE)) == \
        "forever_guide_professions_mining_overview-leveling.html"
    assert cache_name(page_key(SPELL)) == "forever_spell=2657.html"


def test_is_challenge():
    assert is_challenge(CHALLENGE) and not is_challenge(BODY)
    assert is_challenge('<body><div id="challenge-container"></div></body>')


def test_real_page_with_the_waf_token_script_is_not_a_challenge():
    # Every real Wowhead page sets awsWafCookieDomainList and loads challenge.js for its
    # token; only the challenge page has gokuProps and the challenge container.
    real = ('<html><head><link rel="canonical" href="' + GUIDE + '"><script>'
            'window.awsWafCookieDomainList = ["wowhead.com"];</script>'
            '<script src="https://x.token.awswaf.com/a/b/c/challenge.js"></script></head>'
            '<body>recipes</body></html>')
    assert not is_challenge(real)


# --- cache and network --------------------------------------------------------------

def test_network_page_is_cached_and_not_requested_again(tmp_path):
    net = Net()
    s, sleeps = store(tmp_path, net)
    first = s.get(GUIDE)
    assert (first.text, first.origin, first.fetched) == (BODY, "network", "2026-11-22")
    second = s.get(GUIDE)
    assert (second.text, second.origin) == (BODY, "cache")
    assert net.calls == [GUIDE]
    assert sleeps == [5.0]          # the pause follows the one request


def test_cache_from_an_earlier_run_makes_no_request(tmp_path):
    cache = tmp_path / "cache"
    cache.mkdir()
    (cache / cache_name(page_key(GUIDE))).write_text(BODY, encoding="utf-8")
    s, sleeps = store(tmp_path)        # no_network: a request would fail the test
    assert s.get(GUIDE).origin == "cache"
    assert sleeps == []


def test_force_refetches_a_cached_page(tmp_path):
    cache = tmp_path / "cache"
    cache.mkdir()
    (cache / cache_name(page_key(GUIDE))).write_text("old", encoding="utf-8")
    net = Net()
    s, _ = store(tmp_path, net, force=True)
    page = s.get(GUIDE)
    assert (page.text, page.origin) == (BODY, "network")
    assert (cache / cache_name(page_key(GUIDE))).read_text(encoding="utf-8") == BODY


def test_offline_never_requests(tmp_path, monkeypatch):
    def boom(*a, **k):
        raise AssertionError("offline must not open a socket")
    monkeypatch.setattr(urllib.request, "urlopen", boom)
    # The default opener, so the real fetch path is what stays unused.
    s = PageStore(tmp_path / "cache", offline=True, log=lambda msg: None)
    assert s.get(GUIDE) is None
    # force does not override offline either.
    s = PageStore(tmp_path / "cache", offline=True, force=True, log=lambda msg: None)
    assert s.get(GUIDE) is None


def test_every_request_is_followed_by_the_delay(tmp_path):
    net = Net()
    s, sleeps = store(tmp_path, net, delay=7.5)
    s.get(GUIDE)
    s.get(LISTVIEW)
    assert sleeps == [7.5, 7.5] and s.requests == 2


# --- challenge and errors -----------------------------------------------------------

@pytest.mark.parametrize("reply", [(202, CHALLENGE), (202, ""), (200, CHALLENGE)],
                         ids=["status-202", "202-empty", "challenge-body-with-200"])
def test_challenge_is_not_cached_and_stops_that_kind(tmp_path, reply):
    other = "https://www.wowhead.com/forever/spells/professions/alchemy"
    net = Net({LISTVIEW: [reply]})
    logged = []
    s = PageStore(tmp_path / "cache", opener=net, sleep=lambda _s: None,
                  today="2026-11-22", log=logged.append)
    assert s.get(LISTVIEW) is None
    assert s.get(other) is None                 # same kind: not even asked
    assert s.get(GUIDE).origin == "network"     # another kind still is
    assert net.calls == [LISTVIEW, GUIDE]
    assert not (tmp_path / "cache" / cache_name(page_key(LISTVIEW))).exists()
    assert s.challenged == {"listview"}
    assert len([m for m in logged if "challenge" in m]) == 1     # reported once


def test_403_is_retried_once_after_a_long_pause(tmp_path):
    net = Net({GUIDE: [(403, ""), (200, BODY)]})
    s, sleeps = store(tmp_path, net)
    assert s.get(GUIDE).origin == "network"
    assert net.calls == [GUIDE, GUIDE]
    assert sleeps == [30.0, 5.0]


def test_two_failures_give_up_on_the_url_and_on_that_kind(tmp_path):
    other = "https://www.wowhead.com/forever/guide/professions/alchemy/leveling-1-300"
    net = Net({GUIDE: [(503, ""), (503, "")]})
    s, sleeps = store(tmp_path, net)
    assert s.get(GUIDE) is None
    assert net.calls == [GUIDE, GUIDE] and sleeps == [30.0, 5.0]
    assert s.failed == {page_key(GUIDE): "HTTP 503"}
    assert not list((tmp_path / "cache").glob("*.html"))
    # An outage or a refusal would repeat: the next guide page is not even asked for.
    assert s.get(other) is None and net.calls == [GUIDE, GUIDE]
    assert s.refused == {"guide"}
    assert s.get(LISTVIEW).origin == "network"      # another kind still is


def test_rate_limit_is_not_retried_and_stops_that_kind(tmp_path):
    other = "https://www.wowhead.com/forever/guide/professions/alchemy/leveling-1-300"
    net = Net({GUIDE: [(429, "")]})
    s, sleeps = store(tmp_path, net)
    assert s.get(GUIDE) is None and s.get(other) is None
    assert net.calls == [GUIDE] and sleeps == [5.0]
    assert s.failed == {page_key(GUIDE): "HTTP 429"} and s.refused == {"guide"}


def test_no_answer_is_a_failed_request_not_a_crash(tmp_path, monkeypatch):
    def unreachable(req, timeout):
        raise urllib.error.URLError("no route to host")
    monkeypatch.setattr(urllib.request, "urlopen", unreachable)
    assert wowhead.http_get(GUIDE) == (0, "")
    net = Net({GUIDE: [(0, ""), (0, "")]})
    s, sleeps = store(tmp_path, net)
    assert s.get(GUIDE) is None
    assert s.failed == {page_key(GUIDE): "no answer"} and sleeps == [30.0, 5.0]


def test_empty_answer_is_never_cached(tmp_path):
    net = Net({GUIDE: [(200, "  \n")]})
    s, _ = store(tmp_path, net)
    assert s.get(GUIDE) is None
    assert s.failed == {page_key(GUIDE): "an empty page"}
    assert not list((tmp_path / "cache").glob("*.html"))


def test_offline_with_force_still_reads_the_cached_page(tmp_path):
    cache = tmp_path / "cache"
    cache.mkdir()
    (cache / cache_name(page_key(GUIDE))).write_text(BODY, encoding="utf-8")
    s, _ = store(tmp_path, offline=True, force=True)      # no_network: a request fails
    assert s.get(GUIDE).origin == "cache"


def test_404_is_not_retried_or_cached_and_does_not_stop_the_kind(tmp_path):
    other = "https://www.wowhead.com/forever/guide/professions/alchemy/leveling-1-300"
    net = Net({GUIDE: [(404, "nope")]})
    s, sleeps = store(tmp_path, net)
    assert s.get(GUIDE) is None
    assert net.calls == [GUIDE] and sleeps == [5.0]
    assert s.failed == {page_key(GUIDE): "HTTP 404"}
    assert s.get(other).origin == "network" and s.refused == set()


# --- pages saved from a browser -----------------------------------------------------

def test_saved_page_is_found_by_its_own_address(tmp_path):
    saved = tmp_path / "saved"
    saved_page(saved, "Mining - Wowhead.html", GUIDE + "?utm=1")
    saved_page(saved, "whatever.htm", SPELL + "/smelt-copper")
    s, sleeps = store(tmp_path, saved_dir=saved)
    assert s.get(GUIDE).origin == "saved"
    assert s.get(SPELL).origin == "saved"
    assert sleeps == []


def test_saved_page_wins_over_the_cache_and_over_force(tmp_path):
    saved = tmp_path / "saved"
    saved_page(saved, "a.html", GUIDE, body="from the browser")
    cache = tmp_path / "cache"
    cache.mkdir()
    (cache / cache_name(page_key(GUIDE))).write_text("cached", encoding="utf-8")
    for force in (False, True):
        s, _ = store(tmp_path, saved_dir=saved, force=force)
        page = s.get(GUIDE)
        assert page.origin == "saved" and "from the browser" in page.text


def test_saved_challenge_or_unnamed_page_is_skipped_and_reported(tmp_path):
    saved = tmp_path / "saved"
    saved.mkdir()
    (saved / "challenge.html").write_text(CHALLENGE, encoding="utf-8")
    (saved / "nameless.html").write_text("<html>no address</html>", encoding="utf-8")
    (saved / "notes.txt").write_text("ignored", encoding="utf-8")
    s, _ = store(tmp_path, saved_dir=saved, offline=True)
    assert s.get(GUIDE) is None
    assert s.skipped == {"challenge.html": "a challenge page, not the page itself",
                         "nameless.html": "no canonical or og:url address"}


def test_missing_saved_dir_fails_loud(tmp_path):
    with pytest.raises(FileNotFoundError, match="saved pages folder"):
        PageStore(tmp_path / "cache", saved_dir=tmp_path / "nope", log=lambda msg: None)


def test_default_opener_sends_the_browser_headers(monkeypatch):
    seen = {}

    class Reply:
        status = 200
        headers = {"Content-Encoding": ""}

        def read(self):
            return BODY.encode()

        def __enter__(self):
            return self

        def __exit__(self, *a):
            return False

    def fake_urlopen(req, timeout):
        seen["headers"] = dict(req.header_items())
        seen["url"] = req.full_url
        return Reply()

    monkeypatch.setattr(urllib.request, "urlopen", fake_urlopen)
    assert wowhead.http_get(GUIDE) == (200, BODY)
    assert seen["url"] == GUIDE
    # urllib capitalises header names its own way; compare case-insensitively.
    sent = {k.lower(): v for k, v in seen["headers"].items()}
    for name, value in wowhead.HEADERS.items():
        assert sent[name.lower()] == value
