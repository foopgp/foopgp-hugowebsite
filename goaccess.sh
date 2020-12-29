#!/bin/bash

set -e

ACCESSLOG=${ACCESSLOG:-$1}

[ "$ACCESSLOG" ] || { echo "please pass the access log into the ACCESSLOG environnement or through \$1" ; exit 2 ; }

ACCESSLOG="$(readlink -f "$ACCESSLOG")"

cd "$(dirname "$0")"

mkdir -p "public/goaccess"

fw="public/goaccess/$(date "+%Gw%V")-$(basename "$PWD").html"

[ "$(find "$fw"  -cmin -60)" ] || zcat "$ACCESSLOG"*.gz | goaccess $(find "$ACCESSLOG"* -not -name "*.gz") --log-format=COMBINED -a -o "$fw"

goaccess $(find "$ACCESSLOG"* -not -name "*.gz") --log-format=COMBINED -a -o public/goaccess/last.html

