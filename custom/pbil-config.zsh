# Java
jdk8 () {
	export JAVAHOME=/usr/remote/jdk1.8.0_112
	export PATH=/usr/remote/jdk1.8.0_112/bin:$PATH
}
jdk7 () {
	export JAVAHOME=/usr/remote/jdk1.7.0_75
	export PATH=/usr/remote/jdk1.7.0_75/bin:$PATH
}
jdk6 () {
	export JAVAHOME=/usr/remote/jdk1.6.0_06
	export PATH=/usr/remote/jdk1.6.0_06/bin:$PATH
}

# Slurm
# Aliases
alias qs='squeue | body sort'
alias qsg='squeue -u gautier | body sort'
alias qi='srun --pty bash'
alias quota='/usr/sbin/beegfs-ctl --getquota --uid gautier'
alias cchck='echo -n "R:" `squeue | cut -b48-50 | grep R | wc -l` "\nPD:" `squeue | cut -b48-50 | grep PD | wc -l` "\n"' # Cluster check
alias mck='echo -n "R:" `squeue -u gautier | cut -b48-50 | grep R | wc -l` "\nPD:" `squeue -u gautier | cut -b48-50 | grep PD | wc -l` "\n"' # My check
alias qwho="squeue | cut -b39-50|sed '1,1d'|sort|uniq -c|sort -gr"


## Functions
### Cancel jobs
crak () {
	numbers="$@"
	nb1=`echo ${numbers%:*}`
	nb2=`echo ${numbers##*:}`
	for i in {$nb1..$nb2} ; do scancel $i ; done
}

### Show job
qjob () { scontrol show job "$@" -d | grep Command }


