# Development Workflow

## Git Workflow

### Branch Strategy

- `main` - Stable, release-ready code
- Feature branches for larger work (optional)

### Commit Message Format

```
<type>(<scope>): <description>

<optional body>
```

**Types:**
- `feat` - New feature
- `fix` - Bug fix
- `docs` - Documentation only
- `refactor` - Code change that doesn't fix bug or add feature
- `test` - Adding tests
- `chore` - Maintenance tasks

**Scopes:**
- `api` - Public API changes
- `data` - Recipe data changes
- `core` - Core functionality

**Examples:**
```
feat(api): add GetRecipeByProduct for reverse lookup
fix(data): correct Heavy Silk Bandage skill range
docs: update SCHEMA with yield field
feat(data): add Engineering recipes for TBC
```

## Documentation Workflow (MANDATORY)

**Trigger:** Any commit that changes features, API, or data.

### Before Committing Checklist

- [ ] `CHANGELOG.md` - Entry under `[Unreleased]` with Added/Changed/Fixed
- [ ] `README.md` - Updated if profession coverage or features changed
- [ ] `CURSEFORGE.md` - Synced with README.md
- [ ] `SCHEMA.md` - Updated if API or data structures changed
- [ ] Architecture docs updated if design changed

### Commit Commands

```bash
# Review changes
git status && git diff --stat

# Check recent commit style
git log --oneline -5

# Stage and commit
git add <files> && git commit -m "$(cat <<'EOF'
<type>(<scope>): <description>

<optional body>
EOF
)"

# Verify
git status && git log --oneline -1
```

## Data Pipeline Commands

The pipeline is driven per client bucket (`vanilla`, `tbc`, `wotlk`, `sod`; `make list-buckets`
shows them with their pinned builds). Every target reads the bucket registry in
`scripts/buckets.py`.

| Command | What it does |
|---------|--------------|
| `make fetch-data [BUCKET=<b>]` | Fetch the pinned DB2 build(s) into `vendor/db2-parser/artifacts/` |
| `make <bucket>-fetch` | Fetch one bucket's pinned DB2 build |
| `make <bucket>-all [PROFESSION=<name>]` | Full pipeline (network): extract, enrich, gates and audit, then generate; rewrites `Data/Sources` and `Data/` in place and stops at the first failing step |
| `make <bucket>-generate OUT=<dir>` | Offline: regenerate the bucket's Lua from the tracked sources into `<dir>`; `OUT` is required, `OUT=Data` rewrites the shipped files deliberately |
| `make vendor-prices OUT=<dir> [BUCKET=<b>]` | Offline: regenerate `VendorPrices.lua` (same `OUT` rule) |
| `make audit` | Audit the tracked source classifications |
| `make test` | pytest, both Lua tests and the `luac5.1 -p` lint |

`ARGS="..."` passes extra flags to `scripts/pipeline.py` (for example
`ARGS="--steps assert-no-pending,generate"`). `<bucket>-all` and `<bucket>-fetch` reject `OUT`;
to run `-all` against other directories pass `ARGS="--sources-dir <dir> --output-dir <dir>"`.

### Exit codes

Every pipeline script and the driver use one convention, so a failing make target tells you what
kind of problem stopped it:

| Code | Meaning |
|------|---------|
| 0 | Success |
| 1 | Usage/config error or gate finding: unknown profession, a bucket that does not use the stage, a missing DB2 build directory (wrong `--version`/`--data-dir`), a PENDING or uncorroborated source left for `assert_no_*`, a hard audit finding |
| 2 | Input-data error: a missing or malformed input file, a DB2 column-contract or canary failure, a generate gate, a failed or unusable Wowhead fetch |

argparse itself exits 2 on bad command-line syntax (unknown flag, invalid choice, missing required
argument); the driver's own command-line checks (`--steps`, `--version` with `--all`) do the same.

## Adding a New Profession

1. **Register it**: add it to `scripts/buckets.py` (`PROFESSIONS` and the bucket's `professions`)
2. **Fetch, extract, enrich, gate and generate**: `make <bucket>-all PROFESSION=<name>`
3. **Add to TOC**: Update `CraftLib.toc` with the new `Data/<Bucket>/<Profession>/Recipes.lua`
4. **Test**: `make test` (the consistency test checks registry, TOC and `Data/` agree); see [TESTING.md](TESTING.md)
5. **Document**: Update README profession coverage table
6. **Commit**: Follow documentation workflow above

See [ADDING_PROFESSIONS.md](ADDING_PROFESSIONS.md) for detailed steps.

## Release Process

1. Update `CHANGELOG.md`:
   - Move `[Unreleased]` items to new version section
   - Add release date
   - Update comparison links at bottom

2. Update version in `CraftLib.toc`:
   ```
   ## Version: X.Y.Z
   ```

3. Verify all docs are in sync:
   - README profession table matches actual data
   - CURSEFORGE matches README
   - SCHEMA reflects current API

4. Commit: `chore: release vX.Y.Z`

5. Tag: `git tag vX.Y.Z`

6. Push: `git push origin main --tags`

7. **Automated uploads** (via GitHub Actions):
   - CurseForge, Wago.io, and GitHub Releases are uploaded automatically
   - Watch progress at: https://github.com/kaldown/CraftLib/actions
   - If a release fails, check the Actions logs for errors

### If Release Fails

If the GitHub Actions workflow fails:

1. Fix the issue
2. Delete the tag locally and remotely:
   ```bash
   git tag -d vX.Y.Z
   git push origin :refs/tags/vX.Y.Z
   ```
3. Amend commit if needed, re-tag, and push:
   ```bash
   git commit --amend --no-edit  # if changes needed
   git tag vX.Y.Z
   git push origin main --tags --force
   ```

This avoids burning version numbers on CI fixes.
