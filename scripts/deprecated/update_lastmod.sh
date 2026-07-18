#!/bin/bash

me="$(basename "$0")"
cd "$(dirname "$0")"

git restore --staged -- .

find "${@:-content/}" -type f -name "*.md" | while read file ; do
	
	read h lastmod etc < <( grep -in -m 1 "^lastmod: \+[0-9-]\{10\}T[0-9:]\{8\}.[0-9:]\{5\}" "$file" )
	lastauthordate="$(git log -1 --pretty="format:%aI" "$file")"
	[[ "$lastauthordate" ]] || lastauthordate=$(date --iso-8601=seconds)

	if [[ -z "$lastmod" ]] ; then
		continue
		sed -i "1a\Lastmod: $lastauthordate # MANAGED BY ${me}" "$file"
	else
		sed -i "${h%%:*}c\#Lastmod: $lastauthordate # MANAGED by --enableGitInfo" "$file"
	fi
	if git diff --quiet -- "$file" ; then
		echo "${me}: unchanged ${file}" >&2
	else
		echo "${me}: $lastauthordate <- $file" >&2
		echo "$lastauthordate $file"
	fi
	#git add -- "$file"
	#git commit --date=${lastauthordate} --message="${me}: $file" --message="$lastmod -> $lastauthordate"
done | sort | while read date file ; do git add -v -- "$file"; if [[ "$dp" == $date ]] ; then amend="--amend" ; else amend="" ; dp="$date" ; fi ; git commit $amend --date="$date" --message="Comment lastmod entry for file(s) last modified $date" ; done
