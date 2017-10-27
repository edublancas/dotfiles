#!/usr/bin/env bash

# Setup a new macOS comptuter by installing essential software

# command line tools
brew install bash
brew install zsh
brew install git
brew install autojump
brew install tree
brew install tldr

# htop
brew install htop
chmod 6555 /usr/local/bin/htop
sudo chown root /usr/local/bin/htop

# apps
brew cask install 1password
brew cask install sublime-text
brew cask install alfred
brew cask install spotify
brew cask install slack
brew cask install vlc
brew cask install whatsapp
brew cask install dropbox
brew cask install skype
brew cask install google-chrome
brew cask install transmission
brew cask install bartender
brew cask install cleanmymac
brew cask install istat-menus
brew cask install little-snitch
brew cask install caffeine
brew cask install basictex

# joe
# https://github.com/karan/joe
git clone https://github.com/karan/joe
chmod +x joe/tool.sh
./joe/tool.sh build
rm -rf joe/
joe u

# md editor: typora
# joe
# oh-my-zsh

# Quicklook plugins
# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install qlimagesize
