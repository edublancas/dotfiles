GIT_FOLDER="$DOTS/settings/teamocil"
LOCATION="$HOME/.teamocil"

function confirm {
    read confirmation
    if  [[ $confirmation != "yes" ]]; then
        exit
    fi
}

if [[ $1 = "sync" ]]; then
    echo "Are you sure you want to sync? This will override your settings (yes/no): "
    confirm
    echo "Copying your preferences files from Git"
    ln -sF $GIT_FOLDER $LOCATION
    echo 'Done'
else
    echo 'Invalid option'
fi
