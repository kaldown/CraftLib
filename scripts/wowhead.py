"""Shared Wowhead helpers for the data pipeline.

Fetching, verifying and auditing all talk to Wowhead; they used to each carry
their own copy of the headers, JS-object fix, spell regex and source-code
tables, which drifted. Everything Wowhead-specific that is not a script's own
policy lives here.
"""
import re

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
