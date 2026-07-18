#!/bin/bash

# Deploy and refresh the foopgp hugo website. Run by cron as www-data, and
# callable by the operator for an immediate build. On first run it bootstraps
# the working clone (submodules included) ; afterwards it pulls and rebuilds
# public/ only when the tracked HEAD or a submodule moved.

### CONFIG ###
ROOTHUGO="${ROOTHUGO:-/var/www/foopgp-hugowebsite}"
ORIGIN_URL="${ORIGIN_URL:-https://codeberg.org/foopgp/foopgp-hugowebsite.git}"
GITHUB_URL="${GITHUB_URL:-https://github.com/foopgp/foopgp-hugowebsite.git}"
LOGFILE="${LOGFILE:-/var/log/foopgp-hugowebsite/update_hugo.log}"
###

# keep only the last 100 lines in log ; fall back to stderr if unwritable
mkdir -p "$(dirname "$LOGFILE")" 2>/dev/null
if [[ -w "$LOGFILE" ]] || touch "$LOGFILE" 2>/dev/null; then
    tmp_file=$(mktemp)
    tail -n 100 "$LOGFILE" > "$tmp_file" && mv -f "$tmp_file" "$LOGFILE"
else
    LOGFILE="/dev/stderr"
fi

{
  echo "==="
  date +"%d-%m-%y_%H-%M--%s"

  # Bootstrap the clone on first run. 'origin' is codeberg ; a 'github' mirror
  # remote is configured too, but pull always follows origin (no force-push).
  if [[ ! -d "$ROOTHUGO/.git" ]]; then
      echo "bootstrap: cloning $ORIGIN_URL → $ROOTHUGO"
      git clone --recurse-submodules "$ORIGIN_URL" "$ROOTHUGO" || exit 1
      git -C "$ROOTHUGO" remote add github "$GITHUB_URL" 2>/dev/null
  fi

  cd "$ROOTHUGO" || exit 1
  echo "PWD: $(pwd)"

  head_root_before=$(git rev-parse HEAD)
  head_subs_before=$(git submodule status)

  git pull --rebase || exit 1
  git submodule update --remote --rebase || exit 1

  head_root_after=$(git rev-parse HEAD)
  head_subs_after=$(git submodule status)

  # hugo build only if needed
  if [[ "$head_root_before" != "$head_root_after" ]]\
    || [[ "$head_subs_before" != "$head_subs_after" ]]; then
      hugo --minify
  fi
} 2>&1 | tee -a "$LOGFILE"
