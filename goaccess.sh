#!/bin/bash

set -e

ACCESSLOG=${ACCESSLOG:-$1}

[ "$ACCESSLOG" ] || { echo "please pass the access log into the ACCESSLOG environnement or through \$1" ; exit 2 ; }

ACCESSLOG="$(readlink -f "$ACCESSLOG")"

cd "$(dirname "$0")"

mkdir -p {public,static}"/goaccess"

dw="public/goaccess/"
fw="$(date "+%Gw%V")-$(basename "$PWD").html"
set +e
if ! [ "$(find "$dw$fw"  -cmin -60)" ] ; then
	goaccess $(find "$ACCESSLOG"* -not -name "*.gz") <(zcat "$ACCESSLOG"*.gz) --log-format=COMBINED -a -o "$dw$fw" && cp {public,static}"/goaccess/$fw"
	unlink public/goaccess/last2w.html
	ln -s "$fw"  public/goaccess/last2w.html
fi

goaccess --no-progress $(find "$ACCESSLOG"* -not -name "*.gz") --log-format=COMBINED -a -o public/goaccess/last.html

