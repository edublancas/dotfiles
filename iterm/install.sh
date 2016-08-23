cd ~/dev/misc
git clone https://github.com/jaredculp/iterm2-borderless-padding
bash iterm2-borderless-padding/install.sh 25 25
rm -rf /Applications/iTerm2.app/
mv iTerm2/build/Development/iTerm2.app/ /Applications/iTerm2.app/