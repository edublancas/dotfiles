# Sync preference files
DROPBOX="$HOME/Dropbox/app settings"
PREFERENCES="~/Library/Preferences"

DIVVY="com.mizage.Divvy.plist"

# Create symlinks from preferences to dropbox
cd "$DROPBOX"
ln -s "$PREFERENCES/$DIVVY"

# Create symlinks from dropbox to preferences
cd $PREFERENCES
ln -s "$DROPBOX/$DIVVY"