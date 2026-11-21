"""Fetch, cache and parse the Warcraft Wiki per-profession recipe tables.

Only facts (skill, source kind, cost) are extracted; no wiki prose is stored.
"""
import json
import re
import time
import urllib.error
import urllib.parse
import urllib.request
from dataclasses import dataclass
from pathlib import Path

from pipeline_io import atomic_write_text

API_URL = "https://warcraft.wiki.gg/api.php"
# Generic client name: no project or personal names go to the wiki.
USER_AGENT = "data-pipeline/1.0"
# Politeness delay between network fetches: at least 3 s, one page per profession.
FETCH_DELAY_S = 3.0


class WikiError(RuntimeError):
    pass


def fetch_wikitext(title, cache_dir, *, offline=False,
                   opener=urllib.request.urlopen, sleep=time.sleep):
    cache_dir = Path(cache_dir)
    cache = cache_dir / (title.replace(" ", "_") + ".wikitext")
    if cache.exists():
        return cache.read_text(encoding="utf-8")
    if offline:
        raise WikiError(f"offline and no cached wikitext for {title!r}")
    query = urllib.parse.urlencode({
        "action": "parse", "page": title, "prop": "wikitext",
        "format": "json", "redirects": 1,
    })
    req = urllib.request.Request(f"{API_URL}?{query}", headers={"User-Agent": USER_AGENT})
    try:
        with opener(req, timeout=60) as resp:
            data = json.loads(resp.read().decode("utf-8"))
    # URLError covers HTTPError; ValueError covers bad JSON/UTF-8; OSError timeouts.
    except (urllib.error.URLError, OSError, ValueError) as exc:
        raise WikiError(f"fetching {title!r} failed: {exc}") from exc
    if "error" in data:
        raise WikiError(f"wiki error for {title!r}: {data['error'].get('code')}")
    try:
        text = data["parse"]["wikitext"]["*"]
    except (KeyError, TypeError):
        raise WikiError(f"unexpected wiki response for {title!r}")
    cache_dir.mkdir(parents=True, exist_ok=True)
    atomic_write_text(cache, text)
    sleep(FETCH_DELAY_S)
    return text


_LINK = re.compile(r"\[\[([^\]|]*)(?:\|([^\]]*))?\]\]")
_TRAILING_PAREN = re.compile(
    r"\s*\((?:forever|classic|item|recipe|camping|ability)\)\s*$")


def _clean(text):
    text = text.replace("’", "'")
    text = re.sub(r"\s+", " ", text).strip().lower()
    return text


def normalize(name):
    m = _LINK.search(name)
    if m:
        name = m.group(1)
    name = name.split("#", 1)[0]
    name = _clean(name)
    # Only ONE trailing disambiguator is dropped, as the wiki never stacks them.
    return _TRAILING_PAREN.sub("", name).strip()


@dataclass(frozen=True)
class WikiRow:
    key: str
    display: str
    skill: "int | None"
    kind: str
    currency: "int | None"
    rep_level: "str | None"
    raw_source: str
    line_no: int


# WHY the number is anchored (it must end at "|" or "}}"): "mfvr=1,200" would otherwise
# read as 1, a wrong price that looks valid.
_COST = re.compile(r"\{\{\s*cost\s*\|[^}]*?mfvr\s*=\s*(\d+)\s*[|}]", re.I)
_COST_ANY = re.compile(r"\{\{\s*cost\s*\|[^}]*?mfvr\s*=", re.I)
# Source kind of a cell whose Merchant's Favor cost is not a plain whole number. The
# resolver reviews it whatever the rest of the cell says ("Vendor" would otherwise fall
# back to the DB2 BuyPrice, a gold price for a currency recipe).
UNRECOGNISED_COST = "UNRECOGNISED_COST"
_REP = re.compile(r"\{\{\s*text\s*\|\s*(friendly|honored|revered|exalted)\s*\|", re.I)
_KEYWORDS = (
    ("automatic", "STARTER"), ("special trainer", "SPECIAL_TRAINER"),
    ("trainer", "TRAINER"), ("vendor", "VENDOR"), ("drop", "DROP"),
    ("quest", "QUEST"), ("crafted", "CRAFTED"),
)


def classify_source(cell):
    cost = _COST.search(cell)
    currency = int(cost.group(1)) if cost else None
    rep = _REP.search(cell)
    rep_level = rep.group(1).capitalize() if rep else None
    if cost is None and _COST_ANY.search(cell):
        return UNRECOGNISED_COST, None, rep_level
    # Strip templates then links so a keyword inside a link target is not read.
    plain = re.sub(r"\{\{.*?\}\}", " ", cell)
    plain = _LINK.sub(" ", plain)
    # Leftover separators ("; ") from removed templates are not content.
    plain = re.sub(r"\s+", " ", plain).strip(" ;,").lower()
    if not plain or plain == "?":
        kind = "VENDOR" if currency is not None else "UNKNOWN"
    else:
        kind = "OTHER"
        for word, k in _KEYWORDS:
            if plain.startswith(word):
                kind = k
                break
    return kind, currency, rep_level


def _link_parts(cell):
    m = _LINK.search(cell)
    if m:
        target = m.group(1)
        display = m.group(2) if m.group(2) is not None else target
        return normalize(target), normalize(display)
    n = normalize(cell)
    return n, n


def _int(cell):
    m = re.fullmatch(r"\s*(\d+)\s*", cell)
    return int(m.group(1)) if m else None


def parse_rows(wikitext):
    rows = []
    cols = None  # column-name -> index, None outside a recognised table
    in_table = False
    for line_no, line in enumerate(wikitext.split("\n"), 1):
        s = line.strip()
        if s.startswith("{|"):
            in_table, cols = True, None
            continue
        if s.startswith("|}"):
            in_table, cols = False, None
            continue
        if not in_table:
            continue
        if s.startswith("!") and cols is None:
            names = [c.strip().lower() for c in s[1:].split("!!")]
            # Match by header name so the 4- and 5-column layouts both work.
            if all(n in names for n in ("item", "skill", "source")):
                cols = {n: names.index(n) for n in ("item", "skill", "source")}
            else:
                cols = {}
            continue
        if not cols or not s.startswith("|") or s[:2] in ("|-", "|+", "|}"):
            continue
        cells = [c.strip() for c in s[1:].split("||")]
        # A row may omit trailing cells (the wiki drops an empty Source): pad so
        # it is kept as UNKNOWN rather than silently lost.
        cells += [""] * (max(cols.values()) + 1 - len(cells))
        if not cells[cols["item"]]:
            raise WikiError(f"line {line_no}: table row has no Item cell: {s!r}")
        key, display = _link_parts(cells[cols["item"]])
        source = cells[cols["source"]]
        kind, currency, rep = classify_source(source)
        rows.append(WikiRow(key, display, _int(cells[cols["skill"]]), kind,
                            currency, rep, source, line_no))
    return rows


def index_rows(rows):
    idx = {}
    for r in rows:
        idx.setdefault(r.key, []).append(r)
        if r.display != r.key:
            idx.setdefault(r.display, []).append(r)
    return idx
