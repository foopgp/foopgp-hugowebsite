#!/bin/bash

cd $(dirname "$0")

head="$(git rev-parse HEAD)"

git stash
git pull --rebase
git stash pop

[[ $(git rev-parse HEAD) == $head ]] || hugo -D
