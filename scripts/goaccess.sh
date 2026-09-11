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

# Collect the log files we can actually read, by *exact* path -- never a glob.
# The cron runs as www-data, which can traverse /var/log/apache2 (mode 711) but
# not *list* it, so a shell glob "$ACCESSLOG"* would silently fail to expand and
# goaccess would get no input at all (empty report). Stat-ing known names works
# with traverse-only access. The '-r' test also drops any rotated log we are not
# allowed to read (e.g. once logrotate recreates it 640 root:adm), so goaccess
# never aborts on an unreadable input. KEEP tracks apache2's 'rotate 14'.
KEEP=14
plainlogs=() ; gzlogs=()
# Plain 'if', never a bare '[ -r x ] && y' : under 'set -e' a false test would
# abort the script the moment a rotated log is missing.
if [ -r "$ACCESSLOG" ] ; then plainlogs+=("$ACCESSLOG") ; fi
for n in $(seq 1 "$KEEP") ; do
	if [ -r "$ACCESSLOG.$n" ]    ; then plainlogs+=("$ACCESSLOG.$n")    ; fi
	if [ -r "$ACCESSLOG.$n.gz" ] ; then gzlogs+=("$ACCESSLOG.$n.gz")    ; fi
done

# Fail safe : if we cannot read a single log, keep the previous report rather
# than overwriting it with an empty one, and say why (cron mails this).
if [ ${#plainlogs[@]} -eq 0 ] && [ ${#gzlogs[@]} -eq 0 ] ; then
	echo "goaccess.sh: no readable log for $ACCESSLOG -- is it 640 root:adm while we run as $(id -un)? keeping the previous report" >&2
	exit 0
fi

# One entry point so the weekly and the rolling report share the input handling.
# The compressed logs, if any, are fed through a single decompressing FIFO.
run_goaccess() {   # caller passes the report-specific flags (e.g. -o PATH)
	if [ ${#gzlogs[@]} -gt 0 ] ; then
		goaccess "$@" "${plainlogs[@]}" <(zcat "${gzlogs[@]}" 2>/dev/null) --log-format=COMBINED -a
	else
		goaccess "$@" "${plainlogs[@]}" --log-format=COMBINED -a
	fi
}

fw="$(date "+%Gw%V")-foopgp.html"       # ISO-week report
set +e
# (re)build the weekly report at most once per hour
if ! [ "$(find "$OUTDIR/$fw" -cmin -60 2>/dev/null)" ] ; then
	run_goaccess -o "$OUTDIR/$fw"
	ln -sf "$fw" "$OUTDIR/last2w.html"
fi

# always refresh the rolling report
run_goaccess --no-progress -o "$OUTDIR/last.html"
