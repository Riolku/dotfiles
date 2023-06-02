#!/usr/bin/fish
if nmcli -t -f GENERAL.METERED dev show | grep yes
  notify-send "Automatic Backups" "Network is metered, aborting"
  exit 1
else if ! ping -c3 backups.kgugeler.ca
  notify-send "Automatic Backups" "No network connection to backup server"
  exit 2
else if ! bkp
  notify-send -u critical -t 0 "Automatic Backups" "Backup failed!"
  exit 3
else
  notify-send -u low "Automatic Backups" "Backup succeeded"
end
