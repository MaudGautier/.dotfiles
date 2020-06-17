# SSH to CALCSUB (Curie)
alias csub='ssh mgautie3@calcsub.curie.fr'
alias cs='csub'
alias unm='umount /Users/maudgautier/OSXFUSE-calcsub/ ; umount /Users/maudgautier/OSXFUSE-calcsub-scEwS-remap-on-mouse-and-human/'
alias mkmount='unm ; sshfs mgautie3@calcsub.curie.fr:/data/users/mgautie3 /Users/maudgautier/OSXFUSE-calcsub/ ; sshfs mgautie3@calcsub.curie.fr:/data/kdi_prod/.kdi/project_tmp_0/726/acl/26.01/ /Users/maudgautier/OSXFUSE-calcsub-scEwS-remap-on-mouse-and-human/'

