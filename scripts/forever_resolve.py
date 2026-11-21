"""Resolve the learn skill (orange) and the source of a Forever recipe.

Pure and table-driven, no I/O: the wiki enrich step gathers the facts (DB2 build,
the matched Warcraft Wiki row, the owner's in-game capture, the cross buckets' oranges
and trainer sources) and this module applies the fixed precedence of the plan's rulings
R1, R2, R5, R8 and R12. A value that cannot be established is never guessed: the recipe
gets a review reason instead, and the generator excludes it and lists it in REVIEW.md.

Later steps read review reasons by prefix, so keep these wordings:
"not in game:" and "no skill-up:" mark recipes that do not count as in game for the
coverage gate; "no learn skill" marks a recipe without a trustworthy orange; "no wiki
row" (alone, or ": row '<key>' taken by spell <id>") marks a recipe the wiki does not
describe.
"""
from dataclasses import dataclass
from typing import Sequence

from wiki import UNRECOGNISED_COST, WikiRow, normalize

CURRENCY_NAME = "Merchant's Favor"
NOT_IN_GAME = "not in game: absent from the in-game recipe list"
NO_SKILL_UP = "no skill-up: yellow == gray"
NO_WIKI_ROW = "no wiki row"
UNPRICED_VENDOR_NOTE = "wiki says vendor; price not in DB2 or wiki"

# orangeFrom -> difficulty.certainty. An item rank is a DB2 fact, hence DB2.
_CERTAINTY = {"INGAME": "INGAME", "ITEM": "DB2", "CROSS": "CROSS", "WIKI": "WIKI"}
_TRAINER_KINDS = ("STARTER", "TRAINER", "SPECIAL_TRAINER")


@dataclass(frozen=True)
class RecipeFacts:
    """What DB2 says about one recipe of one profession.

    teaching_item is the already filtered choice (db2.choose_teaching_item), so a
    scroll copy or placeholder item never counts as "has a teaching item". rsr,
    buy_price, min_faction, faction_name and rep_level describe that item (0/None
    without one); rep_level is the DB2 MinReputation name (extract's REP_LEVELS).
    """
    spell_id: str
    name: str
    item_name: "str | None"   # created item; None for enchants, which make no item
    yellow: int
    gray: int
    teaching_item: "str | None"
    rsr: int
    buy_price: int
    min_faction: int
    faction_name: "str | None"
    rep_level: "str | None"


@dataclass(frozen=True)
class IngameFacts:
    """The owner's in-game capture for one recipe.

    present: in the captured recipe list; None = the profession's recipes were not
    captured. trainer_skill: the skill the in-game trainer asks for; None = the
    trainer list does not have it (or was not captured). trainer_cost: the copper price
    the trainer showed; None when the probe printed nil or there is no trainer entry.
    trainer_key: the (normalized) name the trainer entry is filed under, None without one;
    trainer_ambiguities groups spells by it.
    """
    present: "bool | None"
    trainer_skill: "int | None"
    trainer_cost: "int | None" = None
    trainer_key: "str | None" = None


@dataclass(frozen=True)
class CrossTrainer:
    """Another bucket's verified trainer source for the same, unchanged recipe (R12).

    The caller has checked it (fetch_wiki_sources.cross_trainer): source TRAINER with
    certainty WOWHEAD or MANUAL, and that bucket's yellow AND gray equal this build's.
    bucket is the display name the note uses (the bucket's folder, e.g. "SoD").
    """
    bucket: str
    certainty: str


@dataclass(frozen=True)
class Resolution:
    source: "dict | None"
    difficulty: "dict | None"
    review: "str | None"
    notes: "tuple[str, ...]" = ()

    def __post_init__(self):
        resolved = self.source is not None and self.difficulty is not None
        half = (self.source is None) != (self.difficulty is None)
        # A half-resolved recipe would reach the generator with a source but no
        # thresholds (or the reverse): refuse to build one.
        if half or resolved == (self.review is not None):
            raise ValueError("a Resolution has source and difficulty, or a review, never both")


# --- wiki matching -----------------------------------------------------------------

def candidate_keys(facts: RecipeFacts) -> list[str]:
    keys = []
    for name in (facts.item_name, facts.name):
        if name:
            key = normalize(name)
            if key and key not in keys:
                keys.append(key)
    return keys


def _unique(rows) -> list[WikiRow]:
    # index_rows files a row under its link target AND its display text, so the same
    # row object can be reached twice; count it once (by identity, not equality).
    out = []
    for r in rows:
        if not any(r is seen for seen in out):
            out.append(r)
    return out


def _candidates(facts: RecipeFacts, index) -> "tuple[str | None, list[WikiRow]]":
    """(key, rows) of the first candidate key that has rows; (None, []) when none.

    WHY item name first and the spell name only as a fallback (not both at once): the
    wiki tables are keyed by the created item's name (spec D15); the spell name is
    there for enchants, which create no item. Merging both would make a recipe
    ambiguous whenever its spell name happens to be another row's item name.
    """
    for key in candidate_keys(facts):
        rows = _unique(index.get(key, ()))
        if rows:
            return key, rows
    return None, []


def build_claims(facts: "list[RecipeFacts]", index,
                 ingame: "dict[str, IngameFacts | None] | None" = None
                 ) -> "dict[str, list[str]]":
    """Row key -> spell ids (first-seen order) of the profession whose candidates include it.

    Built over every recipe of one profession, before any alias is applied: a row
    that an alias gives to one spell still shows as claimed by the others. Ownership
    (aliases, then teaching-item rank) is assign_owners' job; match_wiki tells every
    other spell reaching an owned row that it is taken (never a silent second owner).
    Keyed by the row's own key, not the lookup key, so two spells reaching one row
    through its link target and its display text are both counted.

    ingame maps spell id -> that spell's IngameFacts (the same values resolve gets).
    A spell the capture marks absent claims nothing: R8 excludes it anyway, and its
    claim would otherwise keep the revised spell that IS in game ambiguous, which is
    exactly the old/revised pair a capture is meant to decide.
    """
    ingame = ingame or {}
    claims: dict[str, list[str]] = {}
    for f in facts:
        capture = ingame.get(f.spell_id)
        if capture is not None and capture.present is False:
            continue
        _key, rows = _candidates(f, index)
        for r in rows:
            ids = claims.setdefault(r.key, [])
            if f.spell_id not in ids:
                ids.append(f.spell_id)
    return claims


def _alias_rows(index, alias) -> "list[WikiRow]":
    return [r for r in _unique(index.get(normalize(alias["key"]), ()))
            if r.skill == alias["skill"]]


def assign_owners(facts: "list[RecipeFacts]", index, claims,
                  aliases=None) -> "dict[WikiRow, str]":
    """Wiki row -> the one spell of the profession it belongs to.

    Ruling 2026-11-21, aliases first:
      * an alias naming exactly one row makes its spell that row's owner, whether or not
        the row is shared. WHY even an unshared row: a spell reaching it by name would
        otherwise ship the same source and skill a second time.
      * a row several spells claim by name goes to the UNIQUE claimant without an alias
        whose chosen teaching item's RequiredSkillRank equals the row's skill (both > 0).
        WHY that test: on the old/revised pairs the revised spell's pattern asks for
        exactly the skill the Forever wiki lists, and the rank is a DB2 fact, not a name
        guess. No match, or several, leaves the row without an owner, so match_wiki keeps
        it ambiguous. A spell with an alias does not compete: its alias says which row is
        its own.
    Two aliases naming one row raise ValueError (one row, one owner).
    """
    aliases = aliases or {}
    by_id = {f.spell_id: f for f in facts}
    owners: dict[WikiRow, str] = {}
    for sid, alias in aliases.items():
        # The alias file serves every profession of the bucket: only this one's spells.
        if sid not in by_id:
            continue
        rows = _alias_rows(index, alias)
        if len(rows) != 1:
            continue  # a bad alias owns nothing; match_wiki reports it for its spell
        r = rows[0]
        if r in owners:
            raise ValueError(f"aliases of spells {owners[r]} and {sid} both name wiki row "
                             f"'{r.key}' with skill {r.skill}")
        owners[r] = sid
    # Every distinct row once: index files a row under its key and its display text.
    rows = {id(r): r for found in index.values() for r in found}.values()
    for r in rows:
        if r in owners or not r.skill or r.skill <= 0:
            continue
        spells = sorted(set(claims.get(r.key, ())), key=int)
        if len(spells) < 2:
            continue
        matches = [s for s in spells
                   if s not in aliases and by_id[s].rsr > 0 and by_id[s].rsr == r.skill]
        if len(matches) == 1:
            owners[r] = matches[0]
    return owners


def match_wiki(facts: RecipeFacts, index, aliases, claims,
               owners=None) -> "WikiRow | str":
    """The one wiki row describing this recipe, or the reason there is none.

    owners is assign_owners' result: an owned row goes to its owner only, and every
    other spell reaching it is told it is taken. Without owners a row several spells
    claim is ambiguous.
    """
    owners = owners or {}
    alias = aliases.get(facts.spell_id)
    if alias is not None:
        key = normalize(alias["key"])
        rows = _alias_rows(index, alias)
        if len(rows) == 1:
            return rows[0]
        # WHY no fall back to name matching: the alias exists because name matching
        # was wrong or ambiguous for this spell; a stale alias must show up, not
        # silently hand the recipe whatever the names give.
        return f"bad alias: {len(rows)} wiki rows named '{key}' with skill {alias['skill']}"
    key, rows = _candidates(facts, index)
    if not rows:
        return NO_WIKI_ROW
    if len(rows) > 1 and facts.rsr > 0:
        # Old and revised versions of a recipe share a name; the teaching item's
        # RequiredSkillRank equals the wiki skill of its own row.
        same = [r for r in rows if r.skill == facts.rsr]
        if same:
            rows = same
    kept, taken = [], None
    for r in rows:
        owner = owners.get(r)
        # WHY every row, shared or not: an alias may own a row only this spell reaches
        # by name; one row never gives its source and skill to two spells.
        if owner is not None and owner != facts.spell_id:
            taken = taken or (r, owner)
            continue
        spells = sorted(set(claims.get(r.key, ())), key=int)
        # WHY even after the rank filter: measured 66 wiki rows matching two DB2 spells
        # (an old Classic spell next to its revised Forever spell). One row cannot give
        # both their source and skill: without an owner all claimants wait for an alias
        # or in-game.
        if owner is None and len(spells) > 1:
            return f"ambiguous: wiki row '{r.key}' matches spells {', '.join(spells)}"
        kept.append(r)
    if not kept:
        r, owner = taken
        return f"{NO_WIKI_ROW}: row '{r.key}' taken by spell {owner}"
    if len(kept) > 1:
        return f"ambiguous: {len(kept)} wiki rows named '{key}'"
    return kept[0]


def trainer_ambiguities(ingame: "dict[str, IngameFacts | None]") -> "dict[str, str]":
    """spell id -> review reason for each spell whose in-game trainer entry another spell
    of the profession also reaches.

    WHY: the probe lists trainer entries by name only, and an old Classic spell and its
    revised Forever spell share one (measured 66 same-name groups on 1.60.1.71037). Typing
    both TRAINER with the trainer's skill would ship one entry's facts twice, once on a
    spell the trainer may not teach. A spell a recipe capture marks absent does not count:
    it is excluded as not in game, so the entry is the remaining spell's.
    """
    by_key: dict[str, list[str]] = {}
    for sid, capture in ingame.items():
        if capture is None or capture.trainer_skill is None or capture.present is False:
            continue
        by_key.setdefault(capture.trainer_key, []).append(sid)
    out: dict[str, str] = {}
    for key, spells in by_key.items():
        if len(spells) < 2:
            continue
        ids = sorted(spells, key=int)
        reason = f"ambiguous: in-game trainer entry '{key}' matches spells {', '.join(ids)}"
        out.update(dict.fromkeys(ids, reason))
    return out


# --- resolution --------------------------------------------------------------------

def resolve(facts: RecipeFacts, wiki: "WikiRow | str", ingame: "IngameFacts | None",
            cross_oranges: "Sequence[tuple[str, int]] | None",
            cross_trainer: "CrossTrainer | None" = None, *,
            manual_difficulty: "dict | None" = None,
            trainer_review: "str | None" = None) -> Resolution:
    """Apply R8 (in game), R5 (skill-up), R1 (orange) then R2 + R12 (source), in that order.

    wiki is the match_wiki result. cross_oranges holds (bucket name, orange) per cross
    bucket in registry order, each a WOWHEAD orange passed only when Forever's yellow AND
    gray equal that bucket's; the first one within 1..yellow is used. cross_trainer is
    the R12 evidence, already checked by the caller. manual_difficulty is a hand-aligned
    (certainty MANUAL) difficulty the recipe already has: R1 is skipped, it comes back
    unchanged, and only the source is resolved. trainer_review is the
    trainer_ambiguities reason for this spell, if any.
    """
    # R8 first: a recipe the game does not have must not count toward coverage, so it
    # is reported as such whatever else is wrong with it.
    if ingame is not None and ingame.present is False:
        return Resolution(None, None, NOT_IN_GAME)
    # R5: a recipe that is gray from the start gives no skill-up (camping crafts).
    if facts.yellow >= facts.gray:
        reason = (NO_SKILL_UP if facts.yellow == facts.gray
                  else f"no skill-up: yellow {facts.yellow} above gray {facts.gray}")
        return Resolution(None, None, reason)
    if trainer_review is not None:
        # After the two checks above, so a recipe the game lacks or one without a skill-up
        # keeps that reason; before every source rule, because the trainer entry would win
        # them all for a spell it may not teach.
        return Resolution(None, None, trainer_review)
    notes: list[str] = []
    row = wiki if isinstance(wiki, WikiRow) else None
    trainer_skill = ingame.trainer_skill if ingame is not None else None
    trainer_cost = ingame.trainer_cost if ingame is not None else None

    if manual_difficulty is not None:
        # Hand-verified state wins over any automatic value (as a MANUAL source does in the
        # enrich step); what disagrees with it is kept visible as a note.
        _manual_notes(facts, manual_difficulty, trainer_skill, notes)
        source = _source(facts, wiki, row, trainer_skill, trainer_cost, cross_trainer, notes)
        if isinstance(source, str):
            return Resolution(None, None, source, tuple(notes))
        return Resolution(source, manual_difficulty, None, tuple(notes))

    orange = _orange(facts, wiki, row, trainer_skill, cross_oranges or (), notes)
    if isinstance(orange, str):
        return Resolution(None, None, orange, tuple(notes))
    value, origin = orange
    source = _source(facts, wiki, row, trainer_skill, trainer_cost, cross_trainer, notes)
    if isinstance(source, str):
        return Resolution(None, None, source, tuple(notes))
    difficulty = {
        "orange": value,
        "yellow": facts.yellow,
        # R5 / spec D14: floor((yellow + gray) / 2) held for 99.8% of shipped
        # Classic-era recipes; DB2 has no green column.
        "green": (facts.yellow + facts.gray) // 2,
        "gray": facts.gray,
        "certainty": _CERTAINTY[origin],
        "orangeFrom": origin,
    }
    return Resolution(source, difficulty, None, tuple(notes))


def _manual_notes(facts, manual, trainer_skill, notes):
    yg = (manual.get("yellow"), manual.get("gray"))
    if yg != (facts.yellow, facts.gray):
        # A new build may have moved the thresholds since the value was aligned.
        notes.append(f"MANUAL difficulty yellow/gray {yg[0]}/{yg[1]} differ from DB2 "
                     f"{facts.yellow}/{facts.gray}")
    if trainer_skill is not None and trainer_skill != manual.get("orange"):
        notes.append(f"in-game trainer skill {trainer_skill} differs from MANUAL orange "
                     f"{manual.get('orange')}")


def _orange(facts, wiki, row, trainer_skill, cross_oranges, notes):
    """(orange, orangeFrom) per R1, or a review reason."""
    yellow = facts.yellow
    # INGAME first: the trainer's skill requirement is the game itself. Not checked
    # against lower tiers; out of 1..yellow it is a contradiction for a human (the
    # generator asserts orange <= yellow), never a reason to take a weaker value.
    if trainer_skill is not None:
        if row is None:
            # The trainer decides even an unmatched recipe; keep why the wiki could not
            # (a stale alias or an ambiguity stays visible in REVIEW.md).
            notes.append(f"in-game trainer decides it; wiki: {wiki}")
        if not 1 <= trainer_skill <= yellow:
            return f"no learn skill: in-game trainer skill {trainer_skill} outside 1-{yellow}"
        if row is not None and row.skill is not None and row.skill != trainer_skill:
            # Spec D16a: where in-game and the wiki disagree, in-game wins and the
            # recipe is recorded in REVIEW.md.
            notes.append(f"in-game trainer skill {trainer_skill} differs from wiki skill "
                         f"{row.skill}")
        return trainer_skill, "INGAME"
    # ITEM next: the teaching item's RequiredSkillRank was <= yellow on every item
    # recipe measured; one above yellow is not a learn skill the thresholds allow.
    if facts.teaching_item is not None and facts.rsr > 0:
        if facts.rsr <= yellow:
            _note_wiki_skill(row, facts.rsr, "ITEM", notes)
            return facts.rsr, "ITEM"
        notes.append(f"teaching item {facts.teaching_item} RequiredSkillRank {facts.rsr} "
                     f"above yellow {yellow} ignored")
    # CROSS before WIKI: on unchanged recipes (same yellow and gray) the wiki skill
    # disagreed with the Wowhead-verified Vanilla orange on most of them. 0 is the
    # "learned at 0" convention (ADR-005), not a learn skill to copy; an unusable orange
    # falls through to the next bucket, then to the wiki.
    for bucket, cross in cross_oranges:
        if 0 < cross <= yellow:
            _note_wiki_skill(row, cross, "CROSS", notes)
            return cross, "CROSS"
        if cross > yellow:
            notes.append(f"{bucket} orange {cross} above yellow {yellow} ignored")
    if row is None:
        # No matched row: the failed match is the root cause to report.
        return wiki
    # WIKI last: its skill was above yellow on 61 recipes and equals yellow on 30-50%
    # of trainer recipes, so it only fills what nothing better covers.
    skill = row.skill
    if skill is None:
        return "no learn skill: wiki row has no skill"
    if skill > yellow:
        return f"no learn skill: wiki skill {skill} above yellow {yellow}"
    if skill < 1:
        return f"no learn skill: wiki skill {skill} below 1"
    return skill, "WIKI"


def _note_wiki_skill(row, orange, origin, notes):
    # WHY: the row is matched by name only, so a recipe renamed or reworked on Forever can
    # match another recipe's row; its source would then be that recipe's. A skill that
    # disagrees with the stronger orange is the visible sign, listed in REVIEW.md.
    if row is not None and row.skill is not None and row.skill != orange:
        notes.append(f"wiki row skill {row.skill} differs from {origin} orange {orange}")


def _source(facts, wiki, row, trainer_skill, trainer_cost, cross_trainer, notes):
    """The source dict per R2 (and R12 where the wiki leaves it open), or a review reason."""
    item = int(facts.teaching_item) if facts.teaching_item is not None else None
    # The in-game trainer list wins over every wiki kind and over a DB2 teaching item:
    # the owner saw a trainer teach it. Disagreements are kept as notes (spec D16a).
    if trainer_skill is not None:
        if row is not None and row.kind != "TRAINER":
            notes.append(f"in-game trainer teaches it; wiki source '{row.raw_source}'")
        if item is not None:
            notes.append(f"in-game trainer teaches it; DB2 also has teaching item {item}")
        source = {"type": "TRAINER", "certainty": "INGAME"}
        # Only a positive price: 0 would read as a free recipe and None is an unread one
        # (the probe printed nil); type() is int also rejects a JSON true.
        if type(trainer_cost) is int and trainer_cost > 0:
            source["trainingCost"] = trainer_cost
        return source
    if row is None:
        # R12 only for a recipe the wiki does not list at all. A row taken by another
        # spell or an ambiguous one marks an old/revised pair, where the other spell may
        # be the one the game teaches; a bad alias needs fixing, not a fallback.
        if wiki == NO_WIKI_ROW and item is None and cross_trainer is not None:
            return _cross_trainer(cross_trainer, None, notes)
        # Spec D15: no wiki row (or an ambiguous one) -> review, never a default source.
        return wiki
    if row.kind == UNRECOGNISED_COST or (row.currency is not None and row.currency <= 0):
        # A Merchant's Favor amount of 0 would read as a free recipe, and one that is not
        # a plain number ("1,200") would be read wrong; either cell is one this parser does
        # not understand, not a price. Checked before the reputation branch, which would
        # otherwise ship the recipe.
        return f"unrecognised wiki cost: '{row.raw_source}'"
    if row.rep_level is not None:
        if facts.min_faction <= 0:
            # The wiki rep level alone carries no faction id or name to emit.
            if item is None:
                return "reputation level without DB2 faction"
            # R2 as amended 2026-11-21: UNKNOWN with the item, not excluded. All 20
            # such rows (Alchemy, Merchant's Favor; MinFactionID 0 on 1.60.1.71037) name
            # a commerce faction DB2 does not carry; excluding them would hide recipes
            # the player has already learned, and UNKNOWN makes no claim about the cost.
            price = f" for {row.currency} {CURRENCY_NAME}" if row.currency is not None else ""
            notes.append(f"wiki: {row.rep_level} with a commerce faction{price}; "
                         f"faction not in DB2")
            return _unknown(item)
        if row.rep_level != facts.rep_level:
            notes.append(f"wiki reputation level {row.rep_level} differs from DB2 "
                         f"{facts.rep_level}")
    kind = row.kind
    if facts.min_faction > 0 and kind in ("DROP", "QUEST", "UNKNOWN"):
        # R2 keeps the wiki kind (no faction-gated source type fits a drop or a quest),
        # but the DB2 faction requirement is a fact the data would otherwise lose
        # (15 recipes on 1.60.1.71037 with the wiki of 2026-11-21), so REVIEW.md lists it.
        notes.append(_faction_note(facts, item, row))
    if kind in _TRAINER_KINDS:
        # D15 covers only trainer/automatic recipes WITHOUT an item; with one, wiki and
        # DB2 disagree on how it is learned and neither may silently win.
        if item is not None:
            return f"trainer per wiki but DB2 has teaching item {item}"
        if kind == "STARTER":
            return {"type": "STARTER", "certainty": "WIKI"}
        source = {"type": "TRAINER", "certainty": "WIKI"}
        if kind == "SPECIAL_TRAINER":
            source["npcName"] = "Special trainer"
        return source
    if kind == "VENDOR":
        return _vendor(facts, row, item, notes)
    if kind == "DROP":
        if item is None:
            return "drop per wiki but DB2 has no teaching item"
        return {"type": "DROP", "certainty": "WIKI", "itemId": item}
    if kind == "QUEST":
        source = {"type": "QUEST", "certainty": "WIKI"}
        if item is not None:
            source["itemId"] = item
        return source
    if kind == "UNKNOWN":
        if item is None:
            # Reached for a "?", empty or template-only cell (wiki.classify_source strips
            # templates it does not read); a reputation level or a cost returned above.
            if cross_trainer is not None:
                return _cross_trainer(cross_trainer, row, notes)
            return "unknown source and no teaching item"
        return _unknown(item)
    # CRAFTED and any other text: no source type says it faithfully.
    return f"unsupported wiki source: '{row.raw_source}'"


def _cross_trainer(cross: CrossTrainer, row, notes):
    # R12: two independent signals agree - Forever's own DB2 has no teaching item for the
    # recipe, and another bucket's verified source for the unchanged recipe (same yellow
    # and gray) is a trainer. Measured 2026-11-21: Mining's wiki page has no recipe table
    # and Engineering shipped nothing at skill 1-24 without it. No trainingCost: that
    # bucket's price is not Forever's.
    # The note says which half of the wiki evidence was missing: the row or its source.
    wiki_state = "no wiki row" if row is None else "wiki source unknown"
    notes.append(f"trainer per {cross.bucket} ({cross.certainty}); {wiki_state}")
    return {"type": "TRAINER", "certainty": "CROSS"}


def _unknown(item):
    # R3: UNKNOWN ships only with the item, so it stays "usable when owned or bought"
    # and is never a claim about where it comes from or what it costs.
    return {"type": "UNKNOWN", "certainty": "WIKI", "itemId": item}


def _faction_note(facts, item, row):
    return (f"DB2 faction {facts.min_faction} {facts.faction_name} {facts.rep_level} "
            f"on teaching item {item}; wiki source '{row.raw_source}'")


def _vendor(facts, row, item, notes):
    if item is None:
        return "vendor per wiki but DB2 has no teaching item"
    if row.currency is not None:
        # WHY no cost key: a Merchant's Favor recipe has no gold price, and cost = 0
        # (or the item BuyPrice) would read as free or as gold (spec D16).
        price = {"currency": {"name": CURRENCY_NAME, "amount": row.currency}}
    elif facts.buy_price > 0:
        # Hard rule 12: BuyPrice alone never proves a vendor; the wiki saying Vendor
        # does, and BuyPrice is then the true price.
        price = {"cost": facts.buy_price}
    else:
        # R2 as amended 2026-11-21: no price in DB2 (BuyPrice 0) or on the wiki
        # (measured 75 recipes, e.g. "Plans: Justice Greaves"). A VENDOR without a cost
        # reads as free downstream, and excluding would hide recipes the player has
        # already learned, so ship UNKNOWN with the item and say what the wiki claimed.
        notes.append(UNPRICED_VENDOR_NOTE)
        if facts.min_faction > 0:
            notes.append(_faction_note(facts, item, row))
        return _unknown(item)
    if facts.min_faction > 0:
        # A DB2 faction on the item makes a plain wiki "Vendor" a reputation vendor.
        if not facts.faction_name or not facts.rep_level:
            return f"reputation faction {facts.min_faction} without a DB2 name or level"
        return {"type": "REPUTATION", "certainty": "WIKI", "itemId": item,
                "factionId": facts.min_faction, "factionName": facts.faction_name,
                "level": facts.rep_level, **price}
    return {"type": "VENDOR", "certainty": "WIKI", "itemId": item, **price}
