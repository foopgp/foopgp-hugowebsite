#!/bin/bash

# Generate goaccess HTML reports from an apache access log and publish them
# directly into the live site's public/goaccess/. Run by cron as www-data.
# use example: goaccess.sh /var/log/apache2/foopgp-access.log

set -e

ACCESSLOG=${ACCESSLOG:-$1}

[ "$ACCESSLOG" ] || { echo "please pass the access log into the ACCESSLOG environnement or through \$1" ; exit 2 ; }

ACCESSLOG="$(readlink -f "$ACCESSLOG")"

# Publish straight into the served tree ; hugo --minify (no --cleanDestinationDir)
# leaves this unmanaged subdir untouched on rebuild.
OUTDIR="${OUTDIR:-/var/www/foopgp-hugowebsite/public/goaccess}"
# Do nothing until the site is built : creating OUTDIR early would collide with
# update_hugo.sh's bootstrap 'git clone' into an empty /var/www/foopgp-hugowebsite.
[ -d "$(dirname "$OUTDIR")" ] || { echo "site public/ not built yet, skipping" >&2 ; exit 0 ; }
mkdir -p "$OUTDIR"

fw="$(date "+%Gw%V")-foopgp.html"       # ISO-week report
set +e
# (re)build the weekly report at most once per hour
if ! [ "$(find "$OUTDIR/$fw" -cmin -60 2>/dev/null)" ] ; then
	goaccess $(find "$ACCESSLOG"* -not -name "*.gz") <(zcat "$ACCESSLOG"*.gz 2>/dev/null) --log-format=COMBINED -a -o "$OUTDIR/$fw"
	ln -sf "$fw" "$OUTDIR/last2w.html"
fi

# always refresh the rolling report
goaccess --no-progress $(find "$ACCESSLOG"* -not -name "*.gz") --log-format=COMBINED -a -o "$OUTDIR/last.html"
