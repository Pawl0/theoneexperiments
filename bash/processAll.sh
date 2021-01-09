#!/bin/bash
rm -rf *-$1.txt
for TTL in 100 300 500 700 900
do 
 for i in `seq 1 10`;
  do
    arq="TTL${TTL}-${i}_MessageStatsReport.txt"
    searchArg=$1
    awk -v s="$searchArg" '$0 ~ s {print $2}' $arq >> TTL${TTL}-$1.txt
  done
done
