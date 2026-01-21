# Contributing to CraftLib

## Getting Started

1. **Setup**: See [docs/development/SETUP.md](docs/development/SETUP.md)
2. **Architecture**: See [docs/architecture/OVERVIEW.md](docs/architecture/OVERVIEW.md)
3. **API Reference**: See [SCHEMA.md](SCHEMA.md)

## Types of Contributions

### Adding Recipe Data

The most common contribution is adding profession data. See [docs/development/ADDING_PROFESSIONS.md](docs/development/ADDING_PROFESSIONS.md) for a complete guide.

### Bug Fixes

1. Verify the bug exists (test in-game)
2. Fix the issue
3. Test thoroughly (see [docs/development/TESTING.md](docs/development/TESTING.md))
4. Update CHANGELOG.md
5. Submit PR

### API Changes

1. Discuss the change first (open an issue)
2. Update SCHEMA.md with new/changed functions
3. Update README.md if public API changed
4. Add ADR in docs/architecture/DECISIONS.md for significant changes

## Coding Standards

### Lua Style

- Use `local` for all variables
- Constants in `UPPER_CASE`
- Functions in `camelCase`
- Use `CraftLib.Constants` instead of hardcoded values

### Data Accuracy

- Verify all recipe data against Wowhead or in-game
- Use spell IDs (not item IDs) for recipe `id` field
- Include all required fields (see SCHEMA.md)

## Documentation Requirements

**Every PR must update documentation:**

- [ ] `CHANGELOG.md` - Entry under `[Unreleased]`
- [ ] `README.md` - If features or coverage changed
- [ ] `CURSEFORGE.md` - Keep in sync with README
- [ ] `SCHEMA.md` - If API changed

## Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <description>
```

Types: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`

See [docs/development/WORKFLOW.md](docs/development/WORKFLOW.md) for details.

## Questions?

Open an issue for questions about contributing.
