# Sync preference files with Dropbox
DROPBOX="$HOME/Dropbox/app settings"
PREFERENCES="$HOME/Library/Preferences"

function setup_files {
    for file in $( cat config_files.txt ); do
        cp -vr "$PREFERENCES/$file" "$DROPBOX/$file"
    done
}

function sync_files {
    for file in $( cat config_files.txt ); do
        ln -sf "$DROPBOX/$file" $PREFERENCES/$file
    done
}

function confirm {
    read confirmation
    if  [[ $confirmation != "yes" ]]; then
        exit
    fi
}

if  [[ $1 = "setup" ]]; then
    echo "Are you sure you want to copy to Dropbox? This will override the contents (yes/no)"
    confirm
    echo "Copying your preference files to Dropbox"
    setup_files
    echo 'Done'
elif [[ $1 = "sync" ]]; then
    echo "Are you sure you want to sync? This will override your settings (yes/no): "
    confirm
    echo "Copying your preferences files from Dropbox"
    sync_files
    echo 'Done. Log out for the changes to take effect'
else
    echo 'Invalid option'
fi