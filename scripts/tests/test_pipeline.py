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
    assert names == ["fetch", "extract", "reconcile", "enrich", "verify-trainers",
                     "assert-no-pending", "assert-no-unaligned", "audit", "generate",
                     "vendor-prices"]


def test_plan_all_generates_only_after_every_gate_and_the_audit():
    b = get_bucket("sod")
    names = [s.name for s in pipeline.plan_all(
        b, [b.profession(f) for f in b.professions], _opts())]
    audit = names.index("audit")
    first_generate = names.index("generate")
    gates = {"extract", "reconcile", "enrich", "verify-trainers",
             "assert-no-pending", "assert-no-unaligned"}
    assert max(i for i, n in enumerate(names) if n in gates) < audit < first_generate
    assert names.count("generate") == len(b.professions)
    assert names[first_generate:] == ["generate"] * len(b.professions) + ["vendor-prices"]


def test_verify_trainers_step_exits_on_persistent_block():
    step = next(s for s in _plan("sod", "Tailoring") if s.name == "verify-trainers")
    i = step.argv.index("--on-block")
    assert step.argv[i + 1] == "exit"


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


def test_run_steps_does_not_sleep_between_offline_steps():
    slept = []
    steps = [pipeline.Step("enrich", ["x"], "A"), pipeline.Step("audit", ["x"], None),
             pipeline.Step("generate", ["x"], "A"), pipeline.Step("generate", ["x"], "B")]
    pipeline.run_steps(steps, runner=lambda a: 0, delay=1.5, sleep=slept.append)
    assert slept == []


def test_unknown_step_exits_2():
    assert pipeline.main(["all", "--bucket", "sod", "--steps", "bogus", "--dry-run"]) == 2


@pytest.mark.parametrize("value", ["", ",", " , "])
def test_empty_steps_list_exits_2(capsys, value):
    # An empty --steps used to mean "every step" (the whole networked pipeline).
    assert pipeline.main(["all", "--bucket", "sod", "--steps", value, "--dry-run"]) == 2
    out, err = capsys.readouterr()
    assert out == "" and "--steps" in err


def test_vendor_prices_all_rejects_version(capsys):
    assert pipeline.main(["vendor-prices", "--all", "--version", "1.15.8.67156", "--dry-run"]) == 2
    out, err = capsys.readouterr()
    assert out == "" and "--version" in err and "--all" in err


def test_vendor_prices_single_bucket_accepts_version(capsys):
    assert pipeline.main(["vendor-prices", "--bucket", "tbc", "--version", "2.5.5.65895",
                          "--dry-run"]) == 0
    assert "--version 2.5.5.65895" in capsys.readouterr().out


@pytest.mark.parametrize("cmd", ["all", "generate"])
def test_unknown_profession_exits_1(capsys, cmd):
    assert pipeline.main([cmd, "--bucket", "vanilla", "--profession", "Jewelcrafting",
                          "--dry-run"]) == 1
    out, err = capsys.readouterr()
    assert out == "" and err.startswith("ERROR:") and "Jewelcrafting" in err


def _python_steps(bucket):
    opts = _opts()
    steps = pipeline.plan_all(bucket, [bucket.profession(f) for f in bucket.professions], opts)
    return [s for s in steps if s.argv[0] == sys.executable]


@pytest.mark.parametrize("key", list(BUCKETS))
def test_every_planned_step_parses_with_its_scripts_own_parser(key):
    """Each python step's argv must be accepted by that script's argparse.

    WHY: plan_all builds argv lists by hand; a flag renamed in a script would
    otherwise surface only mid-run (after the network steps) as an argparse exit 2.
    """
    import importlib
    bucket = get_bucket(key)
    steps = _python_steps(bucket)
    assert {s.name for s in steps} >= {"extract", "enrich", "assert-no-pending",
                                       "assert-no-unaligned", "audit", "generate", "vendor-prices"}
    for s in steps:
        module = importlib.import_module(Path(s.argv[1]).stem)
        try:
            args = module.build_parser().parse_args(s.argv[2:])
        except SystemExit:
            pytest.fail(f"{key}: step {s.name} ({s.profession}) argv rejected: {s.argv[1:]}")
        assert args.bucket == key, (s.name, args)


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
        "1.15.8.67156", "1.60.1.71037", "2.5.5.65895", "3.4.5.63697"]
    assert "latest" not in out
