#!/usr/bin/env bash

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


# joe
# https://github.com/karan/joe
git clone https://github.com/karan/joe
chmod +x joe/tool.sh
./joe/tool.sh build
rm -rf joe/
joe u

# TODO: oh-my-zsh