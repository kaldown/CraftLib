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

# Optional knobs: PROFESSION=Tailoring, OUT=<dir> (generate into a scratch dir
# instead of Data/), ARGS="..." (extra pipeline flags, e.g. --steps a,b).
PROF_ARG = $(if $(PROFESSION),--profession "$(PROFESSION)")
OUT_ARG = $(if $(OUT),--output-dir $(OUT))

.PHONY: help clean fetch-data vendor-prices audit list-buckets test test-python test-lua lint-lua \
	$(addsuffix -all,$(BUCKETS)) $(addsuffix -fetch,$(BUCKETS)) $(addsuffix -generate,$(BUCKETS))

help:
	@echo "Per bucket ($(BUCKETS)):"
	@echo "  make <bucket>-all        full pipeline (network): fetch, extract, enrich, gates, generate"
	@echo "  make <bucket>-fetch      fetch the bucket's pinned DB2 build"
	@echo "  make <bucket>-generate   offline: regenerate Recipes.lua + vendor prices (OUT=dir)"
	@echo "  PROFESSION=<name> limits a bucket target to one profession; ARGS=... passes pipeline flags"
	@echo "Other:"
	@echo "  fetch-data [BUCKET=b]    fetch DB2 builds (all buckets by default)"
	@echo "  vendor-prices [BUCKET=b] [OUT=dir]"
	@echo "  audit  list-buckets  test  test-python  test-lua  lint-lua  clean"

# A failing step makes pipeline.py exit non-zero, which stops make: gates are real gates.
$(addsuffix -all,$(BUCKETS)): %-all:
	@$(PIPELINE) all --bucket $* $(PROF_ARG) $(ARGS)

$(addsuffix -fetch,$(BUCKETS)): %-fetch:
	@$(PIPELINE) fetch --bucket $*

$(addsuffix -generate,$(BUCKETS)): %-generate:
	@$(PIPELINE) generate --bucket $* $(PROF_ARG) $(OUT_ARG) $(ARGS)

fetch-data:
	@$(PIPELINE) fetch $(if $(BUCKET),--bucket $(BUCKET),--all)

vendor-prices:
	@$(PIPELINE) vendor-prices $(if $(BUCKET),--bucket $(BUCKET),--all) $(OUT_ARG)

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
