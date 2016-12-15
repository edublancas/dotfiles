# Sync ST3 reference files with settings/files
GIT_FOLDER="$DOTS/settings/files"
ST_PREFERENCES="$HOME/Library/Application Support/Sublime Text 3/Packages/User"

function setup_files {
    cd "$ST_PREFERENCES"
    for file in *.sublime-settings
    do
        # echo $file
        cp -vr "$ST_PREFERENCES/$file" "$GIT_FOLDER/$file"
    done
}

function sync_files {
    cd "$GIT_FOLDER"
    for file in *.sublime-settings
    do
        # echo $file
        ln -sf "$GIT_FOLDER/$file" "$ST_PREFERENCES/$file"
    done
}

function confirm {
    read confirmation
    if  [[ $confirmation != "yes" ]]; then
        exit
    fi
}

if  [[ $1 = "setup" ]]; then
    echo "Are you sure you want to copy to Git? This will override the contents (yes/no)"
    confirm
    echo "Copying your preference files to Git"
    setup_files
    echo 'Done'
elif [[ $1 = "sync" ]]; then
    echo "Are you sure you want to sync? This will override your settings (yes/no): "
    confirm
    echo "Copying your preferences files from Git"
    sync_files
    echo 'Done. Log out for the changes to take effect'
else
    echo 'Invalid option'
fi