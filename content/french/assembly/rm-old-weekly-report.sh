#!/bin/bash

set -e

cd "$(dirname "$0")"

# By default, keep last 8 weekly-reports
keep=$(($1+0 ? $1+0 : 8))

msg="$(basename "$0"): keep last $keep weekly-reports
"

git stash

while read file ; do
	msg+="
rm $file"
	git rm "$file"
done < <(ls *weekly-report* | head -n -$keep)

set -x
git tag -s -m "before $msg" "weekly-reports_$(date -I)"
git commit -m "$msg"

git stash pop

