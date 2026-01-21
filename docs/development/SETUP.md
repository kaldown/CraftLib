# Development Setup

## Prerequisites

- World of Warcraft (TBC Classic or appropriate version)
- Git
- Text editor with Lua support

## Clone Repository

```bash
git clone https://github.com/kaldown/CraftLib.git ~/Projects/CraftLib
```

## Symlink to AddOns Folder

### macOS

```bash
ln -s ~/Projects/CraftLib "/Applications/World of Warcraft/_classic_/Interface/AddOns/CraftLib"
```

### Windows

```cmd
mklink /D "C:\Program Files (x86)\World of Warcraft\_classic_\Interface\AddOns\CraftLib" "C:\Users\YOU\Projects\CraftLib"
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

1. Edit files in `~/Projects/CraftLib/`
2. In-game: `/reload` to reload UI
3. Test changes with `/dump` commands
4. See [TESTING.md](TESTING.md) for test procedures
