#!/usr/bin/env bash
set -euo pipefail

force=0
if [[ "${1:-}" == "--force" ]]; then force=1; fi
if [[ "${1:-}" != "" && "${1:-}" != "--force" ]]; then
  echo "Usage: bash install.sh [--force]" >&2
  exit 2
fi

bundle_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skills_root="${CODEX_HOME:-$HOME/.codex}/skills"
mkdir -p "$skills_root"

for skill in grilling grill-me teach proto-production-debugging proto-commerce-domain; do
  source_dir="$bundle_dir/$skill"
  target_dir="$skills_root/$skill"
  if [[ -e "$target_dir" && "$force" -ne 1 ]]; then
    echo "Skipping existing skill: $skill (use --force to replace)"
    continue
  fi
  mkdir -p "$target_dir"
  cp -R "$source_dir/." "$target_dir/"
  echo "Installed: $skill"
done

for skill in prototype domain-modeling codebase-design tdd diagnosing-bugs code-review grill-with-docs research; do
  source_dir="$bundle_dir/mattpocock/$skill"
  target_dir="$skills_root/$skill"
  if [[ -e "$target_dir" && "$force" -ne 1 ]]; then
    echo "Skipping existing skill: $skill (use --force to replace)"
    continue
  fi
  mkdir -p "$target_dir"
  cp -R "$source_dir/." "$target_dir/"
  echo "Installed: $skill"
done

echo "Done. Restart or reload Codex if necessary."
