#!/usr/bin/fish
set -l timestamp (date -d 'now + 1 hour' +%s)
systemd-run --user --on-calendar @$timestamp systemctl start --user backup
