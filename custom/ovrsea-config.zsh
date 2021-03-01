# Trouble between M1 and rosetta and yarn
# To be solved, requires nvm installation of nodeJS as follows:
# 1. Install Rosetta:
# softwareupdate --install-rosetta
#
# 2. Iterm2: in /Applications/, right click --> getInfo --> tick "always open with rosetta"
# 
# 3. Reinstall brew (not sure it is absolutely required):
# arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# arch -arm64 brew install nvm
#
# 4. Install node v15 with nvm
# mkdir ~/.nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
# nvm install v15
#
# 5. yarn install should now work in themis
# z themis
# yarn install


# So that the right version of ndoeJS (that installed by nvm) is used when I reopen a new terminal, I add in my .zshrc:
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"

