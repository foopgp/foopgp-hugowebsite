#!/usr/bin/env bash
# ----------------------------------------------------
# Copyright 2026 <jjbrucker@foopgp.org>
#
# Build hugo and launch python3 server on port 1313, because Hugo developpers ...
# (they don't want to support symlinks anymore, because bullshit, wrong of falacious arguments)

# This script DOES NOT WORK as the probleme is that hugo don't consider symlink anymore when building 'public/' dir
# ...

cd "$(dirname "$0")"
hugo
cd public
python3 -m http.server 1313
