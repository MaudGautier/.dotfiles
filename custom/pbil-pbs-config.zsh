# PBS system (LBBE 1)
## Aliases
alias crak='qdel -u gautier'
alias qs='qstat'
alias qsg='qstat -u gautier'
alias qi='qsub -I'

# alias quota='pan_quota /pandata/gautier ; pan_quota /panhome/gautier'
alias quota='pan_quota /pandata/gautier ; /usr/sbin/beegfs-ctl --getquota --uid gautier'
alias cchck='qs | grep -e "R q1month" -e "Q q1month" | wc -l; qs | grep -e "R q1week" -e "Q q1week" | wc -l ; qs | grep -e "R q1day" -e "Q q1day" | wc -l ; qs | grep -e "R q1hour" -e "Q q1hour" | wc -l' # Cluster check
alias mck='qstat -u gautier | grep R | grep q1 | wc -l ; qstat -u gautier | grep Q | grep q1 | wc -l' # My check
alias mckh="qsg | grep R | grep q1 | wc -l ; qsg | grep Q | grep q1 | wc -l ; qsg | grep H | grep q1 | wc -l" # My check with H
alias ssub="qsg | grep -e R -e Q -e H | grep q1 | wc -l" # sum submissions
alias qwho="qs | cut -b45-55,72-|sed '1,1d'|sed '1,1d'|sort|uniq -c|sort -gr"

## Functions
### Submit with given memory
qm () { qsub -I -l mem="$@" }

