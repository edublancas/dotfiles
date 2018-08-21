# dotfiles

* run `update` often to update software
* files with `*.symlink` extension will be symlinked in `$HOME`
* `install.sh` files are executed when running `install`

## Requirements

* Ruby (to install homebrew)

## Setting up a new computer

```bash
# create a dev folder
mkdir $HOME/dev
cd $HOME/dev

# clone dotfiles
git clone https://github.com/edublancas/dotfiles

# run install script - this installs some packages from brew and miniconda
# along with some python packages in the root environment
cd dotfiles/setup

# requires pythn 3
./make_symlinks
```

## Syncing

Once you ran `install`, there are some scripts to sync settings:

* `make_symlinks` creates symlinks from `*.symlink` files to `$HOME`
* `sync_settings` symlinks `*.plist` app settings from a a specified folder to `~/Library/Preferences`
* `sync_cloud` symlinks between folders specified in `cloud.yaml` (I use it to sync some other settings by storing them in a tresorit folder)

Based on [holman dotfiles](https://github.com/holman/dotfiles)