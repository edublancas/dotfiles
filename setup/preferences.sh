# Sync preference files
DROPBOX="$HOME/Dropbox/app settings"
PREFERENCES="$HOME/Library/Preferences"

DIVVY="com.mizage.Divvy.plist"
# Import settings
# Alfred


if  [[ $1 = "setup" ]]; then
    echo "Copying your preference files to Dropbox"
    cp "$PREFERENCES/$DIVVY" $DROPBOX
elif [[ $1 = "sync" ]]; then
    echo "Are you sure you want to sync? This will override your settings (yes/no): "
    read confirmation
    if  [[ $confirmation != "yes" ]]; then
        exit
    fi
    echo "Copying your preference files from Dropbox"
    cd $PREFERENCES
    rm $DIVVY
    ln -s "$DROPBOX/$DIVVY"
    echo 'Done. Log out for the changes to take effect'
else
    echo 'Invalid option'
fi