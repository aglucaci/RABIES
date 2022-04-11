#!/bin/bash
#PBS -N BUSTEDS
#PBS -l walltime=240:00:00
#@Usage: bash run_BUSTEDS.sh


DIR="/home/aglucaci/RABIES/ALIGNMENTS"



for aln in "$DIR"/*.fas; do
    echo "# Processing: "$aln

    # check to make sure it exists
    tree="$aln".FastTree.nwk
    
    #qsub -V -l nodes=1:ppn=8 -q epyc2 BUSTEDS.sh -v FASTA={CODON_AWARE_MSA},TREE={TREE_NEWICK}
    echo "qsub -V -l nodes=1:ppn=8 -q epyc2 BUSTEDS.sh -v FASTA=$aln,TREE=$tree"
    qsub -V -l nodes=1:ppn=8 -q epyc2 BUSTEDS.sh -v FASTA=$aln,TREE=$tree

    #break

done