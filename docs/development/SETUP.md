# Development Setup

## Prerequisites

- World of Warcraft (Classic or Anniversary edition)
- Git
- Python 3 (for data generation scripts - standard library only, no pip installs)
- Text editor with Lua support

## Clone Repository

```bash
git clone --recurse-submodules https://github.com/kaldown/CraftLib.git
```

If you already cloned without `--recurse-submodules`:

```bash
git submodule update --init --recursive
```

## Symlink to AddOns Folder

Replace `<version>` with your WoW installation folder (e.g., `_classic_`, `_anniversary_`).

### macOS

```bash
ln -s /path/to/CraftLib "/path/to/World of Warcraft/<version>/Interface/AddOns/CraftLib"
```

### Windows

```cmd
mklink /D "C:\...\World of Warcraft\<version>\Interface\AddOns\CraftLib" "C:\path\to\CraftLib"
```

## Verify Installation

1. Launch WoW
2. Character select: Click "AddOns" button
3. Confirm "CraftLib" appears in list
4. Log into game
5. Run: `/dump CraftLib:IsReady()`
6. Should return `true`

## Recommended Addons for Development

| Addon | Purpose |
|-------|---------|
| [BugSack](https://www.curseforge.com/wow/addons/bugsack) | Captures Lua errors |
| [BugGrabber](https://www.curseforge.com/wow/addons/bug-grabber) | Required by BugSack |
| [DevTools](https://www.curseforge.com/wow/addons/devtools) | Enhanced /dump command |

## Project Structure

See [COMPONENTS.md](../architecture/COMPONENTS.md) for detailed file descriptions.

## Making Changes

1. Edit files in your CraftLib directory
2. In-game: `/reload` to reload UI
3. Test changes with `/dump` commands
4. See [TESTING.md](TESTING.md) for test procedures
