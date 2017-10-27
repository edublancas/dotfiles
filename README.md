# dotfiles

* bash/ - Scripts to setup bash profile
* bin/ - Executables
* settings/ - Syncing app settings
* setup/ - Scripts for setting up a new computer
* shell/ - Shell stuff (bash and zsh), bash/ and zsh/ read from there to setup the profile
* zsh/ - Scripts to setup zsh profile
* *.symlink - Other dotfiles, symlinks will be created to the $HOME folder

## Remarks

* All sh files are executed when running `install`

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

Based on https://github.com/holman/dotfiles