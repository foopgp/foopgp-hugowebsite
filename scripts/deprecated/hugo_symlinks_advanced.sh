#!/usr/bin/env bash
# prepare_hugo_symlinks_advanced.sh
# ----------------------------------------------------
# Copyright 2026 OpenAI, GPT-5-mini
# Version 1.0
#
# Transform Hugo symlinks into bind mounts (dirs) or hardlinks (files)
# Supports git submodules, cross-filesystem detection, colored logging
# Auto-cleanup of bind mounts on exit or manual cleanup
# Usage: ./prepare_hugo_symlinks_advanced.sh [--cleanup]

set -euo pipefail

# Color output
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
RESET="\033[0m"

# Directories to scan (typical Hugo directories)
TARGET_DIRS=("content" "assets" "static")

CLEANUP=false
if [ "${1:-}" == "--cleanup" ]; then
    CLEANUP=true
fi

# -----------------------------
# Cleanup all bind mounts
cleanup_mounts() {
    echo -e "${YELLOW}Cleaning bind mounts...${RESET}"
    # Unmount from deepest directories first
    for dir in $(find "${TARGET_DIRS[@]}" -type d | tac); do
        if mountpoint -q "$dir" 2>/dev/null; then
            umount "$dir"
            echo -e "${GREEN}Unmounted:${RESET} $dir"
        fi
    done
    echo -e "${GREEN}Cleanup finished.${RESET}"
}

if $CLEANUP; then
    cleanup_mounts
    exit 0
fi

# -----------------------------
# Process each symlink
process_symlink() {
    local link="$1"
    local target
    target=$(readlink -f "$link") || { echo -e "${RED}Cannot resolve $link${RESET}"; return; }

    if [ ! -e "$target" ]; then
        echo -e "${RED}Target does not exist:${RESET} $link -> $target"
        return
    fi

    rm "$link"

    if [ -d "$target" ]; then
        mkdir -p "$link"
        # Linux/macOS bind mount
        mountpoint -q "$link" || mount --bind "$target" "$link"
        echo -e "${GREEN}📂 Bind mounted:${RESET} $target -> $link"
    elif [ -f "$target" ]; then
        # Cross-filesystem detection
        if [ "$(stat -c %d "$target" 2>/dev/null || stat -f %d "$target")" != "$(stat -c %d "$PWD/$link" 2>/dev/null || stat -f %d "$PWD/$link")" ]; then
            echo -e "${YELLOW}⚠ Cross-filesystem detected, fallback copy:${RESET} $target -> $link"
            cp "$target" "$link"
        else
            ln "$target" "$link"
            echo -e "${GREEN}📄 Hardlinked:${RESET} $target -> $link"
        fi
    else
        echo -e "${YELLOW}⚠ Unknown type, skipped:${RESET} $link -> $target"
    fi
}

# -----------------------------
# Scan for symlinks
for dir in "${TARGET_DIRS[@]}"; do
    [ -d "$dir" ] || continue
    while IFS= read -r link; do
        process_symlink "$link"
    done < <(find "$dir" -type l)
done

# -----------------------------
# Auto-cleanup on Ctrl+C or exit
trap cleanup_mounts EXIT

echo -e "${GREEN}✅ All symlinks have been processed.${RESET}"
echo -e "🔹 Run now: hugo server"
echo -e "🔹 Manual cleanup: ./prepare_hugo_symlinks_advanced.sh --cleanup"

