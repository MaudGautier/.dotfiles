# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="maud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set vim as default text editor
export EDITOR='vim'


#### CUSTOM ####

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* *;
	fi;
}

# `s` with no arguments opens the current directory in Sublime Text, otherwise
# opens the given location
function s() {
	if [ $# -eq 0 ]; then
		subl .;
	else
		subl "$@";
	fi;
}

# `a` with no arguments opens the current directory in Atom Editor, otherwise
# opens the given location
function a() {
	if [ $# -eq 0 ]; then
		atom .;
	else
		atom "$@";
	fi;
}

alias rm='rm -i'
alias cp='cp -i'
alias h='head -5'
alias dirsize="du -h -d 1"
alias c='column -t'
#alias hc='head -n5 | column -t'
#hcf () {
#	head -n5 "$1" | column -t
#}
hc () {
	if [ "$1" != "" ]
	then head -n5 "$1" | column -t
	else head -n5 | column -t
	fi
}
# alias wl='wc -l'

# ALIASES CLUSTER
alias crak='qdel -u gautier'
alias qs='qstat'
alias qsg='qstat -u gautier'
alias qi='qsub -I'
qm () { qsub -I -l mem="$@" }

# ALIAS PANDOC
pd () { pandoc "$@" -s -o "${@/.md/.pdf}" }
pdo () { pandoc "$@" -s -o "${@/.md/.pdf}" ; open "${@/.md/.pdf}" }
pdt () { pandoc "$@" -s -o "${@/.txt/.pdf}" }
pdto () { pandoc "$@" -s -o "${@/.txt/.pdf}" ; open "${@/.txt/.pdf}" }


# alias crm="condor_rm"
# alias crak="condor_rm mgautier"
# alias cq="condor_q"
# alias cqk='condor_q mgautier'
# alias cqg="condor_q -g"
# alias cqr="condor_q -r"
# alias cqgr="condor_q -g -r"
# alias cqba="condor_q -g -better-analyze"
# alias cs="condor_status"
# alias csa="echo -e '------------------------------------------------------------------\nName       || Cpus  | Avail | Util% || Memory   | Avail  | Util% |\n------------------------------------------------------------------'; condor_status -constraint 'PartitionableSlot =?= TRUE' -format '%15s ||' Name -format '%6d |' TotalSlotCpus -format '%6d |' Cpus -format '%5d%% ||' '((TotalSlotCpus - Cpus) / (TotalSlotCpus * 1.0)) * 100' -format '%8dG |' '(TotalSlotMemory / 1024)' -format '%6dG |' '(Memory / 1024)' -format '%5d%% |' '((TotalSlotMemory - Memory) / (TotalSlotMemory * 1.0)) * 100' -format '\n' TRUE | sed 's/slot1@\([^.]*\).bioclust.biologie.ens.fr/\1/g'; echo '------------------------------------------------------------------';"
# alias css="condor_status -submitters"
# alias cup="condor_userprio"
# alias cupa="condor_userprio -allusers"
# alias ch="condor_history"
# alias cq_loop="watch -n 1 condor_q"
# alias niceCI="condor_submit -i /kingdoms/a2e/workspace2/mgautier/Condor/niceUser.sub"


# ATTENTION: SUR MAC OS, il y a des espaces avant la sortie de wc -l => penser à rajouter un pipe "column" avant de lire l'info
wl () {
        # The function can be used alone with a parameter or within a piped command.
        # It is not very good with several files, better use 'wc -l'.
        if [[ $# -eq 0 ]]; then #Function called with a file as parameter
                nb=$(wc -l | c)
        elif [[ $# -eq 1 ]]; then #Function called within a piped command
                nb=$(wc -l $1 | c|cut -f1 -d' ')
        else #Function called with a list of file (not perfect)
                echo $(wc -l $*) | sed 's/\([0-9]* [^ ]*\) \([0-9]* [^ ]*\)/\1\n\2/g' | sed 's/\([0-9]* [^ ]*\) \([0-9]* [^ ]*\)/\1\n\2/g'
                return 0
        fi

        # Adding thousand separators within the line count number
        new=''
        for ((i=${#nb};i>0;i-=3)) do
				if [[ $i -le 3 ]]; then #When there is still 3 figures or less
						new=${nb:0:$i}$new
				else
						new=','${nb:$(($i-3)):3}$new
				fi
        done

        # Printing the results
        if [[ $# -eq 0 ]]; then
                echo $new
        else
                echo $new $(wc -l $1 | cut -f2 -d' ')
        fi
}
sep () {

		if [[ $# -eq 0 ]]; then #Function called within a piped command
				nb=$(cat)
		elif [[ $# -eq 1 ]]; then #Function called with a number as parameter
				nb=$(echo $1)
		else
				return 0
		fi

		# Adding thousand separators within the line count number
		new=''
		for ((i=${#nb};i>0;i-=3)) do
				if [[ $i -le 3 ]]; then #When there is still 3 figures or less
						new=${nb:0:$i}$new
				else
						new=','${nb:$(($i-3)):3}$new
				fi
		done

		# Printing the results
		echo $new
}

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
# shopt -s histappend

alias pbil='ssh gautier@pbil-deb'
alias upb='ssh gautier@pbil-gates.univ-lyon1.fr'
alias mkmount='bash /Users/maudgautier/Documents/These/Local_Scripts/make_mountpoints.bash'
alias unm='bash /Users/maudgautier/Documents/These/Local_Scripts/unmount_mountpoints.bash'

export PATH=$PATH:/Applications/bedtools2/bin

# cd /Users/maudgautier/Documents/These


# Pour SRA-toolkit (https://github.com/ncbi/sra-tools/wiki/Building-and-Installing-from-Source)
# export LD_LIBRARY_PATH=/usr/local/ngs/ngs-sdk/lib64:$LD_LIBRARY_PATH
# export NGS_LIBDIR=/usr/local/ngs/ngs-sdk/lib64
# export CLASSPATH=/usr/local/ngs/ngs-java/jar/ngs-java.jar:$CLASSPATH
#
#command Num setnumber
#command Num "set nonumber


# Additional alias git
alias glag='git log --all --graph'

# Latex compile # OBSOLETE
# alias lbo='latex main.tex ; bibtex main.aux ; latex main.tex ; pdflatex main.tex ; pdflatex main.tex ; open main.pdf'
# alias lb='latex main.tex ; bibtex main.aux ; latex main.tex ; pdflatex main.tex ; pdflatex main.tex'

# Latex compile

alias lbo='pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex ; open main.pdf'
alias lb='pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex'

export PATH="/usr/local/opt/llvm/bin:$PATH"
