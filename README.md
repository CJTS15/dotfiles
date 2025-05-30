# My dotfiles

This directory contains the dotfiles for my Linux Mint

## Requirements

Ensure you have the following installed on your system

### Git

```
sudo apt install git
```

### Stow

```
sudo apt install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com/CJTS15/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```

## Add New Folder

To add new folder to stow, create a new folder and copy the source folder to the new folder directory.

```
cd dotfiles
mkdir new_folder
mv source_folder/source_file new_folder/
cd dotfiles
stow new_folder
```
