#!/usr/bin/env bash

brew install bash
brew install zsh
brew install git
brew install autojump
brew install tree
brew install tldr
brew install vim
brew install direnv

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

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"