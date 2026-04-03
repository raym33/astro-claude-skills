#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/.." && pwd)"
SOURCE_DIR="$REPO_ROOT/.claude/skills"
TARGET_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

if [[ ! -d "$SOURCE_DIR" ]]; then
	echo "Source skills directory not found: $SOURCE_DIR" >&2
	exit 1
fi

mkdir -p "$TARGET_DIR"

installed=()

for skill_path in "$SOURCE_DIR"/*; do
	[[ -d "$skill_path" ]] || continue
	skill_name="$(basename "$skill_path")"
	target_path="$TARGET_DIR/$skill_name"

	rm -rf "$target_path"
	cp -R "$skill_path" "$target_path"
	installed+=("$skill_name")
done

echo "Installed ${#installed[@]} Astro Claude Skills into:"
echo "  $TARGET_DIR"

for skill_name in "${installed[@]}"; do
	echo "  - $skill_name"
done
