#!/bin/bash
#PBS -N FastTree
#PBS -l walltime=240:00:00
#@Usage: bash run_FastTree.sh


DIR="/home/aglucaci/RABIES/ALIGNMENTS"



for file in "$DIR"/*.fas; do
    echo "# Processing: "$file

    #qsub -V -l nodes=1:ppn=4 -q epyc2 FastTree.sh -v FASTA={CODON_AWARE_MSA}
    qsub -V -l nodes=1:ppn=4 -q epyc2 FastTree.sh -v FASTA=$file

done