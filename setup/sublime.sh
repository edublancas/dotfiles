# https://packagecontrol.io/docs/syncing#dropbox-osx
echo 'Sycing ST3 settings with Dropbox...'
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -rf User
ln -s ~/Dropbox/app\ settings/sublime/User