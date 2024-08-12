#!/bin/bash

keep=$(($1+0 ? $1+0 : 8))

ls *weekly-report* | head -n -$keep | while read file ; do
	git rm "$file"
done
