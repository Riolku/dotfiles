function bkp --description "Perform a backup"
    bw sync
    and bw export --format encrypted_json --output ~/Backups/bitwarden_encrypted_export.json
    and ~/.restic/backup.fish $argv
end
