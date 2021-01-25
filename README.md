# dotfiles

## Installation

Clone repository and move to `~/.dotfiles`
```
git clone https://github.com/MaudGautier/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Homebrew
Install packages with Homebrew
```
sh ./brew.sh
```

### Oh my Zsh

#### Alternative 1 (git clone)

Install oh-my-zsh if not already present
```
if [ ! -d ./oh-my-zsh/ ]; then
	git clone https://github.com/ohmyzsh/ohmyzsh.git
	# OR
	# git clone http://github.com/robbyrussell/oh-my-zsh.git
fi
```

#### Alternative 2 (instructions from (the `ohmyzsh` github)[https://github.com/ohmyzsh/ohmyzsh])

* Download the `install.sh` file: `wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh`
* Run the command line to install it in a custom directory: `ZSH="$HOME/.dotfiles/oh-my-zsh" sh install.sh`


### Symlinks
Symlink unversioned files to this repo
```
sh ./symlinks.sh
```

WARNING: the variable `configfiles` in `./symlinks.sh` must be modified manually to select specific custom file(s) of aliases to link from the `./custom/` folder.

