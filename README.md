# dotfiles

* run `bin/dot-update` often to update software
* files with `*.symlink` extension will be symlinked in `$HOME`
* `*.sh` files are executed when running `install`

## Folders

* bash/ - Scripts to setup bash profile
* bin/ - Executables
* settings/ - Syncing app settings
* setup/ - Scripts for setting up a new computer
* shell/ - Shell stuff (bash and zsh), bash/ and zsh/ read from there to setup the profile
* zsh/ - Scripts to setup zsh profile

## Requirements

* Ruby (to install homebrew)
* Python + pyyaml (to run some scripts)

## Setting up a new computer

```bash
# create a dev folder
mkdir $HOME/dev
mkdir $HOME/dev/misc
cd $HOME/dev

# clone dotfiles
git clone https://github.com/edublancas/dotfiles

# run install script
cd dotfiles/setup
./install
```


Based on [holman dotfiles](https://github.com/holman/dotfiles)