cd ~/dev/misc
git clone https://github.com/jaredculp/iterm2-borderless-padding
cd iterm2-borderless-padding
bash install.sh 25 25
rm -rf /Applications/iTerm.app/
mv iTerm2/build/Development/iTerm2.app/ /Applications/iTerm.app/
