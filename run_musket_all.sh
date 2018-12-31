#!/bin/bash

source "/home/axlgiraldo/GenomeAssembly_lastest/Code/paths.sh"

for str in Reads
do
		cd /home/axlgiraldo/GenomeAssembly_lastest/Results/Trimming/
		forward0=$( eval echo \$sp${str}PairFw )
		reverse0=$( eval echo \$sp${str}PairRe )
		echo "Musket on $forward0 , $reverse0"
		{ /home/axlgiraldo/musket/musket-1.1/musket -p 20 -omulti corrected -inorder $forward0 $reverse0 & } 2> musket_log.out
		cd /home/axlgiraldo/GenomeAssembly_lastest/Results/musket/
done
