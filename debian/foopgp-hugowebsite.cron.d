# Refresh the foopgp website (git pull + hugo build when sources moved) and its
# goaccess stats.
#
# update_hugo.sh runs as www-data ; the first run bootstraps the /var/www clone.
#
# goaccess.sh must read /var/log/apache2 -- a directory mode 711 root:adm, whose
# logs become 640 root:adm once logrotate recreates them. It therefore runs
# effectively as www-data (so it owns the reports it writes into the served
# tree) *plus* the adm group (so it can read the logs). The cron entry is root
# only to let setpriv drop to that pair ; the work itself never runs as root.
*/6 * * * * www-data /usr/share/foopgp-hugowebsite/update_hugo.sh
*/5 * * * * root     setpriv --reuid www-data --regid www-data --groups adm -- /usr/share/foopgp-hugowebsite/goaccess.sh /var/log/apache2/foopgp-access.log
