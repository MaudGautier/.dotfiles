# Custom aliases
alias setup='cd ~/Documents/ovs; source setup_local_env.sh; cd backend/app; source /Users/maud-ondorse/Library/Caches/pypoetry/virtualenvs/app-mtOeN1wO-py3.11/bin/activate'


# alias mig='(z core && p db:migrate) & (z kronos && p db:migrate) & (z shipment-orchestration && p db:migrate) & (z account-networking && p db:migrate) & wait'


# Custom paths
# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Poetry
export PATH="/Users/maud-ondorse/.local/bin:$PATH"

# Access tsc
export PATH="/Users/maud-ondorse/.npm-global:$PATH"

