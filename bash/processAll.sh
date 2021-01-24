#!/bin/bash

for variable in $4 $5 $6 $7 $8
do 
 for i in `seq 1 10`;
  do
    arq="$9/$2/$3/$2-$3-${variable}-${i}_MessageStatsReport.txt"
    searchArg=$1
    awk -v s="$searchArg" '$0 ~ s {print $2}' $arq >> ${10}$2-$3-${variable}-$1.txt
  done
done