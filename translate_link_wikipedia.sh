#!/bin/bash

grep -o "//..\.wikipedia.org/wiki/[^)]*" content/english/blog/2023-04-03-lutter-contre-la-polution-informationelle.md | while read link ; do echo ; trlink=$(curl "https:$link" 2>/dev/null | grep -o -m1 "//en.wikipedia.org/wiki/[^\"]*") ; sed -i "s,$link,$trlink," content/english/blog/2023-04-03-lutter-contre-la-polution-informationelle.md ; done
