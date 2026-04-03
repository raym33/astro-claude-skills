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

removed=()

for skill_path in "$SOURCE_DIR"/*; do
	[[ -d "$skill_path" ]] || continue
	skill_name="$(basename "$skill_path")"
	target_path="$TARGET_DIR/$skill_name"

	if [[ -e "$target_path" ]]; then
		rm -rf "$target_path"
		removed+=("$skill_name")
	fi
done

if [[ ${#removed[@]} -eq 0 ]]; then
	echo "No Astro Claude Skills were found in:"
	echo "  $TARGET_DIR"
	exit 0
fi

echo "Removed ${#removed[@]} Astro Claude Skills from:"
echo "  $TARGET_DIR"

for skill_name in "${removed[@]}"; do
	echo "  - $skill_name"
done
