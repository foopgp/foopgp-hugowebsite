#!/bin/bash

path_root_git=$(dirname $0)/../..
log_file=${0%.sh}.log

# keep only the last 100 lines in log
tmp_file=$(mktemp)
tail -n 100 $log_file > $tmp_file && mv $tmp_file $log_file

{
  echo ===
  echo $(date +"%d-%m-%y_%H-%M--%s")
  cd $path_root_git
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
      hugo
  fi
} 2>&1 | tee -a $log_file
