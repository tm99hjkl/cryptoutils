#!/bin/bash

file=$1

echo -e "% \tcount \tline"

unique_line=$(sort $file | uniq)
ln=$(cat $file | wc -l)

acc=""
for line in $unique_line; do
    cnt=$(grep -o $line $file | wc -l)
    p=$(echo "scale=5; $cnt / $ln" | bc)
    acc+=$(echo "$p \t$cnt \t$line\n")
done

echo -e "$(echo -e $acc | sort -r -n)"