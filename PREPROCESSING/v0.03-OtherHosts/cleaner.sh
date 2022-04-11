#!/bin/bash
declare -a SPECIES=("Raccoon" "Bat" "Cat" "Dog")
mkdir -p Clean
for i in "${SPECIES[@]}"
do
   echo "# SPECIES $i"
   for fasta in "$i"/*.fas; do
       echo "# Processing "$fasta
       output='Clean/hyphy_clean_'"$(basename -- $fasta)"

       cmd='hyphy cln Universal '"$fasta"' No/No '"$output"
       if test -f "$output"; then
           continue
           #echo $cmd
           #$cmd
       fi

       echo $cmd
       $cmd
   done
done

exit 0
#done