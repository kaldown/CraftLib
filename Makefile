.PHONY: clean fetch-data generate update-data extract-sources verify-sources

PYTHON := python3
EXPANSION ?= 2
DB2_DIR := vendor/db2-parser

# Remove build artifacts
clean:
	@rm -f *.zip *.tar.gz
	@echo "Cleaned build artifacts"

# Fetch DB2 data for expansion (default: TBC)
fetch-data:
	@make -C $(DB2_DIR) latest EXPANSION=$(EXPANSION)

# Phase 1: Extract sources from DB2 (detects TRAINER, REPUTATION, QUEST; marks others as PENDING)
# Usage: make extract-sources VERSION=2.5.5.65463 PROFESSION=FirstAid
extract-sources:
ifndef VERSION
	$(error VERSION required. Run 'make fetch-data' first, check vendor/db2-parser/artifacts/ for version.)
endif
ifndef PROFESSION
	$(error PROFESSION required. Example: make extract-sources VERSION=2.5.5.65463 PROFESSION=FirstAid)
endif
	@$(PYTHON) scripts/extract_db2_sources.py --version $(VERSION) --profession $(PROFESSION)

# Phase 2: Verify PENDING sources via Wowhead (determines VENDOR vs DROP)
# Usage: make verify-sources PROFESSION=FirstAid
verify-sources:
ifndef PROFESSION
	$(error PROFESSION required. Example: make verify-sources PROFESSION=FirstAid)
endif
	@$(PYTHON) scripts/fetch_wowhead_sources.py --profession $(PROFESSION)

# Phase 3: Generate Recipes.lua from verified sources
# Usage: make generate VERSION=2.5.5.65463 PROFESSION=FirstAid
# Or generate all: make generate VERSION=2.5.5.65463
generate:
ifndef VERSION
	$(error VERSION required. Run 'make fetch-data' first, check vendor/db2-parser/artifacts/ for version.)
endif
ifdef PROFESSION
	@$(PYTHON) scripts/generate_recipes.py --version $(VERSION) --expansion $(EXPANSION) --profession $(PROFESSION)
else
	@$(PYTHON) scripts/generate_recipes.py --version $(VERSION) --expansion $(EXPANSION)
endif

# Full pipeline for a single profession: extract -> verify -> generate
# Usage: make update-profession VERSION=2.5.5.65463 PROFESSION=FirstAid
update-profession:
ifndef VERSION
	$(error VERSION required. Run 'make fetch-data' first, check vendor/db2-parser/artifacts/ for version.)
endif
ifndef PROFESSION
	$(error PROFESSION required. Example: make update-profession VERSION=2.5.5.65463 PROFESSION=FirstAid)
endif
	@echo "=== Phase 1: Extracting sources from DB2 ==="
	@$(PYTHON) scripts/extract_db2_sources.py --version $(VERSION) --profession $(PROFESSION)
	@echo ""
	@echo "=== Phase 2: Verifying sources via Wowhead ==="
	@$(PYTHON) scripts/fetch_wowhead_sources.py --profession $(PROFESSION)
	@echo ""
	@echo "=== Phase 3: Generating Recipes.lua ==="
	@$(PYTHON) scripts/generate_recipes.py --version $(VERSION) --expansion $(EXPANSION) --profession $(PROFESSION)

# Convenience: fetch + generate all professions
update-data:
	@make -C $(DB2_DIR) latest EXPANSION=$(EXPANSION)
	@VERSION=$$(ls -1 $(DB2_DIR)/artifacts | sort -V | tail -1) && \
	echo "Using version: $$VERSION" && \
	$(PYTHON) scripts/generate_recipes.py --version $$VERSION --expansion $(EXPANSION)

SOD_VERSION ?= 1.15.8.67156
SOD_PROFS := Alchemy Blacksmithing Enchanting Engineering Leatherworking Tailoring Cooking FirstAid

# Fetch the SoD/Era DB2 build
sod-fetch:
	@make -C $(DB2_DIR) fetch VERSION=$(SOD_VERSION)

# Full SoD pipeline for all professions:
# extract -> cross-bucket reconcile -> listview verify -> trainer-tail verify
# -> assert no PENDING -> generate
sod-all: sod-fetch
	@for p in $(SOD_PROFS); do \
	  echo "=== $$p ==="; \
	  $(PYTHON) scripts/extract_db2_sources.py --version $(SOD_VERSION) --profession $$p --expansion sod --fallback-version 2.5.5.65895; \
	  $(PYTHON) scripts/reconcile_cross_bucket.py --profession $$p; \
	  $(PYTHON) scripts/fetch_wowhead_sources.py --profession $$p --expansion sod; \
	  $(PYTHON) scripts/verify_trainer_sources.py --profession $$p --expansion sod; \
	  $(PYTHON) scripts/assert_no_pending.py Data/Sources/SoD/$$p.json; \
	  $(PYTHON) scripts/generate_recipes.py --version $(SOD_VERSION) --flavor sod \
	    --data-dir $(DB2_DIR)/artifacts --profession $$p; \
	  sleep 2; \
	done
	@$(PYTHON) scripts/audit_sources.py

audit:
	@$(PYTHON) scripts/audit_sources.py
