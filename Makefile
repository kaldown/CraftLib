# Pipeline entry points. Bucket targets are generated from the bucket registry
# (scripts/buckets.py), so an unknown bucket simply has no target and the step
# list lives in scripts/pipeline.py, not here.
PYTHON ?= python3
PIPELINE = $(PYTHON) scripts/pipeline.py

# WHY fail here: an empty list would silently generate zero bucket targets.
BUCKETS := $(shell $(PYTHON) scripts/buckets.py keys)
ifeq ($(strip $(BUCKETS)),)
$(error bucket registry unreadable: '$(PYTHON) scripts/buckets.py keys' printed nothing)
endif

# Knobs: PROFESSION=Tailoring, ARGS="..." (extra pipeline flags, e.g. --steps a,b),
# OUT=<dir> (output directory of the offline <bucket>-generate and vendor-prices
# targets, where it is REQUIRED; OUT=Data rewrites the shipped files).
PROF_ARG = $(if $(PROFESSION),--profession "$(PROFESSION)")
OUT_ARG = $(if $(OUT),--output-dir $(OUT))

# WHY OUT is required for the offline targets: regenerating into the shipped Data/ is
# not a no-op (the tracked sources can drift from the shipped Lua), so overwriting it
# must be asked for by name. The messages live in variables because a literal comma
# would split the $(if ...) arguments.
OUT_REQUIRED_MSG = OUT is required: pass OUT=<dir>, or OUT=Data to rewrite the shipped files deliberately
require_out = $(if $(strip $(OUT)),,$(error $@: $(OUT_REQUIRED_MSG)))
# WHY reject OUT on the networked targets: -all rewrites Data/Sources and Data/ in place and
# -fetch writes only the DB2 cache; both used to ignore OUT silently.
OUT_IGNORED_MSG = OUT is not used by the networked targets (-all rewrites Data/Sources and Data/ in place; -fetch writes only the DB2 cache); for <bucket>-all pass ARGS="--sources-dir <copy of Data/Sources> --output-dir <dir>" instead
reject_out = $(if $(strip $(OUT)),$(error $@: $(OUT_IGNORED_MSG)))

.PHONY: help clean fetch-data vendor-prices audit list-buckets test test-python test-lua lint-lua \
	$(addsuffix -all,$(BUCKETS)) $(addsuffix -fetch,$(BUCKETS)) $(addsuffix -generate,$(BUCKETS))

help:
	@echo "Per bucket ($(BUCKETS)):"
	@echo "  make <bucket>-all        full pipeline (network): fetch, extract, enrich, gates, audit, generate"
	@echo "  make <bucket>-fetch      fetch the bucket's pinned DB2 build"
	@echo "  make <bucket>-generate OUT=<dir>   offline: regenerate Recipes.lua + vendor prices into <dir>"
	@echo "  PROFESSION=<name> limits a bucket target to one profession; ARGS=... passes pipeline flags"
	@echo "  OUT is required by the offline targets; OUT=Data rewrites the shipped files deliberately."
	@echo "  -all and -fetch reject OUT (-all rewrites Data/ in place, -fetch only the DB2 cache; use ARGS for other dirs)."
	@echo "Other:"
	@echo "  fetch-data [BUCKET=b]    fetch DB2 builds (all buckets by default)"
	@echo "  vendor-prices OUT=<dir> [BUCKET=b]"
	@echo "  audit  list-buckets  test  test-python  test-lua  lint-lua  clean"

# A failing step makes pipeline.py exit non-zero, which stops make: gates are real gates.
$(addsuffix -all,$(BUCKETS)): %-all:
	$(reject_out)@$(PIPELINE) all --bucket $* $(PROF_ARG) $(ARGS)

$(addsuffix -fetch,$(BUCKETS)): %-fetch:
	$(reject_out)@$(PIPELINE) fetch --bucket $*

$(addsuffix -generate,$(BUCKETS)): %-generate:
	$(require_out)@$(PIPELINE) generate --bucket $* $(PROF_ARG) $(OUT_ARG) $(ARGS)

fetch-data:
	@$(PIPELINE) fetch $(if $(BUCKET),--bucket $(BUCKET),--all)

vendor-prices:
	$(require_out)@$(PIPELINE) vendor-prices $(if $(BUCKET),--bucket $(BUCKET),--all) $(OUT_ARG)

audit:
	@$(PYTHON) scripts/audit_sources.py

list-buckets:
	@$(PIPELINE) list

test: test-python test-lua lint-lua

test-python:
	@$(PYTHON) -m pytest scripts/tests -q

test-lua:
	@lua5.1 scripts/tests/test_profile.lua
	@lua5.1 scripts/tests/test_vendor_prices.lua

lint-lua:
	@luac5.1 -p Core/*.lua $$(find Data -name '*.lua')

# Remove build artifacts
clean:
	@rm -f *.zip *.tar.gz
	@echo "Cleaned build artifacts"
