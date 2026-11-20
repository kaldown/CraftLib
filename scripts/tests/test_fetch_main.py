import json

import pytest

import fetch_wowhead_sources as fw
import wowhead
from buckets import get_bucket
from tests.conftest import FIXTURES


def _write(path, recipes):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps({"recipes": recipes}), encoding="utf-8")


def _recipe(name, source=None):
    return {"name": name, "source": source or {"type": "TRAINER", "certainty": "DB2"}}


def test_resolve_source_keeps_manual():
    rec = {"source": {"type": "VENDOR", "certainty": "MANUAL", "itemId": 5, "cost": 10}}
    assert fw._resolve_source(rec, {"source": [6], "trainingCost": 40}) is None


def test_main_listview_uses_registry_subdomain(monkeypatch, tmp_path):
    html = (FIXTURES / "tailoring_listview.html").read_text(encoding="utf-8")
    urls = []
    monkeypatch.setattr(fw, "_fetch_page", lambda url, *a, **k: urls.append(url) or html)
    f = tmp_path / "SoD" / "Tailoring.json"
    _write(f, {"2385": _recipe("A"), "2386": _recipe("B")})
    rc = fw.main(["--bucket", "sod", "--profession", "Tailoring", "--sources-dir", str(tmp_path)])
    assert rc == 0
    assert "/classic/spells/professions/tailoring" in urls[0]
    data = json.loads(f.read_text(encoding="utf-8"))
    for sid in ("2385", "2386"):
        assert data["recipes"][sid]["difficulty"]["expansion"] == "sod"


def test_main_per_spell_failure_exits_2(monkeypatch, tmp_path):
    monkeypatch.setattr(fw, "fetch_wowhead_spell", lambda sid, bucket: None)
    monkeypatch.setattr(fw.time, "sleep", lambda s: None)
    _write(tmp_path / "TBC" / "Tailoring.json", {"2385": _recipe("A")})
    assert fw.main(["--bucket", "tbc", "--profession", "Tailoring",
                    "--sources-dir", str(tmp_path)]) == 2


def test_listview_residual_failure_propagates(monkeypatch, tmp_path):
    html = (FIXTURES / "tailoring_listview.html").read_text(encoding="utf-8")
    monkeypatch.setattr(fw, "_fetch_page", lambda url, *a, **k: html)
    monkeypatch.setattr(fw, "fetch_wowhead_spell", lambda sid, bucket: None)
    monkeypatch.setattr(fw.time, "sleep", lambda s: None)
    _write(tmp_path / "SoD" / "Tailoring.json",
           {"999999": _recipe("Gone", {"type": "PENDING", "certainty": "PENDING"})})
    assert fw.main(["--bucket", "sod", "--profession", "Tailoring",
                    "--sources-dir", str(tmp_path)]) == 2


def test_main_unknown_bucket_rejected():
    with pytest.raises(SystemExit):
        fw.main(["--bucket", "nope", "--profession", "Tailoring"])


def test_wowhead_urls_and_slugs():
    b = get_bucket("wotlk")
    assert wowhead.listview_url(b, b.profession("Cooking")) == \
        "https://www.wowhead.com/wotlk/spells/secondary-skills/cooking"
    assert wowhead.listview_url(b, b.profession("FirstAid")).endswith("/secondary-skills/first-aid")
    assert wowhead.spell_url(get_bucket("tbc"), 5) == "https://www.wowhead.com/tbc/spell=5"
    with pytest.raises(ValueError, match="Fishing"):
        wowhead.profession_slug(type("P", (), {"folder": "Fishing", "name": "Fishing"})())
