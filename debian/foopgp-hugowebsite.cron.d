# Refresh the foopgp website (git pull + hugo build when sources moved) and its
# goaccess stats. Runs as www-data ; the first run bootstraps the /var/www clone.
*/6 * * * * www-data /usr/share/foopgp-hugowebsite/update_hugo.sh
*/5 * * * * www-data /usr/share/foopgp-hugowebsite/goaccess.sh /var/log/apache2/foopgp-access.log
