1. Installation google chrome
2. Installation Alfred (https://www.alfredapp.com/)
3. Installation iTerm2 (https://iterm2.com/)
4. Installation Zoom (https://zoom.us/download)
5. Installation slack + connexion à slack
6. Installation webstorm (https://www.jetbrains.com/fr-fr/webstorm/download/#section=mac)
7. Installation Datagrip (https://www.jetbrains.com/fr-fr/datagrip/download/#section=mac) + licence
8. Installation 1password (https://1password.com/downloads/mac/)
9. Extension 1password sur google chrome (https://support.1password.com/cs/getting-started-browser/)
10. Installation brew (https://brew.sh/index_fr)
11. Installation docker (https://docs.docker.com/desktop/mac/install/)
12. Renommage ordi:
  scutil --get LocalHostName
  scutil --get HostName
  scutil --get LocalHostName
  -> --set
          --> HostName: maud-ovrsea
          --> LocalHostName: MacBook-Pro-de-Maud
          --> ComputerName: MacBook Pro de Maud
13. Install nvm following instructions (https://github.com/nvm-sh/nvm)
13bis. Install correct node version with nvm (nvm install 16 => node -v)
14. Install pnpm (brew install pnpm)
15. Install postgres (brew install postgres)
16. Install awscli (brew install awscli)
17. Configure databases
18. git clone themis
19. Install themis (pnpm install...)

NB/ pnpm: need to install 6.32 => brew install pnpm@6.32

NB/ nvm: need to use v16 => nvm list => nvm alias default 16.15.1

NB/ Homebrew: instructions to add /opt/homebrew/bin to PATH:
Warning: /opt/homebrew/bin is not in your PATH.
  Instructions on how to configure your shell for Homebrew
  can be found in the 'Next steps' section below.
==> Installation successful!

==> Homebrew has enabled anonymous aggregate formulae and cask analytics.
Read the analytics documentation (and how to opt-out) here:
  https://docs.brew.sh/Analytics
No analytics data has been sent yet (nor will any be during this install run).

==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations

==> Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/maudgautier/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

=> in /Users/maudgautier/.zprofile




NB/ git submodule init: 
Submodule 'custom/omz-plugins/zsh-autosuggestions' (https://github.com/zsh-users/zsh-autosuggestions.git) registered for path 'custom/omz-plugins/zsh-autosuggestions'
Submodule 'vim/bundle/auto-pairs' (https://github.com/jiangmiao/auto-pairs.git) registered for path 'vim/bundle/auto-pairs'
Submodule 'vim/bundle/nerdcommenter' (https://github.com/scrooloose/nerdcommenter.git) registered for path 'vim/bundle/nerdcommenter'
Submodule 'vim/bundle/nerdtree' (https://github.com/scrooloose/nerdtree.git) registered for path 'vim/bundle/nerdtree'
Submodule 'vim/bundle/syntastic' (https://github.com/vim-syntastic/syntastic.git) registered for path 'vim/bundle/syntastic'
Submodule 'vim/bundle/vim-airline' (https://github.com/vim-airline/vim-airline.git) registered for path 'vim/bundle/vim-airline'
Submodule 'vim/bundle/vim-jsx-pretty' (https://github.com/maxmellon/vim-jsx-pretty.git) registered for path 'vim/bundle/vim-jsx-pretty'
Submodule 'vim/pathogen' (https://github.com/tpope/vim-pathogen.git) registered for path 'vim/pathogen'

NB/ git submodule update:
Cloning into '/Users/maudgautier/.dotfiles/custom/omz-plugins/zsh-autosuggestions'...
Cloning into '/Users/maudgautier/.dotfiles/vim/bundle/auto-pairs'...
Cloning into '/Users/maudgautier/.dotfiles/vim/bundle/nerdcommenter'...
Cloning into '/Users/maudgautier/.dotfiles/vim/bundle/nerdtree'...
Cloning into '/Users/maudgautier/.dotfiles/vim/bundle/syntastic'...
Cloning into '/Users/maudgautier/.dotfiles/vim/bundle/vim-airline'...
Cloning into '/Users/maudgautier/.dotfiles/vim/bundle/vim-jsx-pretty'...
Cloning into '/Users/maudgautier/.dotfiles/vim/pathogen'...
Submodule path 'custom/omz-plugins/zsh-autosuggestions': checked out 'ae315ded4dba10685dbbafbfa2ff3c1aefeb490d'
Submodule path 'vim/bundle/auto-pairs': checked out '39f06b873a8449af8ff6a3eee716d3da14d63a76'
Submodule path 'vim/bundle/nerdcommenter': checked out '16ecc429ec2792ba5c972f0a920dc14223b7bd4a'
Submodule path 'vim/bundle/nerdtree': checked out 'a1fa4a33bf16b6661e502080fc97788bb98afd35'
Submodule path 'vim/bundle/syntastic': checked out 'd97a664b9adbd1a0a9cba6c1c3baf071a1059d1e'
Submodule path 'vim/bundle/vim-airline': checked out 'cb1bc19064d3762e4e08103afb37a246b797d902'
Submodule path 'vim/bundle/vim-jsx-pretty': checked out '6989f1663cc03d7da72b5ef1c03f87e6ddb70b41'
Submodule path 'vim/pathogen': checked out 'e0a3efbda5ea8e5b181b2b232ef6453c05d07732'



NB/ pour que `pnpm install` fonctionne sur themis => eu besoin de: 
brew install:
## probablement inutiles:
autoconf
automake
libpng
pngquant
## utile:
 brew install pkg-config


NB/20. Install Postman
NB/21. Ajout favoris sur google chrome
NB/22. Ajout extensions chrome (1password, dashlane, adblock, altair, apollo tracing, graphql devtools, react developer tools, pocket, the great suspender)
NB/ Correct version of pnpm: curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm@latest-6

NB/23. Setup du repo metis (follow instructions from https://docs.ovrsea.com/01-setup/02-data-env-setup - neat)
NB/24. Add plugins to webstorm: GraphQL, GitToolBox, .env files support, Conventional Commit)

NB/25. Pb avec rover lors de la génération des types => solution1. lancer avec Rosetta (puis quand les types générés une fois => revenir sans Rosetta et ça fonctionne) OU solution2. (je sais pas si ça fonctionnait parce que Rosetta entre temps): ```curl -sSL https://rover.apollo.dev/nix/v0.4.0 | sh``` (cf issue: https://github.com/apollographql/rover/issues/916)

