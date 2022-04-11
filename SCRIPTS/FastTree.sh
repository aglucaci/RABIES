#!/bin/bash
#PBS -N FastTree
#PBS -l walltime=240:00:00
#@Usage: qsub -V -l nodes=1:ppn=4 -q epyc2 FastTree.sh -v FASTA={CODON_AWARE_MSA}

FASTTREE="/usr/local/bin/FastTree"
NP=4

if [ ! -s $FASTA".FastTree.nwk" ]; then
    $FASTTREE -gtr -nt $FASTA > $FASTA".FastTree.nwk"
fi

exit 0
