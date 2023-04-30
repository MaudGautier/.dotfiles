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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Custom aliases
alias devdb='ssh -N -i "~/.ssh/bastion-dev.pem" -L 6543:station-db-development.cgm31kq1agcx.eu-west-1.rds.amazonaws.com:6543 ec2-user@ec2-54-78-84-122.eu-west-1.compute.amazonaws.com'
alias sshdevdb='devdb'
# OLD
#alias proddb='ssh -N -i "~/.ssh/bastion-prod.pem" -L 6543:db-prod-cluster.cgm31kq1agcx.eu-west-1.rds.amazonaws.com:6543 ec2-user@ec2-3-248-239-240.eu-west-1.compute.amazonaws.com'
# NEW
alias proddb='ssh -N -i "~/.ssh/bastion-prod-2.pem" -L 6543:db-prod-cluster.cgm31kq1agcx.eu-west-1.rds.amazonaws.com:6543 ec2-3-252-252-202.eu-west-1.compute.amazonaws.com'
alias sshproddb='proddb'

# Custom pnpm commands
alias p='pnpm'
alias pi='pnpm install'
alias pii='pnpm install; pnpm run setup'
alias pgt='pnpm generate:types'
alias pdump='pnpm -F @ovrsea/federation dumps:download'
alias pdb='pnpm -F @ovrsea/federation db:restore'
alias pfed='pnpm -F @ovrsea/federation start'
alias patlas='pnpm -F @ovrsea/atlas start'
alias phermes='pnpm -F @ovrsea/hermes start'
alias plocalstack='pnpm -F @ovrsea/federation localstack:start'
alias dp='docker system prune --volumes -f'
alias pa='patlas'
alias ph='phermes'
alias pf='pfed'
alias pls='plocalstack'
#psdr = p start dump restore
#psr= p start restore
#pstrt=p start # pstr

alias mig='(z core && p db:migrate) & (z kronos && p db:migrate) & (z shipment-orchestration && p db:migrate) & (z account-networking && p db:migrate) & wait'

# Customs paths
export PATH="$HOME/.poetry/bin:$PATH"
export PNPM_HOME="/Users/maudgautier/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

