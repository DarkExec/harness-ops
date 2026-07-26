#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required=(
  AGENTS.md
  ARCHITECTURE.md
  CONTRIBUTING.md
  LICENSE
  README.md
  SECURITY.md
  docs/quality.md
  docs/runbook.md
  harness-ops.md
)

for path in "${required[@]}"; do
  [[ -s "$root/$path" ]] || {
    echo "missing required file: $path" >&2
    exit 1
  }
done

read -r lines bytes < <(wc -l -c < "$root/harness-ops.md")
(( lines <= 200 )) || {
  echo "harness-ops.md exceeds 200 lines: $lines" >&2
  exit 1
}
(( bytes <= 16384 )) || {
  echo "harness-ops.md exceeds 16 KiB: $bytes" >&2
  exit 1
}

if grep -RInE \
  '(/srv/(voice|clawruns|dark|harness-ops)|tyc0on/|customer[_ -]?id|account-[0-9]+)' \
  "$root" \
  --exclude-dir=.git \
  --exclude=validate.sh
then
  echo "private or host-specific reference found" >&2
  exit 1
fi

if grep -RIn $'\r' "$root" --exclude-dir=.git; then
  echo "CRLF line ending found" >&2
  exit 1
fi

bash -n "$root/scripts/validate.sh"
git -C "$root" diff --check

printf 'harness-ops validation passed: %s lines, %s bytes\n' "$lines" "$bytes"
