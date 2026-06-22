import sys
from pathlib import Path

# Make scripts/ importable as modules in tests (e.g. `import fetch_wowhead_sources`)
SCRIPTS_DIR = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(SCRIPTS_DIR))

FIXTURES = Path(__file__).resolve().parent / "fixtures"
