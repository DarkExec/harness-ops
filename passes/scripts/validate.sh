#!/usr/bin/env bash
set -euo pipefail
root="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
for path in AGENTS.md README.md harness/AGENTS.md harness/DOCTRINE.md harness/PLAYBOOK.md efficiency/AGENTS.md efficiency/DOCTRINE.md efficiency/PLAYBOOK.md scripts/validate.sh; do
  [[ -s "$root/$path" ]] || { echo "missing shared pass file: $path" >&2; exit 1; }
done
python3 - "$root" <<'PY'
from pathlib import Path
import sys

root = Path(sys.argv[1])
root_map = (root / "AGENTS.md").read_text()
assert "harness/AGENTS.md" in root_map and "efficiency/AGENTS.md" in root_map
for mode, selector in (("harness", "toolburn pass current"), ("efficiency", "toolburn pass previous")):
    map_text = (root / mode / "AGENTS.md").read_text()
    doctrine = (root / mode / "DOCTRINE.md").read_text()
    playbook = (root / mode / "PLAYBOOK.md").read_text()
    assert selector in map_text
    assert "DOCTRINE.md" in map_text and "PLAYBOOK.md" in map_text
    assert "target-local" in map_text or "target's" in map_text
    assert "/srv/harness-ops.md" in doctrine
    assert "earliest" in playbook.lower() and "intervention" in playbook.lower()
    assert "retain`, `revise`, or `remove" in playbook
    for artifact in sorted((root / mode).glob("*.md")):
        if artifact.name != "AGENTS.md":
            assert artifact.name in map_text, f"unrouted {mode} artifact: {artifact.name}"
    assert len(map_text.splitlines()) <= 80, f"{mode}/AGENTS.md is no longer compact"
readme = (root / "README.md").read_text()
assert "/srv/harness-ops/passes/harness/AGENTS.md" in readme
assert "/srv/harness-ops/passes/efficiency/AGENTS.md" in readme
assert "DarkExec/passes" not in "\n".join(p.read_text() for p in root.rglob("*.md"))
assert not list(root.rglob("PASS.md")), "PASS.md is superseded by scoped AGENTS.md maps"
PY
bash -n "$root/scripts/validate.sh"
echo "shared pass validation passed"
