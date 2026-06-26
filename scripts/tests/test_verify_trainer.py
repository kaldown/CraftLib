import json
import verify_trainer_sources as vt


def test_classify_keeps_trainer_on_trainer_code():
    assert vt.classify([6], False) == ("TRAINER", False)


def test_classify_keeps_trainer_on_training_cost():
    assert vt.classify([], True) == ("TRAINER", False)


def test_classify_reclassifies_quest():
    assert vt.classify([4], False) == ("QUEST", True)


def test_classify_conservative_on_empty():
    assert vt.classify([], False) == ("TRAINER", True)


def test_classify_ignores_crafted_only():
    assert vt.classify([1], False) == ("TRAINER", True)


def test_parse_guard_rejects_wrong_name():
    html = '$.extend(g_spells[2158], {"name":"Something Else","source":[2]});'
    assert vt.parse_spell_page(html, 2158, "Fine Leather Boots") is None


def test_parse_accepts_matching_name():
    html = '$.extend(g_spells[2158], {"name":"Fine Leather Boots","source":[6],"trainingcost":40});'
    out = vt.parse_spell_page(html, 2158, "Fine Leather Boots")
    assert out["source"] == [6] and out["trainingCost"] == 40


def test_run_resumes_and_writes(tmp_path, monkeypatch):
    sources = tmp_path / "Leatherworking.json"
    sources.write_text(json.dumps({"recipes": {
        "2158": {"name": "Fine Leather Boots", "source": {"type": "TRAINER", "certainty": "DB2"}},
    }}))
    state_dir = tmp_path / ".fetch_state"

    def fake_fetch(url):
        return '$.extend(g_spells[2158], {"name":"Fine Leather Boots","source":[4]});'
    monkeypatch.setattr(vt, "_FETCH", fake_fetch)

    vt.run(sources, state_dir, expansion="classic", base_delay=0, on_block="exit")

    out = json.loads(sources.read_text())["recipes"]["2158"]["source"]
    assert out["type"] == "QUEST" and out["certainty"] == "WOWHEAD"
    state = json.loads((state_dir / "Leatherworking.json").read_text())
    assert state["spells"]["2158"]["status"] == "needsReview"


def test_run_skips_uncorroborated_marker(tmp_path, monkeypatch):
    sources = tmp_path / "Leatherworking.json"
    sources.write_text(json.dumps({"recipes": {"300": {"name": "X", "source": {
        "type": "TRAINER", "certainty": "DB2", "needsReview": True,
        "reviewReason": "cross-bucket-uncorroborated"}}}}))
    called = []
    monkeypatch.setattr(vt, "_FETCH", lambda url: called.append(url) or "")
    vt.run(sources, tmp_path / ".fetch_state", expansion="classic", base_delay=0, on_block="exit")
    assert called == []  # marker recipe must NOT be fetched/processed
    assert json.loads(sources.read_text())["recipes"]["300"]["source"]["reviewReason"] == "cross-bucket-uncorroborated"
