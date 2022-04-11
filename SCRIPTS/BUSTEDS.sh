#!/bin/bash
#PBS -N BUSTEDS
#PBS -l walltime=240:00:00
#@ Usage: qsub -V -l nodes=1:ppn=8 -q epyc2 BUSTEDS.sh -v FASTA={CODON_AWARE_MSA},TREE={TREE_NEWICK}

HYPHYMPI="/home/aglucaci/hyphy/HYPHYMPI"
RES="/home/aglucaci/hyphy/res"
BUSTEDS="BUSTED"
NP=8

echo mpirun --np $NP $HYPHYMPI LIBPATH=$RES $BUSTEDS --alignment $FASTA --tree $TREE --srv Yes --output "$FASTA".BUSTEDS.json --starting-points 10

if [ ! -s "$FASTA".BUSTEDS.json ]; then
    echo "# Running"
    mpirun --np $NP $HYPHYMPI LIBPATH=$RES $BUSTEDS --alignment $FASTA --tree $TREE --srv Yes --output "$FASTA".BUSTEDS.json --starting-points 10
fi

exit 0
