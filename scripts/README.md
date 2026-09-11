# scripts/

These scripts are **maintained and packaged on the `debian` branch**, not here.

- `goaccess.sh` — access-log statistics into `public/goaccess/`
- `update_hugo.sh` — `git pull` + `hugo build` refresh of the served site
- `apache2-foopgp.conf` — the apache vhost
- `deprecated/` — old helpers, kept for reference

The `foopgp-hugowebsite` Debian package installs them into
`/usr/share/foopgp-hugowebsite/` and wires `goaccess.sh` and `update_hugo.sh`
into cron. The build takes them straight from the `debian` branch tree; this
`public` branch is never merged into `debian`.

**Do not edit or add scripts on this branch** — this copy is not used. Change
them on `debian`.
