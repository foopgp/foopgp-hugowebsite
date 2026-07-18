#!/bin/bash

### CONFIG ###
ROOTHUGO="/var/www/foopgp-hugowebsite/"
###

DIRNAME="$(dirname "$0")"
BASENAME="$(basename "$0")"
LOGFILE="${DIRNAME}/${BASENAME%.sh}.log"

# keep only the last 100 lines in log
if [[ -w "$LOGFILE" ]] || touch "$LOGFILE"; then
    tmp_file=$(mktemp)
    tail -n 100 "$LOGFILE" > "$tmp_file" && mv -f "$tmp_file" "$LOGFILE"
else
    LOGFILE="/dev/null"
fi

{
  echo "==="
  date +"%d-%m-%y_%H-%M--%s"
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

