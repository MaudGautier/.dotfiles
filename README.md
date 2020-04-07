# dotfiles

## Installation

Clone repository and move to `~/.dotfiles`
```
git clone git@github.com:MaudGautier/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Homebrew
Install packages with Homebrew
```
sh ./brew.sh
```

### Oh my Zsh
Install oh-my-zsh if not already present with 
```
if [ ! -d ./oh-my-zsh/ ]; then
	git clone https://github.com/ohmyzsh/ohmyzsh.git
	# OR
	# git clone http://github.com/robbyrussell/oh-my-zsh.git
fi
```

Alternative for the installation of oh-my-zsh:
Instructions from the `ohmyzsh` github (https://github.com/ohmyzsh/ohmyzsh)[https://github.com/ohmyzsh/ohmyzsh]:

* Download the `install.sh` file: `wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh`
* Run the command line to install it in a custom directory: `ZSH="$HOME/.dotfiles/oh-my-zsh" sh install.sh`


### Symlinks
Symlink unversioned files to this repo
```
sh ./symlinks.sh
```

WARNING: the variable `configfiles` in `./symlinks.sh` must be modified manually to select specific custom file(s) of aliases to link from the `./custom/` folder.

