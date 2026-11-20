import sys
from pathlib import Path

import pytest

import pipeline
from buckets import BUCKETS, get_bucket


def _opts(steps=None):
    return pipeline.Options(version="1.0", data_dir=Path("/d"), sources_dir=Path("/s"),
                            output_dir=Path("/o"), steps=steps)


def _plan(key, prof=None, steps=None):
    b = get_bucket(key)
    return pipeline.plan_all(b, [b.profession(prof or b.professions[0])][:1], _opts(steps))


def test_plan_all_sod_order():
    names = [s.name for s in _plan("sod", "Tailoring")]
    assert names == list(pipeline.STEP_NAMES)


def test_plan_all_vanilla_skips_reconcile_and_verify():
    names = [s.name for s in _plan("vanilla")]
    assert "reconcile" not in names and "verify-trainers" not in names
    assert "enrich" in names


def test_plan_all_steps_filter():
    steps = _plan("sod", "Tailoring", frozenset({"assert-no-pending", "generate"}))
    assert [s.name for s in steps] == ["assert-no-pending", "generate"]
    assert all("--bucket" in s.argv and "sod" in s.argv for s in steps)


def test_run_steps_stops_at_first_failure():
    calls = []
    codes = iter([0, 3, 0])

    def runner(argv):
        calls.append(argv)
        return next(codes)

    steps = [pipeline.Step("a", ["a"], None), pipeline.Step("b", ["b"], None),
             pipeline.Step("c", ["c"], None)]
    assert pipeline.run_steps(steps, runner=runner) == 3
    assert len(calls) == 2


def test_run_steps_sleeps_between_professions_for_network_steps():
    slept = []
    steps = [pipeline.Step("enrich", ["x"], "A"), pipeline.Step("enrich", ["x"], "B")]
    pipeline.run_steps(steps, runner=lambda a: 0, delay=1.5, sleep=slept.append)
    assert slept == [1.5]


def test_unknown_step_exits_2():
    assert pipeline.main(["all", "--bucket", "sod", "--steps", "bogus", "--dry-run"]) == 2


def test_generate_subcommand_is_offline(capsys):
    assert pipeline.main(["generate", "--bucket", "tbc", "--dry-run"]) == 0
    out = capsys.readouterr().out.splitlines()
    assert out and all("generate_recipes.py" in l for l in out)
    assert sum("--vendor-prices-only" in l for l in out) == 1
    assert len(out) == len(get_bucket("tbc").professions) + 1


def test_fetch_all_dedupes_and_never_calls_latest(capsys):
    assert pipeline.main(["fetch", "--all", "--dry-run"]) == 0
    out = capsys.readouterr().out
    lines = [l for l in out.splitlines() if " fetch VERSION=" in l]
    assert sorted(l.rsplit("VERSION=", 1)[1] for l in lines) == [
        "1.15.8.67156", "2.5.5.65895", "3.4.5.63697"]
    assert "latest" not in out
