#!/usr/bin/env bash

if [ "$(uname -s)" == "Darwin" ]
then
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

    # Quicklook plugins
    # https://github.com/sindresorhus/quick-look-plugins
    brew cask install qlcolorcode
    brew cask install qlstephen
    brew cask install qlmarkdown
    brew cask install quicklook-json
    brew cask install quicklook-csv
    brew cask install betterzipql
    brew cask install qlimagesize

    brew tap caskroom/fonts
    brew install font-hack
fi