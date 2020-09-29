#!/bin/bash

cd $(dirname "$0")

head="$(git rev-parse HEAD)"

git pull

[[ $(git rev-parse HEAD) == $head ]] || hugo -D
