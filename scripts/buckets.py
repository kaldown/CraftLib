"""Bucket registry: the single source of truth for every client bucket.

A bucket is one client profile's data set (Vanilla, TBC, WotLK, SoD). Scripts and
the Makefile read this registry instead of keeping their own profession lists,
build numbers and flags, so a bucket cannot drift between pipeline stages.
Fail loud: unknown buckets/professions raise errors naming the valid choices.
"""
import sys
from dataclasses import dataclass, field
from types import MappingProxyType
from typing import Mapping


class UnknownBucketError(ValueError):
    pass


class UnknownProfessionError(ValueError):
    pass


class RegistryError(ValueError):
    pass


@dataclass(frozen=True)
class Profession:
    folder: str      # Data/<Bucket>/<folder>
    key: str
    name: str
    constant: str
    skill_line: int


# Every pipeline script (generate_recipes.py included) imports this table; folder = display name without spaces.
PROFESSIONS: dict[str, Profession] = {
    p.folder: p for p in (
        Profession("FirstAid", "firstAid", "First Aid", "FIRST_AID", 129),
        Profession("Cooking", "cooking", "Cooking", "COOKING", 185),
        Profession("Alchemy", "alchemy", "Alchemy", "ALCHEMY", 171),
        Profession("Blacksmithing", "blacksmithing", "Blacksmithing", "BLACKSMITHING", 164),
        Profession("Enchanting", "enchanting", "Enchanting", "ENCHANTING", 333),
        Profession("Engineering", "engineering", "Engineering", "ENGINEERING", 202),
        Profession("Jewelcrafting", "jewelcrafting", "Jewelcrafting", "JEWELCRAFTING", 755),
        Profession("Leatherworking", "leatherworking", "Leatherworking", "LEATHERWORKING", 165),
        Profession("Tailoring", "tailoring", "Tailoring", "TAILORING", 197),
        Profession("Mining", "mining", "Mining", "MINING", 186),
        Profession("Inscription", "inscription", "Inscription", "INSCRIPTION", 773),
    )
}

# What a bucket may inherit from its reconcile_parent (copied from reconcile_cross_bucket.py).
INHERIT_TYPES = {"DROP", "VENDOR", "QUEST", "REPUTATION", "STARTER", "DISCOVERY"}  # STARTER/DISCOVERY are structural (no cost/itemId; corroboration-exempt)
INHERIT_CERTAINTY = {"WOWHEAD", "MANUAL", "DB2"}               # WOWHEAD + hand-verified MANUAL + DB2

# Enrich mode -> the stage script that runs it. One table so the pipeline's enrich step
# and extract's next-step hint cannot name different tools for the same bucket.
ENRICH_SCRIPTS: Mapping[str, str] = MappingProxyType({
    "wowhead-listview": "fetch_wowhead_sources",
    "wowhead-per-spell": "fetch_wowhead_sources",
    "wiki": "fetch_wiki_sources",
})
_ENRICH = frozenset(ENRICH_SCRIPTS)
_VENDOR_SCOPES = {"SOD", "DEFAULT", "FOREVER"}
_EXPANSIONS = {"VANILLA", "TBC", "WOTLK", "CATA", "MOP", "SOD", "FOREVER"}

_EMPTY: Mapping[str, tuple[str, ...]] = MappingProxyType({})
_NO_WIKI: Mapping[str, str] = MappingProxyType({})

_ITEM_EFFECT_JOINS = {"parent", "xitem"}
_REVIEW_POLICIES = {"raise", "exclude"}


@dataclass(frozen=True)
class Bucket:
    key: str
    profile: str
    folder: str
    product: str
    build: str
    professions: tuple[str, ...]          # folder names
    milestones: tuple[int, ...]
    fixed_expansion: str | None           # None = tag each recipe by skill threshold
    enrich: str
    wowhead_subdomain: str
    exclude_seasonal: bool
    vendor_scope: str
    reconcile_parent: str | None
    keep_trainer_file: str | None
    verify_trainers: bool
    audit_hard: bool
    removed_recipes: str | None
    canary_floor_reagents: float
    canary_floor_teaching: float
    column_overrides: Mapping[str, tuple[str, ...]] = field(default=_EMPTY)
    # Everything below defaults to the behaviour the four Classic buckets already
    # have, so adding a field never changes their generated output.
    item_effect_join: str = "parent"      # "parent" (ItemEffect.ParentItemID) | "xitem" (ItemXItemEffect link table)
    has_tools: bool = False               # emit the tools field (Forever only; Classic backfill deferred)
    difficulty_certainties: tuple[str, ...] = ("WOWHEAD", "CRAFTDUMP")  # certainties that may carry a difficulty
    review_policy: str = "raise"          # "raise" = a review aborts generation; "exclude" = it drops the recipe
    allow_unknown_source: bool = False    # only Forever may emit UNKNOWN sources
    strict_difficulty: bool = False       # assert 1 <= orange <= yellow <= green <= gray
    milestones_verified: bool = True      # False = milestones are an unconfirmed assumption
    coverage_floor: float | None = None   # min share of in-game skill-up recipes shipped
    coverage_max_gap: int | None = None   # max skill points (1..299) with no shipped recipe
    wiki_pages: Mapping[str, str] = field(default=_NO_WIKI)  # profession folder -> wiki page title
    # Buckets whose WOWHEAD orange may be borrowed (CROSS), tried in this order.
    cross_orange_buckets: tuple[str, ...] = ()
    # Bucket whose verified TRAINER source may type a recipe the wiki leaves open (R12).
    cross_source_bucket: str | None = None
    allow_currency_cost: bool = False     # a VENDOR/REPUTATION price may be a currency
    reject_zero_cost: bool = False        # cost = 0 is refused (it reads as free)
    held_back: tuple[str, ...] = ()       # professions failing the coverage gate: not written, not in TOC
    vendor_explicit_scope: bool = False   # emit only allowlist entries naming this scope explicitly
    shipped: bool = True                  # False = pipeline-only; consistency checks skip it

    def profession(self, name: str) -> Profession:
        """Resolve a profession by folder/key/display name, ignoring case and spaces."""
        want = name.replace(" ", "").lower()
        for folder in self.professions:
            p = PROFESSIONS[folder]
            if want in (p.folder.lower(), p.key.lower(), p.name.replace(" ", "").lower()):
                return p
        raise UnknownProfessionError(
            f"bucket '{self.key}' has no profession '{name}'; "
            f"its professions: {', '.join(self.professions)}")


_VANILLA_PROFS = ("Alchemy", "Blacksmithing", "Enchanting", "Engineering",
                  "Leatherworking", "Tailoring", "Cooking", "FirstAid", "Mining")
_TBC_PROFS = _VANILLA_PROFS + ("Jewelcrafting",)
_WOTLK_PROFS = _TBC_PROFS + ("Inscription",)

# Wiki page title per profession folder (Forever recipes are enriched from the wiki).
_FOREVER_WIKI_PAGES = MappingProxyType({
    "FirstAid": "Forever first aid recipes",
    "Blacksmithing": "Forever blacksmithing plans",
    "Leatherworking": "Forever leatherworking patterns",
    "Alchemy": "Forever alchemy recipes",
    "Cooking": "Forever cooking recipes",
    "Mining": "Forever mining techniques",
    "Tailoring": "Forever tailoring patterns",
    "Engineering": "Forever engineering schematics",
    "Enchanting": "Forever enchanting formulas",
})

_VANILLA_MILESTONES = (75, 150, 225, 300)

# Teaching floors sit about 25% below the shares measured on 2026-11-20
# (Era 0.039, TBC 0.666, WotLK 0.566). Era is low because it links recipe items
# through a teaching spell, which the extractor does not follow yet; Phase 2's D9
# raises that floor.
BUCKETS: dict[str, Bucket] = {
    "vanilla": Bucket(
        key="vanilla", profile="VANILLA", folder="Vanilla",
        product="wow_classic_era", build="1.15.8.67156",
        professions=_VANILLA_PROFS, milestones=_VANILLA_MILESTONES,
        fixed_expansion=None,
        enrich="wowhead-listview", wowhead_subdomain="classic",
        exclude_seasonal=True,
        # Era build: the allowlist's DEFAULT-only items are absent from it, so SOD scope.
        vendor_scope="SOD",
        reconcile_parent=None, keep_trainer_file=None,
        verify_trainers=False, audit_hard=False,
        removed_recipes="removed_recipes.json",
        canary_floor_reagents=0.95, canary_floor_teaching=0.03),
    "tbc": Bucket(
        key="tbc", profile="TBC", folder="TBC",
        product="wow_anniversary", build="2.5.5.65895",
        professions=_TBC_PROFS, milestones=tuple(range(75, 376, 75)),
        fixed_expansion=None,
        enrich="wowhead-per-spell", wowhead_subdomain="tbc",
        exclude_seasonal=False, vendor_scope="DEFAULT",
        reconcile_parent=None, keep_trainer_file=None,
        verify_trainers=False, audit_hard=False,
        removed_recipes="removed_recipes.json",
        canary_floor_reagents=0.95, canary_floor_teaching=0.50),
    "wotlk": Bucket(
        key="wotlk", profile="WOTLK", folder="WotLK",
        product="wow_classic", build="3.4.5.63697",
        professions=_WOTLK_PROFS, milestones=tuple(range(75, 451, 75)),
        fixed_expansion=None,
        enrich="wowhead-listview", wowhead_subdomain="wotlk",
        exclude_seasonal=False, vendor_scope="DEFAULT",
        reconcile_parent=None, keep_trainer_file=None,
        verify_trainers=False, audit_hard=False,
        removed_recipes="removed_recipes.json",
        canary_floor_reagents=0.95, canary_floor_teaching=0.45),
    "sod": Bucket(
        key="sod", profile="SOD", folder="SoD",
        product="wow_classic_era", build="1.15.8.67156",
        # Mining included: the old SOD_PROFS omission was a bug.
        professions=_VANILLA_PROFS, milestones=_VANILLA_MILESTONES,
        fixed_expansion="SOD",
        enrich="wowhead-listview", wowhead_subdomain="classic",
        exclude_seasonal=False, vendor_scope="SOD",
        reconcile_parent="tbc", keep_trainer_file="sod_keep_trainer.json",
        verify_trainers=True, audit_hard=True,
        # Deliberately none: the TBC removed-recipes list must not apply to SoD
        # (today's generator found no removed_recipes.sod.json).
        removed_recipes=None,
        canary_floor_reagents=0.95, canary_floor_teaching=0.03),
    "forever": Bucket(
        key="forever", profile="FOREVER", folder="Forever",
        product="wowf", build="1.60.1.71037",
        professions=_VANILLA_PROFS,
        # Unverified until the owner's in-game probe reports maxSkillLevel (milestones_verified).
        milestones=_VANILLA_MILESTONES,
        fixed_expansion="FOREVER",
        enrich="wiki", wowhead_subdomain="forever",
        exclude_seasonal=False, vendor_scope="FOREVER",
        reconcile_parent=None, keep_trainer_file=None,
        verify_trainers=False, audit_hard=False,
        removed_recipes=None,
        canary_floor_reagents=0.95, canary_floor_teaching=0.60,
        # This build's DB2 columns differ from the Classic ones; override by name.
        # RequiredSkillRank/RequiredSkill drive the teaching-item choice (db2.choose_teaching_item).
        column_overrides=MappingProxyType({
            "ItemEffect": ("ID", "SpellID"),
            "ItemSparse": ("ID", "Display_lang", "BuyPrice", "SellPrice", "MinFactionID",
                           "MinReputation", "VendorStackCount", "RequiredSkillRank",
                           "RequiredSkill"),
        }),
        item_effect_join="xitem", has_tools=True,
        # MANUAL: a hand-aligned value; REVIEW.md counts it like the other origins.
        difficulty_certainties=("INGAME", "DB2", "CROSS", "WIKI", "MANUAL"),
        review_policy="exclude", allow_unknown_source=True, strict_difficulty=True,
        # R4 as amended 2026-11-21: floor 0.75 (was 0.90). Measured that day, only Cooking
        # and First Aid reached 0.90. Each shipped recipe is established on its own, so
        # holding a profession back makes no shipped value truer; the gap check keeps the
        # path continuous, and every exclusion stays listed in REVIEW.md.
        milestones_verified=False, coverage_floor=0.75, coverage_max_gap=10,
        # SoD after Vanilla: both carry Wowhead-verified oranges for the same Classic-era
        # spells, and SoD fills in where Vanilla's yellow or gray differ from Forever's
        # (or its orange is unusable, e.g. the ADR-005 "learned at 0").
        wiki_pages=_FOREVER_WIKI_PAGES, cross_orange_buckets=("vanilla", "sod"),
        # R12: 420 SoD recipes carry a verified (unflagged) Wowhead TRAINER source; the
        # 368 flagged ones are the verifier's unverified default and are not used. The
        # Forever wiki has no table for Mining and none of Engineering's skill 1-24
        # recipes, which left those ranges without a shipped recipe (measured 2026-11-21).
        cross_source_bucket="sod",
        # Merchant's Favor prices (spec D16); with a currency field, cost 0 is never a price.
        allow_currency_cost=True, reject_zero_cost=True,
        held_back=(), vendor_explicit_scope=True,
        # Flipped to True by the task that generates Data/Forever; until then the
        # consistency checks (TOC, Data dirs) must not expect files that do not exist.
        shipped=False),
}


def _validate_registry(buckets: Mapping[str, Bucket]) -> None:
    seen_folder: dict[str, str] = {}
    seen_profile: dict[str, str] = {}
    for k, b in buckets.items():
        def bad(msg):
            raise RegistryError(f"bucket '{k}': {msg}")
        for p in b.professions:
            if p not in PROFESSIONS:
                bad(f"unknown profession '{p}'")
        if b.enrich not in _ENRICH:
            bad(f"enrich '{b.enrich}' not in {sorted(_ENRICH)}")
        if b.vendor_scope not in _VENDOR_SCOPES:
            bad(f"vendor_scope '{b.vendor_scope}' not in {sorted(_VENDOR_SCOPES)}")
        if b.fixed_expansion is not None and b.fixed_expansion not in _EXPANSIONS:
            bad(f"fixed_expansion '{b.fixed_expansion}' not in {sorted(_EXPANSIONS)}")
        if b.reconcile_parent is not None and (
                b.reconcile_parent not in buckets or b.reconcile_parent == k):
            bad(f"invalid reconcile_parent '{b.reconcile_parent}'")
        if any(a >= c for a, c in zip(b.milestones, b.milestones[1:])):
            bad(f"milestones not strictly increasing: {b.milestones}")
        for name in ("canary_floor_reagents", "canary_floor_teaching"):
            v = getattr(b, name)
            if not (0 < v <= 1):
                bad(f"{name} {v} outside (0, 1]")
        if b.item_effect_join not in _ITEM_EFFECT_JOINS:
            bad(f"item_effect_join '{b.item_effect_join}' not in {sorted(_ITEM_EFFECT_JOINS)}")
        if b.review_policy not in _REVIEW_POLICIES:
            bad(f"review_policy '{b.review_policy}' not in {sorted(_REVIEW_POLICIES)}")
        if b.enrich == "wiki":
            missing = [p for p in b.professions if p not in b.wiki_pages]
            if missing:
                bad(f"enrich 'wiki' but wiki_pages lacks professions {missing}")
        # A page for a profession the bucket lacks is never fetched: a typo or a stale entry.
        stray_pages = [p for p in b.wiki_pages if p not in b.professions]
        if stray_pages:
            bad(f"wiki_pages names professions not in the bucket: {stray_pages}")
        # A bare string would iterate as its letters: require the tuple of names.
        if not isinstance(b.cross_orange_buckets, tuple):
            bad(f"cross_orange_buckets must be a tuple of bucket keys, "
                f"not {b.cross_orange_buckets!r}")
        for name in b.cross_orange_buckets:
            if name not in buckets or name == k:
                bad(f"invalid cross_orange_buckets entry '{name}'")
        if len(set(b.cross_orange_buckets)) != len(b.cross_orange_buckets):
            bad(f"cross_orange_buckets lists a bucket twice: {b.cross_orange_buckets}")
        if b.cross_source_bucket is not None and (
                b.cross_source_bucket not in buckets or b.cross_source_bucket == k):
            bad(f"invalid cross_source_bucket '{b.cross_source_bucket}'")
        stray = [p for p in b.held_back if p not in b.professions]
        if stray:
            bad(f"held_back names professions not in the bucket: {stray}")
        # The coverage gate is two-part (share AND gap); half a gate is a config error.
        if (b.coverage_floor is None) != (b.coverage_max_gap is None):
            bad("set both or neither of coverage_floor and coverage_max_gap")
        if b.coverage_floor is not None and not (0 < b.coverage_floor <= 1):
            bad(f"coverage_floor {b.coverage_floor} outside (0, 1]")
        if b.coverage_max_gap is not None and b.coverage_max_gap < 1:
            bad(f"coverage_max_gap {b.coverage_max_gap} must be >= 1")
        if b.folder in seen_folder:
            bad(f"folder '{b.folder}' also used by '{seen_folder[b.folder]}'")
        if b.profile in seen_profile:
            bad(f"profile '{b.profile}' also used by '{seen_profile[b.profile]}'")
        seen_folder[b.folder] = k
        seen_profile[b.profile] = k


_validate_registry(BUCKETS)


def _known() -> str:
    return ", ".join(BUCKETS)


def get_bucket(key: str) -> Bucket:
    try:
        return BUCKETS[key]
    except KeyError:
        raise UnknownBucketError(f"unknown bucket '{key}'; known: {_known()}") from None


def bucket_for_folder(folder: str) -> Bucket:
    for b in BUCKETS.values():
        if b.folder == folder:
            return b
    raise UnknownBucketError(f"no bucket with folder '{folder}'; known: {_known()}")


def add_bucket_argument(parser) -> None:
    # Required, no default: silently defaulting a bucket is how profiles got mixed.
    parser.add_argument("--bucket", required=True, choices=list(BUCKETS))


def main(argv: list[str] | None = None) -> int:
    argv = sys.argv[1:] if argv is None else argv
    if argv == ["keys"]:
        print(" ".join(BUCKETS))
        return 0
    if argv == ["show"]:
        for b in BUCKETS.values():
            print(f"{b.key} {b.profile} {b.folder} {b.product} {b.build} {','.join(b.professions)}")
        return 0
    print("usage: buckets.py keys|show", file=sys.stderr)
    return 2


if __name__ == "__main__":
    sys.exit(main())
