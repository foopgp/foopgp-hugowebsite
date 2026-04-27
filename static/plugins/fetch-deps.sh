#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2025 jean-jacques brucker (u4=sRyUhEbNU5OwyLEjfSwaXAe_42.17-002.76) <jjbrucker@foopgp.org>
# SPDX-FileCopyrightText: 2025 Mnème (u5=1745618400.000e_43.30_005.38 claude-sonnet-4-6) <mneme@foopgp.org>
#   Context window : 200k tokens
#   Thinking mode  : adaptive (extended thinking enabled)
#   Trained by     : Anthropic PBC (u5=1617235200.000e_37.77-122.42)
#   Conversation at writing time: ~90k tokens (~45% of context window)
# SPDX-License-Identifier: GPL-3.0-only
#
# fetch-deps.sh — fetch web dependencies for foopgp/djis-simulator

VERSION="1.0"
SCRIPT_DIR=$(readlink -f "$(dirname "$0")")
USER_AGENT="Mozilla/5.0 (X11; Linux x86_64; rv:124.0) Gecko/20100101 Firefox/124.0"

# ── Dependency list ────────────────────────────────────────────────
# Format:  ["local/relative/path"]="https://source/url"
declare -A DEPS=(
	["chartjs/chart.umd.min.js"]="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.min.js"
	["fonts/poppins/poppins.css"]="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
)

# ── Helpers ────────────────────────────────────────────────────────
usage () {
	cat <<-EOF
	Usage: $(basename "$0") [OPTIONS...] [DIR]

	Fetch web dependencies into the directory DIR
	(or into $SCRIPT_DIR by default).
	The web dependencies are listed in an associative array
	at the beginning of $(basename "$0").

	Options:
	  --help       display this help and exit
	  --version    display version information and exit
	EOF
}

die () { echo "$(basename "$0"): error: $*" >&2 ; exit 1 ; }

fetch_file () {
	local dest_file="$1" src_url="$2"
	local dest_dir
	dest_dir=$(dirname "$dest_file")
	mkdir -p "$dest_dir"
	echo "  GET $src_url"
	curl -fsSL -A "$USER_AGENT" "$src_url" -o "$dest_file" \
		|| die "failed to fetch $src_url"
}

# ── Argument parsing ───────────────────────────────────────────────
DIR=""
while [[ $# -gt 0 ]] ; do
	case "$1" in
		--help)    usage ; exit 0 ;;
		--version) echo "$(basename "$0") $VERSION" ; exit 0 ;;
		-*)        die "unknown option '$1' (try --help)" ;;
		*)         [[ -n "$DIR" ]] && die "unexpected argument '$1'" ; DIR="$1" ;;
	esac
	shift
done

DIR=${DIR:-$SCRIPT_DIR}
DIR=$(readlink -f "$DIR")

# ── Main ───────────────────────────────────────────────────────────
echo "Fetching dependencies into $DIR"

for rel_path in "${!DEPS[@]}" ; do
	url="${DEPS[$rel_path]}"
	dest="$DIR/$rel_path"
	dest_dir=$(dirname "$dest")
	echo "→ $rel_path"

	if [[ "$rel_path" == *.css ]] ; then
		# Fetch CSS, then download each referenced asset and rewrite URLs
		mkdir -p "$dest_dir"
		tmp=$(mktemp)
		echo "  GET $url"
		curl -fsSL -A "$USER_AGENT" "$url" -o "$tmp" \
			|| { rm -f "$tmp" ; die "failed to fetch $url" ; }
		while read -r asset_url ; do
			[[ -z "$asset_url" ]] && continue
			asset_name=$(basename "$asset_url" | sed 's/[?#].*//')
			[[ -z "$asset_name" ]] && asset_name=$(printf '%s' "$asset_url" | md5sum | cut -c1-16)
			echo "  GET $asset_url → $asset_name"
			curl -fsSL -A "$USER_AGENT" "$asset_url" -o "$dest_dir/$asset_name" \
				|| die "failed to fetch asset $asset_url"
			sed -i "s|$asset_url|$asset_name|g" "$tmp"
		done < <(grep -oP "https?://[^)'\"\\s]+" "$tmp" | sort -u)
		mv "$tmp" "$dest"
	else
		fetch_file "$dest" "$url"
	fi
done

echo ""
echo "✓ Done."
