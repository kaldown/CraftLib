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


# Mirrors generate_recipes.py PROFESSIONS; folder = display name without spaces.
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

_ENRICH = {"wowhead-listview", "wowhead-per-spell"}
_VENDOR_SCOPES = {"SOD", "DEFAULT"}
_EXPANSIONS = {"VANILLA", "TBC", "WOTLK", "CATA", "MOP", "SOD"}

_EMPTY: Mapping[str, tuple[str, ...]] = MappingProxyType({})


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
