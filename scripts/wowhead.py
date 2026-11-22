"""Shared Wowhead helpers for the data pipeline.

Fetching, verifying and auditing all talk to Wowhead; they used to each carry
their own copy of the headers, JS-object fix, spell regex and source-code
tables, which drifted. Everything Wowhead-specific that is not a script's own
policy lives here.
"""
import gzip
import re
import sys
import time
import urllib.error
import urllib.request
from dataclasses import dataclass
from datetime import date
from pathlib import Path

# Wowhead source type IDs (from g_spells[id].source array)
SOURCE_TYPES = {
    1: "CRAFTED",
    2: "DROP",
    3: "PVP",
    4: "QUEST",
    5: "VENDOR",
    6: "TRAINER",
    7: "DISCOVERY",
    10: "STARTER",
    11: "EVENT",
    12: "ACHIEVEMENT",
}

CRAFTED = 1
TRAINER = 6

# Acquisition codes in the order a PENDING recipe is classified; first match wins.
ACQUISITION_PRIORITY = ((5, "VENDOR"), (2, "DROP"), (4, "QUEST"), (10, "STARTER"), (7, "DISCOVERY"))

# Our source type -> the Wowhead code that must appear in its source[] to corroborate it.
EXPECTED_CODE = {"DROP": 2, "VENDOR": 5, "QUEST": 4, "TRAINER": 6, "STARTER": 10, "DISCOVERY": 7}

# Profession name/key -> Wowhead profession-page slug
PROFESSION_SLUGS = {
    "alchemy": "alchemy", "blacksmithing": "blacksmithing", "enchanting": "enchanting",
    "engineering": "engineering", "leatherworking": "leatherworking", "tailoring": "tailoring",
    "cooking": "cooking", "firstaid": "first-aid", "mining": "mining",
    # WotLK-only and TBC-only professions added for listview routing (Task 2.3)
    "jewelcrafting": "jewelcrafting", "inscription": "inscription",
}

# Secondary skills live under /spells/secondary-skills/<slug>, not /spells/professions/<slug>
SECONDARY_SKILL_SLUGS = {"cooking", "first-aid", "fishing"}

# Wowhead sits behind CloudFront, which 403s a bare User-Agent. A complete
# browser header set (Accept-Language + Referer + Sec-Fetch-* + UA) clears the
# WAF on the first request; retry/backoff alone does not.
HEADERS = {
    "User-Agent": ("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
                   "AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15"),
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.9",
    "Accept-Encoding": "gzip",
    "Referer": "https://www.wowhead.com/",
    "Sec-Fetch-Dest": "document",
    "Sec-Fetch-Mode": "navigate",
    "Sec-Fetch-Site": "same-origin",
    "Upgrade-Insecure-Requests": "1",
}


def fix_js_object(text: str) -> str:
    """Fix JavaScript object notation to be valid JSON.

    Wowhead sometimes uses unquoted keys like: {difficulties:[]}
    This fixes them to: {"difficulties":[]}
    """
    return re.sub(r'(?<=[{,])(\s*)([a-zA-Z_]\w*)(\s*):', r'\1"\2"\3:', text)


def g_spells_extend_pattern(spell_id: int) -> str:
    """Regex for `$.extend(g_spells[ID], {...})`, the page's authoritative spell blob."""
    return rf'\$\.extend\(g_spells\[{spell_id}\],\s*(\{{[^;]*?\}})\s*\)'


def profession_slug(profession) -> str:
    """Wowhead slug for a registry Profession; raises naming the profession if none."""
    slug = PROFESSION_SLUGS.get(profession.folder.lower())
    if slug is None:
        raise ValueError(f"no Wowhead slug for profession '{profession.name}' "
                         f"(folder '{profession.folder}')")
    return slug


def listview_url(bucket, profession) -> str:
    slug = profession_slug(profession)
    category = "secondary-skills" if slug in SECONDARY_SKILL_SLUGS else "professions"
    return f"https://www.wowhead.com/{bucket.wowhead_subdomain}/spells/{category}/{slug}"


def spell_url(bucket, spell_id: int) -> str:
    return f"https://www.wowhead.com/{bucket.wowhead_subdomain}/spell={spell_id}"


def guide_url(bucket, path: str) -> str:
    """Address of a registry guide page (Bucket.wowhead_guides entry)."""
    return f"https://www.wowhead.com/{bucket.wowhead_subdomain}/{path}"


# --- pages: saved from a browser, cached on disk, or fetched politely ------------------

# Wowhead answers some page kinds with an AWS WAF JavaScript challenge instead of the
# page (HTTP 202, header x-amzn-waf-action: challenge, a 2 KB body carrying these names;
# measured 2026-11-22 for the Forever listview and spell pages). It is never worked
# around: the store reports it and leaves that kind of page alone for the rest of the run.
# WHY not "awsWafCookieDomainList": every real page carries that one too (all 14 pages
# fetched that day), so it would make the store refuse the pages it is there to read.
_CHALLENGE_MARKERS = ("gokuProps", 'id="challenge-container"')
_CANONICAL = re.compile(
    r'''<link[^>]+rel=["']canonical["'][^>]*href=["']([^"']+)["']'''
    r'''|<link[^>]+href=["']([^"']+)["'][^>]*rel=["']canonical["']'''
    r'''|<meta[^>]+property=["']og:url["'][^>]*content=["']([^"']+)["']'''
    r'''|<meta[^>]+content=["']([^"']+)["'][^>]*property=["']og:url["']''',
    re.IGNORECASE)
_HOST = re.compile(r"^(?:https?:)?//(?:www\.)?wowhead\.com/", re.IGNORECASE)
RETRY_PAUSE = 30.0          # before the one retry of a 403 / 5xx answer


def is_challenge(text: str) -> bool:
    return any(marker in text for marker in _CHALLENGE_MARKERS)


def page_key(url: str) -> str:
    """The part of a wowhead.com address that names the page: path only, no query or
    fragment, and for a spell page no name slug (spell=2657/smelt-copper is spell=2657)."""
    if not _HOST.match(url):
        raise ValueError(f"not a wowhead.com address: {url!r}")
    path = _HOST.sub("", url).split("#", 1)[0].split("?", 1)[0].strip("/")
    return re.sub(r"(spell=\d+)/.*$", r"\1", path)


def page_kind(key: str) -> str:
    """listview, spell, guide or other: a challenge stops requests for one kind only."""
    if re.search(r"(?:^|/)spell=\d+$", key):
        return "spell"
    if re.search(r"(?:^|/)guides?(?:/|$)", key):
        return "guide"
    if "/spells/" in f"/{key}/":
        return "listview"
    return "other"


def cache_name(key: str) -> str:
    return re.sub(r"[^A-Za-z0-9._=-]+", "_", key) + ".html"


def http_get(url: str) -> "tuple[int, str]":
    """(status, text) of one GET with the browser header set; an HTTP error is a status,
    not an exception, so the store decides what a 202, 403 or 404 means."""
    req = urllib.request.Request(url, headers=HEADERS)
    try:
        with urllib.request.urlopen(req, timeout=40) as reply:
            body = reply.read()
            if (reply.headers.get("Content-Encoding") or "") == "gzip":
                body = gzip.decompress(body)
            return reply.status, body.decode("utf-8", errors="replace")
    except urllib.error.HTTPError as e:
        return e.code, ""
    except (urllib.error.URLError, TimeoutError, OSError):
        # No answer at all (no route, a timeout, a reset): status 0, so the store treats
        # it like any failed request instead of ending the run in a traceback.
        return 0, ""


@dataclass(frozen=True)
class Page:
    url: str
    text: str
    origin: str      # "saved" (a browser save), "cache" or "network"
    fetched: str     # ISO date: the file's date, or today for a network page


class PageStore:
    """Every Wowhead page read goes through here: a page the owner saved from a browser,
    else the disk cache, else (unless offline) one polite request.

    saved_dir: pages saved from a browser, any file names; each is recognised by the
    address the page states about itself (canonical link / og:url). cache_dir: one file
    per page (cache_name), written only for an HTTP 200 answer that is the page itself.
    A cached page is never requested again unless force; offline never requests.
    Every request is followed by `delay` seconds of sleep.

    After a run: requests (count), challenged (page kinds that answered with the
    challenge), refused (page kinds no longer requested after a failure that would repeat),
    failed (page key -> why), skipped (saved file name -> why it was unusable).
    """

    def __init__(self, cache_dir, saved_dir=None, offline: bool = False, force: bool = False,
                 delay: float = 5.0, opener=http_get, sleep=time.sleep, today: "str | None" = None,
                 log=None):
        self.cache_dir = Path(cache_dir)
        self.offline, self.force, self.delay = offline, force, delay
        self._opener, self._sleep = opener, sleep
        self._today = today or date.today().isoformat()
        self._log = log or (lambda msg: print(msg, file=sys.stderr))
        self.requests = 0
        self.challenged: set[str] = set()
        self.refused: set[str] = set()
        self.failed: dict[str, str] = {}
        self.skipped: dict[str, str] = {}
        self._saved: dict[str, Path] = {}
        if saved_dir is not None:
            saved_dir = Path(saved_dir)
            if not saved_dir.is_dir():
                # A mistyped folder would silently fall back to the network.
                raise FileNotFoundError(f"saved pages folder not found: {saved_dir}")
            self._index_saved(saved_dir)

    def _index_saved(self, saved_dir: Path) -> None:
        files = sorted(p for p in saved_dir.iterdir()
                       if p.is_file() and p.suffix.lower() in (".html", ".htm"))
        for path in files:
            text = path.read_text(encoding="utf-8", errors="replace")
            if is_challenge(text):
                self.skipped[path.name] = "a challenge page, not the page itself"
                continue
            match = _CANONICAL.search(text)
            address = next((g for g in match.groups() if g), None) if match else None
            try:
                key = page_key(address) if address else None
            except ValueError:
                key = None
            if key is None:
                self.skipped[path.name] = "no canonical or og:url address"
                continue
            self._saved[key] = path
        for name, why in self.skipped.items():
            self._log(f"WARNING: saved page {name} not used: {why}")

    @staticmethod
    def _file_date(path: Path) -> str:
        return date.fromtimestamp(path.stat().st_mtime).isoformat()

    def get(self, url: str) -> "Page | None":
        """The page, or None when no source has it (offline without a copy, a challenge,
        a failed request); challenged / failed say which."""
        key = page_key(url)
        saved = self._saved.get(key)
        if saved is not None:
            return Page(url, saved.read_text(encoding="utf-8", errors="replace"), "saved",
                        self._file_date(saved))
        cached = self.cache_dir / cache_name(key)
        # force asks for a fresh copy; offline cannot fetch one, so the cached copy stands.
        if cached.is_file() and (not self.force or self.offline):
            return Page(url, cached.read_text(encoding="utf-8", errors="replace"), "cache",
                        self._file_date(cached))
        kind = page_kind(key)
        if self.offline or kind in self.challenged or kind in self.refused:
            return None
        status, text = self._request(url)
        if status in (0, 403) or status >= 500:
            # One more try, well apart; a second refusal is an answer, not a glitch.
            self._sleep(RETRY_PAUSE)
            status, text = self._request(url, pause=True)
        else:
            self._sleep(self.delay)
        if status == 202 or (status == 200 and is_challenge(text)):
            self.challenged.add(kind)
            self._log(f"Wowhead answered {url} with a JavaScript challenge (HTTP {status}); "
                      f"no further {kind} pages are requested in this run. Save the page "
                      f"from a browser and pass its folder instead.")
            return None
        if status == 200 and not text.strip():
            status = -1            # an empty body is not the page; never cache it
        if status != 200:
            why = {0: "no answer", -1: "an empty page"}.get(status, f"HTTP {status}")
            self.failed[key] = why
            self._log(f"WARNING: {url}: {why}; not cached")
            if status != 404:
                # A refusal, a rate limit or an outage would repeat on the next page of
                # the same kind: stop asking instead of knocking again and again. A 404
                # is about this one address only.
                self.refused.add(kind)
                self._log(f"no further {kind} pages are requested in this run")
            return None
        self.cache_dir.mkdir(parents=True, exist_ok=True)
        tmp = cached.with_suffix(".html.tmp")
        tmp.write_text(text, encoding="utf-8")
        tmp.replace(cached)          # atomic: a killed run never leaves half a page
        return Page(url, text, "network", self._today)

    def _request(self, url: str, pause: bool = False) -> "tuple[int, str]":
        self.requests += 1
        reply = self._opener(url)
        if pause:
            self._sleep(self.delay)
        return reply
