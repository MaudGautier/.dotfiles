#!/bin/sh
#
# Installs dependencies needed using Homebrew.


# Check for Homebrew
if test ! $(which brew)
then
  echo "  Please install Homebrew before running this script."
  echo "  Homebrew can be installed following instructions from https://brew.sh/"
  exit
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


FORMULAS=(
R
diff-pdf
git
java
python3
tree
vim
wget
zsh
)

CASKS=(
1password
Rstudio
alfred
brave-browser
go2shell
iterm2
torbrowser
vlc
xquartz
zotero
)


brew install ${FORMULAS[@]}

brew cask install --appdir="/Applications" ${CASKS[@]}

brew cleanup

brew cask cleanup


