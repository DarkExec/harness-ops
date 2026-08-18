#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
json=false
if [[ "${1:-}" == "--json" ]]; then
  json=true
  shift
fi
(( $# == 0 )) || {
  echo "usage: scripts/refresh.sh [--json]" >&2
  exit 2
}

[[ "$(git -C "$root" rev-parse --show-toplevel)" == "$root" ]] || {
  echo "refresh must run from the canonical repository checkout" >&2
  exit 1
}
[[ "$(git -C "$root" symbolic-ref --short HEAD)" == "main" ]] || {
  echo "refresh requires the canonical checkout on main" >&2
  exit 1
}
[[ -z "$(git -C "$root" status --porcelain --untracked-files=all)" ]] || {
  echo "refresh requires a clean canonical checkout" >&2
  exit 1
}

git_common_dir="$(git -C "$root" rev-parse --path-format=absolute --git-common-dir)"
exec 9>"$git_common_dir/harness-ops-refresh.lock"
flock 9

git -C "$root" fetch --quiet origin refs/heads/main:refs/remotes/origin/main
old_revision="$(git -C "$root" rev-parse HEAD)"
new_revision="$(git -C "$root" rev-parse refs/remotes/origin/main)"

[[ -z "$(git -C "$root" status --porcelain --untracked-files=all)" ]] || {
  echo "canonical checkout changed while acquiring the refresh lock" >&2
  exit 1
}
git -C "$root" merge-base --is-ancestor "$old_revision" "$new_revision" || {
  echo "canonical checkout has diverged from origin/main" >&2
  exit 1
}

status="current"
if [[ "$old_revision" != "$new_revision" ]]; then
  temporary="$(mktemp -d "${TMPDIR:-/tmp}/harness-ops-refresh.XXXXXX")"
  candidate="$temporary/candidate"
  cleanup() {
    git -C "$root" worktree remove --force "$candidate" >/dev/null 2>&1 || true
    rm -rf -- "$temporary"
  }
  trap cleanup EXIT
  git -C "$root" worktree add --quiet --detach "$candidate" "$new_revision"
  "$candidate/scripts/validate.sh" >/dev/null
  git -C "$root" merge --quiet --ff-only "$new_revision"
  "$root/scripts/validate.sh" >/dev/null
  status="updated"
else
  "$root/scripts/validate.sh" >/dev/null
fi

revision="$(git -C "$root" rev-parse HEAD)"
checksum="$(sha256sum "$root/harness-ops.md" | cut -d' ' -f1)"
if $json; then
  printf '{"status":"%s","revision":"%s","harnessOpsSha256":"%s"}\n' \
    "$status" "$revision" "$checksum"
else
  printf 'harness-ops %s: revision=%s sha256=%s\n' "$status" "$revision" "$checksum"
fi
