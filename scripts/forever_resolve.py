"""Resolve the learn skill (orange) and the source of a Forever recipe.

Pure and table-driven, no I/O: the wiki enrich step gathers the facts (DB2 build, the
Wowhead guide tables, the matched Warcraft Wiki row, the owner's in-game capture, the
cross buckets' oranges and trainer sources) and this module applies one order of trust.
Strongest first, and a weaker source that disagrees with the winner only adds a note:

  in game      the in-game recipe capture (absent = not in game); then DB2: AcquireMethod 3
               (never learned), or a leftover trade-skill category whose created item the
               build has no data for.
  learn skill  the in-game trainer; DB2 AcquireMethod 1 (learned automatically at
               MinSkillLineRank); the DB2 teaching item's RequiredSkillRank; the guide
               table's skill or a cross bucket's verified orange for the unchanged recipe
               (the later of the two where both exist); the wiki skill.
  source       the in-game trainer; DB2 AcquireMethod 1 (STARTER); a DB2 teaching item,
               typed and priced by the guide, else by the wiki; without one, the guide's
               trainer / automatic row, a cross bucket's verified trainer, the wiki.

A recipe whose yellow equals its gray, or that can only be learned at or above gray, gives
no skill-up. A learn skill above yellow (and below gray) is accepted from the trainer, the
item rank or MinSkillLineRank, and from the weaker sources only when two of them agree. A
value that cannot be established is never guessed: the recipe gets a review reason
instead, and the generator excludes it and lists it in REVIEW.md.

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

NEVER_LEARNED = "DB2 marks it never learned (AcquireMethod 3)"
AUTO_LEARNED = "DB2 marks it learned automatically"

# SkillLineAbility.AcquireMethod values this module reads (0 = learned some other way).
ACQUIRE_AUTO = 1     # learned by itself once the skill reaches MinSkillLineRank
ACQUIRE_NEVER = 3    # never learned: the row is kept in the build, the recipe is not in game

# orangeFrom -> difficulty.certainty. An item rank and MinSkillLineRank are DB2 facts.
_CERTAINTY = {"INGAME": "INGAME", "AUTO": "DB2", "ITEM": "DB2", "GUIDE": "GUIDE",
              "CROSS": "CROSS", "WIKI": "WIKI"}
_TRAINER_KINDS = ("STARTER", "TRAINER", "SPECIAL_TRAINER")
# Wiki kinds that say how a recipe is learned; UNKNOWN, a bare cost or other text do not.
_CLAIM_KINDS = _TRAINER_KINDS + ("VENDOR", "DROP", "QUEST")


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
    # The fields below default to "the bucket does not read this", so a bucket without
    # these registry switches resolves exactly as before.
    acquire: int = 0                    # SkillLineAbility.AcquireMethod (ACQUIRE_*)
    min_rank: int = 0                   # SkillLineAbility.MinSkillLineRank
    created_item: "str | None" = None   # id of the created item; None for enchants
    created_missing: bool = False       # the build has no data (ItemSparse) for created_item
    # Name of the registry leftover category (Bucket.leftover_categories) the recipe sits
    # in, None when it is in none.
    leftover_category: "str | None" = None
    # Items DB2 links as teaching this spell but has no data for, so none of them is
    # teaching_item; a guide row naming one may still type the recipe.
    unlisted_items: "tuple[str, ...]" = ()


@dataclass(frozen=True)
class GuideFacts:
    """What Wowhead's guide tables say about one recipe (wowhead_guide.reduce_rows).

    Hand-written pages, so every field ranks below DB2 and below the in-game capture.
    A field is None (or empty) when no row gives it or the rows disagree on it; notes say
    what they disagree on. kind is STARTER, TRAINER, SPECIAL_TRAINER, VENDOR, DROP, QUEST
    or None; currency is a Merchant's Favor amount (always positive); creates is the
    created item a row names, checked against DB2's before the row counts.
    """
    skill: "int | None" = None
    kind: "str | None" = None
    currency: "int | None" = None
    items: "tuple[int, ...]" = ()
    creates: "int | None" = None
    notes: "tuple[str, ...]" = ()
    # Sold for Merchant's Favor, but the rows give several amounts (currency is None).
    currency_unsettled: bool = False


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
    """Another bucket's verified trainer source for the same, unchanged recipe.

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
    wiki tables are keyed by the created item's name; the spell name is
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
    A spell the capture marks absent claims nothing: it is excluded as not in game, and its
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

    Aliases first:
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
        if (capture is None or capture.trainer_skill is None or capture.trainer_key is None
                or capture.present is False):
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


def db2_absence(facts: RecipeFacts) -> "str | None":
    """Why DB2 itself says the recipe is not in game, or None: marked never learned, or in
    a leftover trade-skill category while its created item has no data in the build."""
    if facts.acquire == ACQUIRE_NEVER:
        return NEVER_LEARNED
    if facts.leftover_category is not None and facts.created_missing:
        return (f"DB2 category '{facts.leftover_category}', created item "
                f"{facts.created_item} not in this build")
    return None


def release_trainer_entries(ingame: "dict[str, IngameFacts | None]",
                            absent) -> "dict[str, IngameFacts | None]":
    """ingame, with the trainer entry taken away from each spell in `absent` (those DB2
    marks as not in game) whenever a spell DB2 does have reaches the same entry.

    WHY: trainer entries are matched by name, and an old spell and its revised one share a
    name. When DB2 says the old one is not in game, the entry is the revised spell's:
    without this the two would stay ambiguous, and the old one would count as seen at the
    trainer. A spell the recipe list shows keeps its entry (the capture outranks DB2), and
    an entry only DB2-absent spells reach stays with them: the trainer teaches something.
    """
    def has_entry(c):
        return c is not None and c.trainer_key is not None and c.trainer_skill is not None
    live = {c.trainer_key for sid, c in ingame.items()
            if has_entry(c) and c.present is not False and sid not in absent}
    out = {}
    for sid, c in ingame.items():
        if sid in absent and has_entry(c) and c.present is not True and c.trainer_key in live:
            c = IngameFacts(present=c.present, trainer_skill=None)
        out[sid] = c
    return out


# --- resolution --------------------------------------------------------------------

def resolve(facts: RecipeFacts, wiki: "WikiRow | str", ingame: "IngameFacts | None",
            cross_oranges: "Sequence[tuple[str, int]] | None",
            cross_trainer: "CrossTrainer | None" = None, *,
            manual_difficulty: "dict | None" = None,
            trainer_review: "str | None" = None,
            guide: "GuideFacts | None" = None,
            cross_learned: "Sequence[tuple[str, int]]" = ()) -> Resolution:
    """Decide in game, then skill-up, then the orange, then the source, in that order.

    wiki is the match_wiki result. cross_oranges holds (bucket name, orange) per cross
    bucket in registry order, each a WOWHEAD orange passed only when Forever's yellow AND
    gray equal that bucket's; the first one within 1..yellow is used. cross_trainer is
    the cross bucket's trainer evidence, already checked by the caller. manual_difficulty
    is a hand-aligned (certainty MANUAL) difficulty the recipe already has: no orange is
    chosen, it comes back unchanged, and only the source is resolved. trainer_review is
    the trainer_ambiguities reason for this spell, if any. guide holds the Wowhead guide
    facts of this spell. cross_learned holds (bucket name, skill) for a cross bucket whose
    Wowhead record says the unchanged recipe is learned above this build's yellow; such a
    skill counts only when a second source gives the same number.
    """
    # In game first: a recipe the game does not have must not count toward coverage, so it
    # is reported as such whatever else is wrong with it.
    if ingame is not None and ingame.present is False:
        return Resolution(None, None, NOT_IN_GAME)
    notes: list[str] = []
    # DB2's own signs that a recipe is not in game rank below the capture: a recipe the
    # owner saw in the recipe list, or at a trainer when no recipe list was captured, is
    # in game whatever the tables say (kept as a note). The trainer entry is this spell's
    # own: release_trainer_entries took it away where a spell DB2 does have shares it.
    absent = db2_absence(facts)
    if absent is not None:
        seen = ingame is not None and (
            ingame.present is True
            or (ingame.present is None and ingame.trainer_skill is not None))
        if not seen:
            return Resolution(None, None, f"not in game: {absent}")
        notes.append(f"in-game capture has it; {absent}")
    elif facts.created_missing:
        # Outside a leftover category the guides list such recipes as current ones
        # (measured 2026-11-22: 47 of them), so the missing item data is only noted.
        notes.append(f"created item {facts.created_item} has no data in this build")
    # A recipe that is gray from the start gives no skill-up (camping crafts).
    if facts.yellow >= facts.gray:
        reason = (NO_SKILL_UP if facts.yellow == facts.gray
                  else f"no skill-up: yellow {facts.yellow} above gray {facts.gray}")
        return Resolution(None, None, reason, tuple(notes))
    if trainer_review is not None:
        # After the two checks above, so a recipe the game lacks or one without a skill-up
        # keeps that reason; before every source rule, because the trainer entry would win
        # them all for a spell it may not teach.
        return Resolution(None, None, trainer_review, tuple(notes))
    if guide is not None:
        if (guide.creates is not None and facts.created_item is not None
                and str(guide.creates) != facts.created_item):
            # The guide's own created item is the one check a hand-written row allows.
            notes.append(f"guide row describes another item (creates {guide.creates}, DB2 "
                         f"{facts.created_item}); ignored")
            guide = None
        else:
            notes.extend(guide.notes)
    row = wiki if isinstance(wiki, WikiRow) else None
    trainer_skill = ingame.trainer_skill if ingame is not None else None
    trainer_cost = ingame.trainer_cost if ingame is not None else None

    if manual_difficulty is not None:
        # Hand-verified state wins over any automatic value (as a MANUAL source does in the
        # enrich step); what disagrees with it is kept visible as a note.
        _manual_notes(facts, manual_difficulty, trainer_skill, notes)
        source = _source(facts, wiki, row, trainer_skill, trainer_cost, cross_trainer,
                         guide, notes)
        if isinstance(source, str):
            return Resolution(None, None, source, tuple(notes))
        return Resolution(source, manual_difficulty, None, tuple(notes))

    orange = _orange(facts, wiki, row, trainer_skill, cross_oranges or (), guide,
                     cross_learned or (), notes)
    if isinstance(orange, str):
        return Resolution(None, None, orange, tuple(notes))
    value, origin = orange
    source = _source(facts, wiki, row, trainer_skill, trainer_cost, cross_trainer, guide,
                     notes)
    if isinstance(source, str):
        return Resolution(None, None, source, tuple(notes))
    difficulty = {
        "orange": value,
        "yellow": facts.yellow,
        # floor((yellow + gray) / 2) held for 99.8% of shipped Classic-era recipes; DB2
        # has no green column.
        "green": (facts.yellow + facts.gray) // 2,
        "gray": facts.gray,
        "certainty": _CERTAINTY[origin],
        "orangeFrom": origin,
    }
    return Resolution(source, difficulty, None, tuple(notes))


def earliest_learn_skill(facts: RecipeFacts, wiki: "WikiRow | str",
                         ingame: "IngameFacts | None", cross_skills: "Sequence[int]",
                         guide_skills: "Sequence[int]") -> "int | None":
    """The smallest learn skill any source gives for a recipe; None when none gives one.

    For a recipe under review: the coverage gate counts a skill point as a gap only where
    an excluded recipe could give a skill-up, and "could" starts at this number (at 1 when
    it is None). Deliberately every source, verified or not, and the smallest of them: a
    hint that is too early only makes the gate stricter. cross_skills are the cross
    buckets' oranges and learnedAt values for the same recipe, guide_skills every number
    its guide rows give.
    """
    hints = [*cross_skills, *guide_skills]
    if ingame is not None and ingame.trainer_skill is not None:
        hints.append(ingame.trainer_skill)
    if facts.acquire == ACQUIRE_AUTO:
        hints.append(facts.min_rank)
    if facts.teaching_item is not None:
        hints.append(facts.rsr)
    if isinstance(wiki, WikiRow) and wiki.skill is not None:
        hints.append(wiki.skill)
    hints = [h for h in hints if type(h) is int and h >= 1]   # 0 is no learn skill
    return min(hints) if hints else None


def _manual_notes(facts, manual, trainer_skill, notes):
    yg = (manual.get("yellow"), manual.get("gray"))
    if yg != (facts.yellow, facts.gray):
        # A new build may have moved the thresholds since the value was aligned.
        notes.append(f"MANUAL difficulty yellow/gray {yg[0]}/{yg[1]} differ from DB2 "
                     f"{facts.yellow}/{facts.gray}")
    if trainer_skill is not None and trainer_skill != manual.get("orange"):
        notes.append(f"in-game trainer skill {trainer_skill} differs from MANUAL orange "
                     f"{manual.get('orange')}")


def _orange(facts, wiki, row, trainer_skill, cross_oranges, guide, cross_learned, notes):
    """(orange, orangeFrom), strongest evidence first, or a review reason.

    A learn skill L above yellow and below gray is a true state of the game (the recipe is
    yellow from the moment it is learned), so it is accepted from the in-game trainer,
    MinSkillLineRank and the teaching item's rank. The hand-written sources (guide, wiki)
    and a cross bucket's learnedAt give such an L only when two of them agree. L at or
    above gray means the recipe is gray when it can first be learned: no skill-up.
    """
    yellow, gray = facts.yellow, facts.gray
    # INGAME first: the trainer's skill requirement is the game itself. Never traded for a
    # weaker value: below 1 it is a contradiction for a human to look at.
    if trainer_skill is not None:
        if row is None:
            # The trainer decides even an unmatched recipe; keep why the wiki could not
            # (a stale alias or an ambiguity stays visible in REVIEW.md).
            notes.append(f"in-game trainer decides it; wiki: {wiki}")
        if trainer_skill >= gray:
            return _learned_gray(trainer_skill, gray)
        if trainer_skill < 1:
            return (f"no learn skill: in-game trainer skill {trainer_skill} outside "
                    f"1-{gray - 1}")
        if trainer_skill > yellow:
            notes.append(_above_yellow(trainer_skill, yellow, "in-game trainer"))
        if row is not None and row.skill is not None and row.skill != trainer_skill:
            # Where in-game and the wiki disagree, in-game wins and the note lists the
            # recipe in REVIEW.md.
            notes.append(f"in-game trainer skill {trainer_skill} differs from wiki skill "
                         f"{row.skill}")
        _note_guide_skill(guide, trainer_skill, "INGAME", notes)
        return trainer_skill, "INGAME"
    # AUTO: DB2 says the recipe is learned by itself once the skill reaches
    # MinSkillLineRank (1 on every such Forever recipe measured). 0 is no learn skill.
    if facts.acquire == ACQUIRE_AUTO and facts.min_rank >= 1:
        rank = facts.min_rank
        if rank >= gray:
            return _learned_gray(rank, gray)
        if rank > yellow:
            notes.append(_above_yellow(rank, yellow, "DB2 MinSkillLineRank"))
        _note_wiki_skill(row, rank, "AUTO", notes)
        _note_guide_skill(guide, rank, "AUTO", notes)
        return rank, "AUTO"
    # ITEM: the teaching item cannot be used below its RequiredSkillRank.
    if facts.teaching_item is not None and facts.rsr > 0:
        rank = facts.rsr
        if rank >= gray:
            return _learned_gray(rank, gray)
        if rank > yellow:
            notes.append(_above_yellow(rank, yellow, f"teaching item {facts.teaching_item} "
                                                     f"RequiredSkillRank"))
        _note_wiki_skill(row, rank, "ITEM", notes)
        _note_guide_skill(guide, rank, "ITEM", notes)
        return rank, "ITEM"
    wiki_skill = row.skill if row is not None else None
    # GUIDE before CROSS: the guide describes Forever itself, a cross bucket another client.
    # Where both give a usable number and differ, the later one is used (see below).
    if guide is not None and guide.skill is not None:
        skill = guide.skill
        accepted = 1 <= skill <= yellow
        if yellow < skill < gray:
            backers = [f"{bucket} learnedAt" for bucket, learned in cross_learned
                       if learned == skill][:1]
            if wiki_skill == skill:
                backers.append("wiki")
            if backers:
                notes.append(_above_yellow(skill, yellow, f"guide and {backers[0]} agree"))
                accepted = True
            else:
                notes.append(f"guide skill {skill} above yellow {yellow} ignored: nothing "
                             f"else gives {skill}")
        elif skill >= gray:
            # A hand-written number alone never removes a recipe as "no skill-up".
            notes.append(f"guide skill {skill} at or above gray {gray} ignored")
        elif skill < 1:
            notes.append(f"guide skill {skill} below 1 ignored")
        if accepted:
            # The first usable cross orange, as the CROSS rule below would pick it.
            rival = next(((b, c) for b, c in cross_oranges if 0 < c <= yellow), None)
            if rival is not None and rival[1] > skill:
                # WHY the later of the two: neither is verified for this client. Measured
                # 2026-11-22, the guide is later on 12 Classic trainer recipes (it repeats
                # yellow) and earlier on 11 (one number for a whole specialization). A
                # learn skill that is too late costs a few points of path; one that is too
                # early offers a recipe the player cannot learn yet.
                _note_guide_decides(wiki, row, notes)
                _note_wiki_skill(row, rival[1], "CROSS", notes)
                _note_guide_skill(guide, rival[1], "CROSS", notes)
                return rival[1], "CROSS"
            _note_guide_decides(wiki, row, notes)
            if rival is not None and rival[1] != skill:
                notes.append(f"{rival[0]} orange {rival[1]} differs from GUIDE orange {skill}")
            _note_wiki_skill(row, skill, "GUIDE", notes)
            return skill, "GUIDE"
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
    for bucket, learned in cross_learned:
        if yellow < learned < gray and wiki_skill == learned:
            notes.append(_above_yellow(learned, yellow, f"{bucket} learnedAt and wiki agree"))
            return learned, "CROSS"
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


def _learned_gray(skill, gray):
    return f"no skill-up: learned at {skill}, gray {gray}"


def _above_yellow(skill, yellow, by):
    return f"learn skill {skill} above yellow {yellow}: {by}"


def _note_wiki_skill(row, orange, origin, notes):
    # WHY: the row is matched by name only, so a recipe renamed or reworked on Forever can
    # match another recipe's row; its source would then be that recipe's. A skill that
    # disagrees with the stronger orange is the visible sign, listed in REVIEW.md.
    if row is not None and row.skill is not None and row.skill != orange:
        notes.append(f"wiki row skill {row.skill} differs from {origin} orange {orange}")


def _note_guide_skill(guide, orange, origin, notes):
    if guide is not None and guide.skill is not None and guide.skill != orange:
        notes.append(f"guide skill {guide.skill} differs from {origin} orange {orange}")


def _note_guide_decides(wiki, row, notes):
    # Only a match that failed for a reason worth a look (ambiguous, taken, bad alias): a
    # plain missing row is no disagreement, and the guide names the spell by id.
    if row is None and wiki != NO_WIKI_ROW:
        note = f"guide decides it; wiki: {wiki}"
        if note not in notes:
            notes.append(note)


def _source(facts, wiki, row, trainer_skill, trainer_cost, cross_trainer, guide, notes):
    """The source dict, or a review reason. In order: the in-game trainer, DB2's
    auto-learned mark, the guide (typing the DB2 teaching item, or a trainer / automatic
    row when there is none), then the wiki row and a cross bucket's trainer."""
    item = int(facts.teaching_item) if facts.teaching_item is not None else None
    auto = facts.acquire == ACQUIRE_AUTO
    # The in-game trainer list wins over every other source and over a DB2 teaching item:
    # the owner saw a trainer teach it. Disagreements are kept as notes (REVIEW.md).
    if trainer_skill is not None:
        if row is not None and row.kind != "TRAINER":
            notes.append(f"in-game trainer teaches it; wiki source '{row.raw_source}'")
        if item is not None:
            notes.append(f"in-game trainer teaches it; DB2 also has teaching item {item}")
        if auto:
            notes.append(f"in-game trainer teaches it; {AUTO_LEARNED}")
        if guide is not None and guide.kind not in (None, "TRAINER", "SPECIAL_TRAINER"):
            notes.append(f"in-game trainer teaches it; guide says {guide.kind}")
        source = {"type": "TRAINER", "certainty": "INGAME"}
        # Only a positive price: 0 would read as a free recipe and None is an unread one
        # (the probe printed nil); type() is int also rejects a JSON true.
        if type(trainer_cost) is int and trainer_cost > 0:
            source["trainingCost"] = trainer_cost
        return source
    if auto:
        # AcquireMethod 1 matched the wiki's "Automatic" on all 14 recipes that had one,
        # and the Classic starter recipes (measured 2026-11-22).
        if item is not None:
            notes.append(f"{AUTO_LEARNED}; DB2 also has teaching item {item}")
        if row is not None and row.kind in _CLAIM_KINDS and row.kind != "STARTER":
            notes.append(f"{AUTO_LEARNED}; wiki source '{row.raw_source}'")
        if guide is not None and guide.kind not in (None, "STARTER"):
            notes.append(f"{AUTO_LEARNED}; guide says {guide.kind}")
        return {"type": "STARTER", "certainty": "DB2"}
    if guide is not None:
        source = _guide_source(facts, item, guide, wiki, row, notes)
        if source is not None:
            return source
    return _wiki_source(facts, wiki, row, item, cross_trainer, notes)


def _same_kind(a, b):
    trainer = ("TRAINER", "SPECIAL_TRAINER")
    return a == b or (a in trainer and b in trainer)


def _note_guide_kind(kind, row, notes):
    # The wiki row is matched by name and the guide row by spell id; where both say how
    # the recipe is learned and differ, the guide wins and the row is listed.
    if row is not None and row.kind in _CLAIM_KINDS and not _same_kind(kind, row.kind):
        notes.append(f"guide says {kind}; wiki source '{row.raw_source}'")


def _sold(facts, item, price, notes):
    """A guide-typed vendor source for the DB2 teaching item: REPUTATION when the item
    carries a DB2 faction, else VENDOR; or the review reason when the faction is unnamed."""
    if facts.min_faction > 0:
        if not facts.faction_name or not facts.rep_level:
            return f"reputation faction {facts.min_faction} without a DB2 name or level"
        return {"type": "REPUTATION", "certainty": "GUIDE", "itemId": item,
                "factionId": facts.min_faction, "factionName": facts.faction_name,
                "level": facts.rep_level, **price}
    return {"type": "VENDOR", "certainty": "GUIDE", "itemId": item, **price}


def _guide_source(facts, item, guide, wiki, row, notes):
    """The source the guide establishes, a review reason, or None when it settles nothing
    and the wiki rules decide as before."""
    kind = guide.kind
    if item is None:
        # A guide row naming a recipe item that DB2 links to this spell but has no data for
        # (so it was never the chosen teaching item): the link is DB2's, the kind the guide's.
        linked = next((i for i in guide.items if str(i) in facts.unlisted_items), None)
        if linked is not None and kind in _TRAINER_KINDS:
            # The keyword says how the recipe is learned; an item the build has no data
            # for does not make it item-taught against that.
            notes.append(f"guide says {kind}; it also names item {linked}, which DB2 links "
                         f"to the spell without data")
            linked = None
        if linked is not None:
            notes.append(f"teaching item {linked} named by the guide has no data in this build")
            _note_guide_decides(wiki, row, notes)
            if guide.currency is not None:
                return {"type": "VENDOR", "certainty": "GUIDE", "itemId": linked,
                        "currency": {"name": CURRENCY_NAME, "amount": guide.currency}}
            if kind in ("DROP", "QUEST"):
                return {"type": kind, "certainty": "GUIDE", "itemId": linked}
            return {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": linked}
        if kind is None:
            return None
        _note_guide_kind(kind, row, notes)
        if kind in ("VENDOR", "DROP"):
            # Neither can be emitted without the item that is bought or dropped. With a
            # wiki row, the wiki rules decide (the difference is noted above). Without
            # one, a cross bucket's trainer must not type a recipe the guide says is
            # bought or dropped on this client: a review, not a weaker source's value.
            if row is None and wiki == NO_WIKI_ROW:
                return f"{kind.lower()} per guide but DB2 has no teaching item"
            return None
        _note_guide_decides(wiki, row, notes)
        if kind == "STARTER":
            return {"type": "STARTER", "certainty": "GUIDE"}
        if kind == "QUEST":
            return {"type": "QUEST", "certainty": "GUIDE"}
        source = {"type": "TRAINER", "certainty": "GUIDE"}
        if kind == "SPECIAL_TRAINER":
            source["npcName"] = "Special trainer"
        return source

    # DB2 has a teaching item: the recipe is item-taught, and the guide says which kind.
    if kind in _TRAINER_KINDS:
        notes.append(f"guide says {kind}; DB2 has teaching item {item}")
        return None
    if guide.currency is not None:
        # A Merchant's Favor amount is a vendor price whatever keyword stands next to it,
        # and it wins over BuyPrice: a currency recipe has no gold price.
        _note_guide_kind("VENDOR", row, notes)
        if row is not None and row.currency is not None and row.currency != guide.currency:
            notes.append(f"wiki price {row.currency} {CURRENCY_NAME} differs from the "
                         f"guide's {guide.currency}")
        _note_guide_decides(wiki, row, notes)
        return _sold(facts, item, {"currency": {"name": CURRENCY_NAME,
                                                "amount": guide.currency}}, notes)
    if guide.currency_unsettled:
        # Known to be sold for Merchant's Favor, amount not settled: BuyPrice must not
        # stand in as a gold price. A wiki row with one amount may still give it.
        if row is not None and row.currency is not None and row.currency > 0:
            return None
        notes.append("guide gives more than one Merchant's Favor price; none is used")
        _note_guide_decides(wiki, row, notes)
        return {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": item}
    if kind in ("DROP", "QUEST"):
        _note_guide_kind(kind, row, notes)
        if facts.min_faction > 0:
            notes.append(f"DB2 faction {facts.min_faction} {facts.faction_name} "
                         f"{facts.rep_level} on teaching item {item}; guide says {kind}")
        _note_guide_decides(wiki, row, notes)
        return {"type": kind, "certainty": "GUIDE", "itemId": item}
    if kind == "VENDOR":
        if row is not None and row.kind == "VENDOR":
            return None   # the same claim; the wiki row may carry the price
        _note_guide_kind(kind, row, notes)
        _note_guide_decides(wiki, row, notes)
        if facts.buy_price > 0:
            # BuyPrice alone never proves a vendor; the guide saying so does, and
            # BuyPrice is then the price.
            return _sold(facts, item, {"cost": facts.buy_price}, notes)
        notes.append("guide says vendor; price not in DB2 or the guide")
        return {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": item}
    if row is None:
        # The guide lists the spell but not where its recipe item comes from. UNKNOWN with
        # the item makes no claim, and the recipe stays usable for a player who owns it.
        notes.append(f"guide lists it without a source; wiki: {wiki}")
        return {"type": "UNKNOWN", "certainty": "GUIDE", "itemId": item}
    return None


def _wiki_source(facts, wiki, row, item, cross_trainer, notes):
    """The source from the wiki row (with the DB2 teaching item and faction), or a cross
    bucket's trainer where the wiki leaves it open, or a review reason."""
    if row is None:
        # A cross bucket's trainer only for a recipe the wiki does not list at all. A row
        # taken by another spell or an ambiguous one marks an old/revised pair, where the
        # other spell may be the one the game teaches; a bad alias needs fixing, not a
        # fallback.
        if wiki == NO_WIKI_ROW and item is None and cross_trainer is not None:
            return _cross_trainer(cross_trainer, None, notes)
        # No wiki row (or an ambiguous one) -> review, never a default source.
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
            # UNKNOWN with the item, not excluded. All 20
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
        # The wiki kind is kept (no faction-gated source type fits a drop or a quest),
        # but the DB2 faction requirement is a fact the data would otherwise lose
        # (15 recipes on 1.60.1.71037 with the wiki of 2026-11-21), so REVIEW.md lists it.
        notes.append(_faction_note(facts, item, row))
    if kind in _TRAINER_KINDS:
        # A trainer/automatic source is taken from the wiki only for a recipe WITHOUT a
        # teaching item; with one, wiki and DB2 disagree on how it is learned and neither
        # may silently win.
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
    # Two independent signals agree - Forever's own DB2 has no teaching item for the
    # recipe, and another bucket's verified source for the unchanged recipe (same yellow
    # and gray) is a trainer. Measured 2026-11-21: Mining's wiki page has no recipe table
    # and Engineering shipped nothing at skill 1-24 without it. No trainingCost: that
    # bucket's price is not Forever's.
    # The note says which half of the wiki evidence was missing: the row or its source.
    wiki_state = "no wiki row" if row is None else "wiki source unknown"
    notes.append(f"trainer per {cross.bucket} ({cross.certainty}); {wiki_state}")
    return {"type": "TRAINER", "certainty": "CROSS"}


def _unknown(item):
    # UNKNOWN ships only with the item, so it stays "usable when owned or bought"
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
        # (or the item BuyPrice) would read as free or as gold.
        price = {"currency": {"name": CURRENCY_NAME, "amount": row.currency}}
    elif facts.buy_price > 0:
        # BuyPrice alone never proves a vendor (the game data sets one on most items,
        # drops and gathered goods included); the wiki saying Vendor does, and BuyPrice is
        # then the true price.
        price = {"cost": facts.buy_price}
    else:
        # No price in DB2 (BuyPrice 0) or on the wiki
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
