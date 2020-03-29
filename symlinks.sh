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

## Custom alias and function files for zsh
ln -s ~/.dotfiles/custom/alias.zsh ~/.dotfiles/oh-my-zsh/custom/
ln -s ~/.dotfiles/custom/functions.zsh ~/.dotfiles/oh-my-zsh/custom/

## Cluster specific aliases
## WARNING: Choose the right file
configfiles=(
	# ens-condor-config.zsh
	# mac-to-pbil-config.zsh
	# pbil-config.zsh
	# pbil-pbs-config.zsh
	)
for config in ${configfiles[@]} ; do
	ln -s ~/.dotfiles/custom/$config ~/.dotfiles/oh-my-zsh/custom/
done

## Vim
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc

