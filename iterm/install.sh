cd $ITERM_SOURCE
make
rm -rf /Applications/iTerm2.app/
mv iTerm2/build/Development/iTerm2.app/ /Applications/iTerm2.app/