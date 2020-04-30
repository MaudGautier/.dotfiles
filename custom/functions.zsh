
# Pandoc
pd () { pandoc "$@" -s -o "${@/.md/.pdf}" }
pdo () { pandoc "$@" -s -o "${@/.md/.pdf}" ; open "${@/.md/.pdf}" }
pdt () { pandoc "$@" -s -o "${@/.txt/.pdf}" }
pdto () { pandoc "$@" -s -o "${@/.txt/.pdf}" ; open "${@/.txt/.pdf}" }

# Display first 5 lines with column -t output
hc () {
	if [ "$1" != "" ]
	then head -n5 "$1" | column -t
	else head -n5 | column -t
	fi
}

# Sort body of file
body() {
	IFS= read -r header
	printf '%s\n' "$header"
	"$@"
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Simple calculator
function calc() {
	local result="";
	result="$(printf "scale=10;$*\n" | bc --mathlib | tr -d '\\\n')";
	#                       └─ default (when `--mathlib` is used) is 20
	#
	if [[ "$result" == *.* ]]; then
		# improve the output for decimal numbers
		printf "$result" |
		sed -e 's/^\./0./'        `# add "0" for cases like ".5"` \
		    -e 's/^-\./-0./'      `# add "0" for cases like "-.5"`\
		    -e 's/0*$//;s/\.$//';  # remove trailing zeros
	else
		printf "$result";
	fi;
	printf "\n";
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

# Compare original and gzipped file size
function gz() {
	local origsize=$(wc -c < "$1");
	local gzipsize=$(gzip -c "$1" | wc -c);
	local ratio=$(echo "$gzipsize * 100 / $origsize" | bc -l);
	printf "orig: %d bytes\n" "$origsize";
	printf "gzip: %d bytes (%2.2f%%)\n" "$gzipsize" "$ratio";
}

# Git alias
function acp() {
  git add .
  git commit -m "$1"
  git push
}

# `v` with no arguments opens the current directory in Vim, otherwise opens the
# given location
function v() {
	if [ $# -eq 0 ]; then
		vim .;
	else
		vim "$@";
	fi;
}

# `o` with no arguments opens the current directory, otherwise opens the given
# location
function o() {
	if [ $# -eq 0 ]; then
		open .;
	else
		open "$@";
	fi;
}

# Get line count with coma-separated
# ATTENTION: SUR MAC OS, il y a des espaces avant la sortie de wc -l => penser à rajouter un pipe "column" avant de lire l'info
wl () {
	# The function can be used alone with a parameter or within a piped command.
	# It is not very good with several files, better use 'wc -l'.
	if [[ $# -eq 0 ]]; then #Function called with a file as parameter
		if [ "$(uname)" = "Darwin" ] ; then
			nb=$(wc -l | c)
		else
			nb=$(wc -l)
		fi
	elif [[ $# -eq 1 ]]; then #Function called within a piped command
		if [ "$(uname)" = "Darwin" ] ; then
			nb=$(wc -l $1 | c | tr -s ' '| cut -f1 -d' ')
		else
			nb=$(wc -l $1 |cut -f1 -d' ')
		fi
	else #Function called with a list of file (not perfect)
		if [ "$(uname)" = "Darwin" ] ; then
			wc -l $* 
		else                
			echo $(wc -l $*) | sed 's/\([0-9]* [^ ]*\) \([0-9]* [^ ]*\)/\1\n\2/g' | sed 's/\([0-9]* [^ ]*\) \([0-9]* [^ ]*\)/\1\n\2/g'
		fi
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
			echo $new $(wc -l $1 | c | tr -s ' ' | cut -f2 -d' ')
		fi
	}

# Separate number by thousands
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

# Read comma-separated file as tab-separated
comma() {
	sed -e "s/,/\\t/g" "$@" | c
}

