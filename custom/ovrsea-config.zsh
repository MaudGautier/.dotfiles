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
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
export PATH=$NVM_DIR/versions/node/v14.16.0/bin:$PATH

# Custom aliases
alias devdb='ssh -N -i "~/.ssh/bastion-dev.pem" -L 6543:station-db-development.cgm31kq1agcx.eu-west-1.rds.amazonaws.com:6543 ec2-user@ec2-54-78-84-122.eu-west-1.compute.amazonaws.com'
alias sshdevdb='devdb'
alias proddb='ssh -N -i "bastion-prod.pem" -L 6543:db-prod-cluster.cgm31kq1agcx.eu-west-1.rds.amazonaws.com:6543 ec2-user@ec2-3-248-239-240.eu-west-1.compute.amazonaws.com'
alias sshproddb='proddb'

