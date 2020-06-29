# SSH to CALCSUB (Curie)

## Aliases
alias csub='ssh mgautie3@calcsub.curie.fr'
alias cs='csub'

## Functions
### Create sshfs mountpoints
mkmount () {
	unm
	sshfs -o reconnect mgautie3@calcsub.curie.fr:/data/users/mgautie3 /Users/maudgautier/OSXFUSE-calcsub/
	sshfs -o reconnect mgautie3@calcsub.curie.fr:/data/kdi_prod/.kdi/project_tmp_0/726/acl/26.01/ /Users/maudgautier/OSXFUSE-calcsub-scEwS-remap-on-mouse-and-human/
	sshfs -o reconnect mgautie3@calcsub.curie.fr:/data/kdi_prod/project_result/726/26.02/ /Users/maudgautier/OSXFUSE-calcsub-tumors-nadege/
}

### Unmount sshfs connections
unm () {
	umount /Users/maudgautier/OSXFUSE-calcsub/
	umount /Users/maudgautier/OSXFUSE-calcsub-scEwS-remap-on-mouse-and-human/
	umount /Users/maudgautier/OSXFUSE-calcsub-tumors-nadege/
}

