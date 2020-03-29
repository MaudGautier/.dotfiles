#!/bin/bash
############################
# ./symlinks.sh
# Creates symlinks manually for zsh and vim to files in ~/.dotfiles
############################

# Symbolic links

## Zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/zshenv ~/.zshenv

## Oh my zsh
ln -s ~/.dotfiles/misc/maud.zsh-theme ~/.dotfiles/oh-my-zsh/custom/themes/maud.zsh-theme

## Vim
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc

