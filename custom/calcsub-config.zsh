# Calcsub - PBS system
## Aliases
# alias crak='qdel -u mgautie3'
alias qs='qstat -n1'
alias qsg='qstat -n1 -u mgautie3'
alias qi='qsub -I'
alias qid='qsub -I -l walltime=24:00:00'
alias qdi='qid'

alias crakall='qselect -u mgautie3 | xargs qdel'
alias crakl='crakall'

alias qq='qstat -Q'
# alias quota='pan_quota /pandata/gautier ; pan_quota /panhome/gautier'
# alias quota='pan_quota /pandata/gautier ; /usr/sbin/beegfs-ctl --getquota --uid gautier'
# alias cchck='qs | grep -e "R q1month" -e "Q q1month" | wc -l; qs | grep -e "R q1week" -e "Q q1week" | wc -l ; qs | grep -e "R q1day" -e "Q q1day" | wc -l ; qs | grep -e "R q1hour" -e "Q q1hour" | wc -l' # Cluster check
alias mck='echo "R: "`qstat -n1 -u mgautie3 | cut -c103,104 | grep R | wl`; echo "Q: "`qstat -n1 -u mgautie3 | cut -c103,104 | grep Q | wl`; echo "H: "`qstat -n1 -u mgautie3 | cut -c103,104 | grep H | wl`'
# alias ssub="qsg | grep -e R -e Q -e H | grep q1 | wc -l" # sum submissions
# alias qwho="qs | cut -b45-55,72-|sed '1,1d'|sed '1,1d'|sort|uniq -c|sort -gr"

## Functions
### Submit with given memory
qm () { qsub -I -l mem="$@" }

### Delete specific numbers
crak () {
	numbers="$@"
	nb1=`echo ${numbers%:*}`
	nb2=`echo ${numbers##*:}`
	for i in {$nb1..$nb2} ; do qdel ${i}.torque6.curie.fr ; done
}

### Get info about job
qf () { 
	qstat -f "$@" | grep submit_args
}
qjob () {
	qstat -f "$@" | grep Job_Name
	qstat -f "$@" | \
		grep -A 1 -e Error_Path -e Output_Path -e submit_args | \
		paste - - - | cut -f1-3 | sed 's/\t//g' | \
		grep -e Error_Path -e Output_Path -e submit_args
}

### KDI aliases
alias kd='/data/kdi_prod/bin/kdi_analyse' 
alias kc='kd create'
alias kcsub='kd create-sub'


### PATH completion
# Add bedtools
export PATH="/bioinfo/local/build/Centos/bedtools/bedtools-2.27.1/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/data/users/mgautie3/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/data/users/mgautie3/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/data/users/mgautie3/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/data/users/mgautie3/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Add JVARKIT
export JVARKIT=~/bin/jvarkit
export JVARKIT_DIST=$JVARKIT/dist


