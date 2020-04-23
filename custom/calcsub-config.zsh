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
alias mck='echo "R: "`qstat -n1 -u mgautie3 | cut -c103,104 | grep R | wl`; echo "Q: "`qstat -n1 -u mgautie3 | cut -c103,104 | grep C | wl`; echo "H: "`qstat -n1 -u mgautie3 | cut -c103,104 | grep H | wl`'
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
	qstat -f "$@" | grep -e Error_Path -e Output_Path -e submit_args
}

### KDI aliases
alias kdi='/data/kdi_prod/bin/kdi_analyse' 
alias kc='kdi create'

