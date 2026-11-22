"""Read recipe facts out of Wowhead guide pages.

A guide page keeps its text as Wowhead markup (square-bracket tags) inside JSON strings
passed to WH.markup.printHtml. Its recipe tables name each recipe by spell id, which the
Warcraft Wiki tables do not, so a guide row needs no name matching. Guides are written by
hand: the resolver ranks them below DB2 and the in-game capture, and a value two rows
disagree on is not used at all.

Only structure is kept: ids, numbers and a source keyword. No prose leaves this module.

Tables read (header cells, lower case; measured on the 13 Forever guides, 2026-11-22):
  recipe | crafted item | type | source | skill level | materials   keyed by [spell=id]
  item | minimum skill level | source                               keyed by [spell=id]
  item | skill required | cost [...]                                keyed by the recipe
      [item=id]; the cost is a Merchant's Favor amount and the vendor is the "Sold by" npc
      of the tab the table sits in
  recipe | cooking lvl | vendor | ...                               keyed by the recipe
      [item=id]; a vendor list without prices
  smelt | level required | materials | creates                      keyed by [spell=id]; the
      four skill colours
Every other header seen on those pages is listed in _IGNORED_HEADERS; a header in neither
list is reported, never skipped in silence.
"""
import json
import re
from collections import Counter
from dataclasses import dataclass, field
from pathlib import Path

from forever_resolve import GuideFacts
from pipeline_io import load_json
from wowhead import is_challenge

MERCHANTS_FAVOR = 3402      # CurrencyTypes id of Merchant's Favor


class GuideError(ValueError):
    pass


_PRINT = re.compile(r'WH\.markup\.printHtml\(\s*(?=")')
_TABLE = re.compile(r"\[table\b[^\]]*\](.*?)\[/table\]", re.S | re.I)
_TR = re.compile(r"\[tr\b[^\]]*\](.*?)\[/tr\]", re.S | re.I)
_TD = re.compile(r"\[t[dh]\b[^\]]*\](.*?)\[/t[dh]\]", re.S | re.I)
_TAG = re.compile(r"\[[^\]]*\]")
_TAB = re.compile(r"\[tab name=\"?([^\]\"]+)\"?[^\]]*\]", re.I)
_COLOUR = re.compile(r"\[color=skill-(orange|yellow|green|gray)\]\s*([^\[]*?)\s*\[/color\]", re.I)
_CURRENCY_TAG = re.compile(r"\[currency=(\d+) amount=([\d,]+)\]", re.I)
_CURRENCY_TEXT = re.compile(r"([\d,]*\d)\s+Merchant['\u2019]s Favor", re.I)
_CURRENCY_BARE = re.compile(r"([\d,]*\d)\s*\[currency=(\d+)\]", re.I)

# Leading words of a source cell (tags removed), first match wins.
_LEADS = (("learned automatically", "STARTER"), ("automatic", "STARTER"),
          ("special trainer", "SPECIAL_TRAINER"), ("trainer", "TRAINER"),
          ("drop", "DROP"), ("vendor", "VENDOR"), ("quest", "QUEST"))

_IGNORED_HEADERS = frozenset(tuple(h.split(" | ")) for h in (
    "item | hand in npc | hand in zone | level",
    "item | profession | hand in npc | level",
    "trainer | location | waypoint",
    "trainer | location | waypoint | teaches",
    "trainer | teaches | location | waypoint",
    "trainer | location | level",
    "perk | ranks | description",
    "challenge | description | reward",
    "skill | item | quantity | materials",
    "skill | item | quantity | materials required",
    "profession | item | title",
    "name | loot | locations",
    "crate | quality | merchant's favor",
    "rank | skill range | min. skill to train | min. level to train",
    "step | quest | requirements | reward",
    "boost | level increase",
    "skill | ore node | suggested zones",
    "level | reputation | reward",
    "quest | cost | reward",
    "quest | level | required level | side | experience",
))


def markup_bodies(html: str) -> "list[str]":
    """The markup texts of a page: every JSON string passed to WH.markup.printHtml."""
    out = []
    decoder = json.JSONDecoder()
    for m in _PRINT.finditer(html):
        try:
            value, _end = decoder.raw_decode(html, m.end())
        except ValueError:
            continue
        if isinstance(value, str):
            out.append(value)
    return out


def _text(cell: str) -> str:
    """A cell without any tag, lower case, one space between words."""
    plain = _TAG.sub(" ", cell).replace("\u2019", "'")
    return re.sub(r"\s+", " ", plain).strip().lower()


def _ids(kind: str, cell: str) -> "list[int]":
    """Ids of [kind=id] tokens in a cell, each once, in order."""
    return list(dict.fromkeys(int(i) for i in re.findall(rf"\[{kind}=(\d+)", cell, re.I)))


def _int(cell: str) -> "int | None":
    m = re.fullmatch(r"([\d,]*\d)", _text(cell))
    return int(m.group(1).replace(",", "")) if m else None


def _claims(text: str) -> "set[str]":
    """Every source keyword a cell contains as a whole word, longest wording first so
    "special trainer" is not also read as "trainer"."""
    found = set()
    for words, kind in _LEADS:
        pattern = rf"\b{re.escape(words)}\b"
        if re.search(pattern, text):
            found.add(kind)
            text = re.sub(pattern, " ", text)
    return found


def parse_source(cell: str) -> dict:
    """What a source cell says, as structure: kind (STARTER, TRAINER, SPECIAL_TRAINER,
    VENDOR, DROP, QUEST or None), item and npc ids, and a Merchant's Favor amount.

    The kind is the one source keyword the cell contains ("Trainer", "World Drop",
    "[item] Vendor"); a cell naming several ("Quest: ... Vendor: ...") lists alternatives
    and types nothing, and a Merchant's Favor price alone means the recipe is sold. The
    price is spelled four ways on the pages: [currency=3402 amount=N], "N [currency=3402]",
    and "N Merchant's Favor" with a straight or a curly apostrophe.
    Free text (NPC names, "Armorsmith only") is read for those words and not kept.
    """
    claims = _claims(_text(cell))
    kind = next(iter(claims)) if len(claims) == 1 else None
    amounts = {int(a.replace(",", "")) for cur, a in _CURRENCY_TAG.findall(cell)
               if int(cur) == MERCHANTS_FAVOR}
    amounts |= {int(a.replace(",", "")) for a in _CURRENCY_TEXT.findall(_TAG.sub(" ", cell))}
    # "45 [currency=3402]": the number before a bare currency icon (Enchanting's tables).
    amounts |= {int(a.replace(",", "")) for a, cur in _CURRENCY_BARE.findall(cell)
                if int(cur) == MERCHANTS_FAVOR}
    amounts.discard(0)          # 0 would read as free
    # Two different prices in one cell (two vendors, two ranks): neither is "the" price,
    # but the recipe is still known to be sold for the currency, never for gold.
    currency = amounts.pop() if len(amounts) == 1 else None
    if kind is None and currency is not None and len(claims) <= 1:
        kind = "VENDOR"
    source = {"kind": kind, "items": _ids("item", cell), "npcs": _ids("npc", cell),
              "currency": currency}
    if len(amounts) > 1:
        source["unsettledPrice"] = True
    if len(claims) > 1:
        source["severalSources"] = True
    return source


@dataclass
class Report:
    tables: Counter = field(default_factory=Counter)             # table kind -> count
    rows: int = 0                                                # rows turned into facts
    skipped: Counter = field(default_factory=Counter)            # reason -> rows
    unknown_headers: Counter = field(default_factory=Counter)    # "a | b | c" -> tables
    unread_sources: Counter = field(default_factory=Counter)     # leading words without a kind


@dataclass
class PageFacts:
    spells: "dict[str, list[dict]]" = field(default_factory=dict)
    items: "dict[str, list[dict]]" = field(default_factory=dict)
    smelts: "dict[str, dict]" = field(default_factory=dict)
    report: Report = field(default_factory=Report)


def _table_kind(header: "tuple[str, ...]") -> "str | None":
    if header[:1] == ("recipe",) and "source" in header and "skill level" in header:
        return "recipe"
    if header == ("item", "minimum skill level", "source"):
        return "minimum"
    if header[:2] == ("item", "skill required") and len(header) > 2 and header[2].startswith("cost"):
        return "commerce"
    if header[:3] == ("recipe", "cooking lvl", "vendor"):
        return "vendors"
    if header[:2] == ("smelt", "level required"):
        return "smelt"
    if header in _IGNORED_HEADERS:
        return "ignored"
    return None


def _row(page: str, *, skill=None, kind=None, items=(), npcs=(), currency=None,
         creates=None, unsettledPrice=False, severalSources=False) -> dict:
    row = {"skill": skill, "kind": kind, "items": list(items), "npcs": list(npcs),
           "currency": currency, "creates": creates, "page": page}
    # Only when true, so the common row stays the seven facts above. severalSources is
    # for the inspect report and is not stored.
    if unsettledPrice:
        row["unsettledPrice"] = True
    return row


def _first(ids: "list[int]") -> "int | None":
    return ids[0] if ids else None


def parse_page(html: str, page: str) -> PageFacts:
    """Every recipe fact of one guide page. page is its registry path, stored on each row.

    Raises GuideError for a challenge page or a page without any markup table: either
    would otherwise read as "this guide lists no recipes".
    """
    if is_challenge(html):
        raise GuideError(f"{page}: a challenge page, not the guide")
    facts = PageFacts()
    report = facts.report
    seen_table = False
    for body in markup_bodies(html):
        previous_end = 0
        for match in _TABLE.finditer(body):
            rows = [_TD.findall(tr) for tr in _TR.findall(match.group(1))]
            rows = [r for r in rows if r]
            # Text between the previous table and this one: the tab title and its vendor.
            context = body[previous_end:match.start()]
            previous_end = match.end()
            if not rows:
                continue
            seen_table = True
            header = tuple(_text(c) for c in rows[0])
            kind = _table_kind(header)
            if kind is None:
                report.unknown_headers[" | ".join(header)] += 1
                continue
            report.tables[kind] += 1
            if kind == "ignored":
                continue
            tabs = _TAB.findall(context)
            sold_by = context.rsplit("Sold by", 1)[1] if "Sold by" in context else ""
            for cells in rows[1:]:
                if len(cells) < len(header):
                    report.skipped["fewer cells than the header"] += 1
                    continue
                _read_row(facts, kind, dict(zip(header, cells)), header, page,
                          _ids("npc", sold_by) if tabs or sold_by else [])
    if not seen_table:
        raise GuideError(f"{page}: no markup table found (page format changed?)")
    return facts


def _read_row(facts: PageFacts, kind: str, row: dict, header, page: str, tab_npcs) -> None:
    report = facts.report
    if kind in ("recipe", "minimum"):
        spell = _first(_ids("spell", row[header[0]]))
        if spell is None:
            report.skipped["no [spell=id] in the row"] += 1
            return
        source = parse_source(row["source"])
        if source.get("severalSources"):
            report.unread_sources["several sources in one cell"] += 1
        elif source["kind"] is None:
            lead = re.split(r"[:,(]", _text(row["source"]), maxsplit=1)[0].strip()
            if lead and lead != "unknown":
                report.unread_sources[lead] += 1
        skill = _int(row["skill level" if kind == "recipe" else "minimum skill level"])
        creates = _first(_ids("item", row["crafted item"])) if kind == "recipe" else None
        facts.spells.setdefault(str(spell), []).append(
            _row(page, skill=skill, creates=creates, **source))
    elif kind in ("commerce", "vendors"):
        item = _first(_ids("item", row[header[0]]))
        if item is None:
            report.skipped["no [item=id] in the row"] += 1
            return
        if kind == "commerce":
            # The pages say it: "the Cost column shows the price in Merchant's Favor".
            cost = _int(row[header[2]])
            entry = _row(page, skill=_int(row["skill required"]), kind="VENDOR",
                         items=[item], npcs=tab_npcs, currency=cost if cost else None)
        else:
            entry = _row(page, skill=_int(row["cooking lvl"]), kind="VENDOR", items=[item],
                         npcs=_ids("npc", row["vendor"]))
        facts.items.setdefault(str(item), []).append(entry)
    else:   # smelt
        spell = _first(_ids("spell", row["smelt"]))
        if spell is None:
            report.skipped["no [spell=id] in the row"] += 1
            return
        colours = {name.lower(): (int(value) if value.isdigit() else None)
                   for name, value in _COLOUR.findall(row["level required"])}
        facts.smelts[str(spell)] = {
            **{c: colours.get(c) for c in ("orange", "yellow", "green", "gray")},
            "creates": _first(_ids("item", row.get("creates", ""))), "page": page}
    report.rows += 1


# --- the tracked facts file ------------------------------------------------------------

_DOC = ("Recipe facts read from Wowhead guide tables by scripts/fetch_wowhead_guides.py: per "
        "spell (and per recipe item) the skill, a source keyword, ids and a Merchant's Favor "
        "amount. Hand-written pages: the resolver ranks them below DB2. Do not edit by hand.")


def _numeric(mapping: dict) -> dict:
    return {k: mapping[k] for k in sorted(mapping, key=int)}


def build_doc(pages: "dict[str, tuple[PageFacts, str] | None]", existing: "dict | None") -> dict:
    """The facts document from the pages read in this run.

    pages: registry path -> (facts, fetched date), or None for a page that could not be
    read (offline without a copy, a challenge, a failed request). An unread page keeps the
    rows the existing document has for it, so a run without the network changes nothing;
    a page no longer in the registry is dropped.
    """
    existing = existing or {}
    doc = {"_doc": _DOC, "pages": {}, "spells": {}, "items": {}, "smelts": {}}
    for path, entry in pages.items():
        if entry is None:
            if path not in (existing.get("pages") or {}):
                continue
            doc["pages"][path] = existing["pages"][path]
            for section in ("spells", "items"):
                for key, rows in (existing.get(section) or {}).items():
                    kept = [r for r in rows if r.get("page") == path]
                    if kept:
                        doc[section].setdefault(key, []).extend(kept)
            for key, smelt in (existing.get("smelts") or {}).items():
                if smelt.get("page") == path:
                    doc["smelts"][key] = smelt
            continue
        facts, fetched = entry
        doc["pages"][path] = {"fetched": fetched, "rows": facts.report.rows}
        for section, found in (("spells", facts.spells), ("items", facts.items)):
            for key, rows in found.items():
                doc[section].setdefault(key, []).extend(rows)
        doc["smelts"].update(facts.smelts)
    for section in ("spells", "items", "smelts"):
        doc[section] = _numeric(doc[section])
    return doc


def load_facts(path: Path) -> "dict | None":
    """The facts document, or None when the file does not exist."""
    path = Path(path)
    if not path.exists():
        return None
    doc = load_json(path)
    if not isinstance(doc, dict) or not all(isinstance(doc.get(k), dict)
                                            for k in ("pages", "spells", "items", "smelts")):
        raise ValueError(f"{path}: not a guide facts file (expected 'pages', 'spells', "
                         f"'items' and 'smelts' objects)")
    return doc


# --- what the resolver reads -----------------------------------------------------------

def _agreed(values, label: str, notes: list):
    """The one value the rows give, or None (with a note) when they give several."""
    distinct = sorted({v for v in values if v is not None}, key=str)
    if len(distinct) > 1:
        notes.append(f"guide rows disagree on {label}: {', '.join(str(v) for v in distinct)}")
        return None
    return distinct[0] if distinct else None


def reduce_rows(rows: "list[dict]", smelt: "dict | None" = None) -> "GuideFacts | None":
    """One recipe's guide rows as the resolver's GuideFacts; None without any row.

    A field every row that states it agrees on is kept; one they disagree on is dropped
    and named in a note (the resolver then uses no guide value for it). A smelt row gives
    the first of its four colour numbers as the skill the recipe is learned at.
    """
    if not rows and smelt is None:
        return None
    notes: list[str] = []
    skills = [r.get("skill") for r in rows]
    creates = [r.get("creates") for r in rows]
    if smelt is not None:
        skills.append(next((smelt[c] for c in ("orange", "yellow", "green", "gray")
                            if smelt.get(c) is not None), None))
        creates.append(smelt.get("creates"))
    kinds = {r.get("kind") for r in rows} - {None}
    if kinds == {"TRAINER", "SPECIAL_TRAINER"}:
        kinds = {"SPECIAL_TRAINER"}      # the same claim, one row being more specific
    skill = _agreed(skills, "skill", notes)
    kind = _agreed(kinds, "source", notes)
    prices = [r.get("currency") for r in rows]
    currency = _agreed(prices, "price", notes)
    # Sold for Merchant's Favor, but the pages do not agree on (or a cell does not settle)
    # the amount: the resolver must not fall back to a gold price for it.
    unsettled = currency is None and (any(v is not None for v in prices)
                                      or any(r.get("unsettledPrice") for r in rows))
    created = _agreed(creates, "created item", notes)
    items = tuple(dict.fromkeys(i for r in rows for i in r.get("items") or ()))
    return GuideFacts(skill=skill, kind=kind, currency=currency, items=items,
                      creates=created, notes=tuple(notes), currency_unsettled=unsettled)


def facts_for(doc: "dict | None", spell_id: str, item_ids) -> "GuideFacts | None":
    """GuideFacts of one spell: its own rows plus the rows of the recipe items DB2 links
    to it (item_ids), which is how a commerce-table row finds its spell."""
    if not doc:
        return None
    rows = list(doc["spells"].get(spell_id, ()))
    for item in item_ids:
        rows += doc["items"].get(str(item), ())
    return reduce_rows(rows, doc["smelts"].get(spell_id))


def skills_for(doc: "dict | None", spell_id: str, item_ids) -> "list[int]":
    """Every skill number the guide rows of a spell give, disagreeing ones included (the
    coverage gate wants the earliest learn skill any source mentions)."""
    if not doc:
        return []
    rows = list(doc["spells"].get(spell_id, ()))
    for item in item_ids:
        rows += doc["items"].get(str(item), ())
    skills = [r["skill"] for r in rows if type(r.get("skill")) is int]
    smelt = doc["smelts"].get(spell_id)
    if smelt is not None:
        skills += [smelt[c] for c in ("orange", "yellow", "green", "gray")
                   if type(smelt.get(c)) is int][:1]
    return skills
