# Condor system (ENS)
alias crm="condor_rm"
alias crak="condor_rm mgautier"
alias cq="condor_q"
alias cqk='condor_q mgautier'
alias cqg="condor_q -g"
alias cqr="condor_q -r"
alias cqgr="condor_q -g -r"
alias cqba="condor_q -g -better-analyze"
alias cs="condor_status"
alias csa="echo -e '------------------------------------------------------------------\nName       || Cpus  | Avail | Util% || Memory   | Avail  | Util% |\n------------------------------------------------------------------'; condor_status -constraint 'PartitionableSlot =?= TRUE' -format '%15s ||' Name -format '%6d |' TotalSlotCpus -format '%6d |' Cpus -format '%5d%% ||' '((TotalSlotCpus - Cpus) / (TotalSlotCpus * 1.0)) * 100' -format '%8dG |' '(TotalSlotMemory / 1024)' -format '%6dG |' '(Memory / 1024)' -format '%5d%% |' '((TotalSlotMemory - Memory) / (TotalSlotMemory * 1.0)) * 100' -format '\n' TRUE | sed 's/slot1@\([^.]*\).bioclust.biologie.ens.fr/\1/g'; echo '------------------------------------------------------------------';"
alias css="condor_status -submitters"
alias cup="condor_userprio"
alias cupa="condor_userprio -allusers"
alias ch="condor_history"
alias cq_loop="watch -n 1 condor_q"
alias niceCI="condor_submit -i /kingdoms/a2e/workspace2/mgautier/Condor/niceUser.sub"

