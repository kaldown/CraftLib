"""Tests for assert_no_unaligned.py release gate."""
import json

import pytest

import assert_no_unaligned as au


def _run(tmp_path, recipes: dict, bucket="sod", folder="SoD"):
    """Write <tmp>/<folder>/Leatherworking.json and run the gate's main on it."""
    d = tmp_path / folder
    d.mkdir(parents=True, exist_ok=True)
    (d / "Leatherworking.json").write_text(json.dumps({"recipes": recipes}))
    return au.main(["--bucket", bucket, "--profession", "Leatherworking",
                    "--sources-dir", str(tmp_path)])


def test_uncorroborated_returns_1_and_names_spell(tmp_path, capsys):
    """A file with reviewReason == cross-bucket-uncorroborated -> exit 1, stderr names the spell."""
    rc = _run(tmp_path, {
        "12345": {"source": {"type": "TRAINER", "reviewReason": "cross-bucket-uncorroborated"}},
    })
    assert rc == 1
    captured = capsys.readouterr()
    assert "ERROR" in captured.err
    assert "12345" in captured.err


def test_clean_file_returns_0(tmp_path):
    """A file with normal source types and no reviewReason -> exit 0."""
    assert _run(tmp_path, {
        "11111": {"source": {"type": "TRAINER"}},
        "22222": {"source": {"type": "VENDOR", "cost": 100}},
        "33333": {"source": {"type": "DROP"}},
    }) == 0


def test_bare_needs_review_no_review_reason_returns_0(tmp_path):
    """A recipe with needsReview=True but NO reviewReason (v0.8.0 conservative tail) -> exit 0.

    This is the crux distinction: the conservative tail MUST NOT be blocked by this gate.
    Only the explicit cross-bucket-uncorroborated marker blocks release.
    """
    assert _run(tmp_path, {
        "55555": {"source": {"type": "TRAINER", "needsReview": True}},
    }) == 0


def test_no_arguments_is_a_usage_error():
    """Called with no --bucket/--profession -> argparse SystemExit."""
    with pytest.raises(SystemExit):
        au.main([])


def test_missing_sources_file_returns_2(tmp_path, capsys):
    rc = au.main(["--bucket", "sod", "--profession", "Leatherworking",
                  "--sources-dir", str(tmp_path)])
    assert rc == 2
    assert "Leatherworking.json" in capsys.readouterr().err
