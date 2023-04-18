#!/bin/bash

echo -e "% \tcount \tline"
file=$1
unique_line=$(sort $file | uniq)
ln=$(cat $file | wc -l)

acc=""
for line in $unique_line; do
    freq=$(grep -o $line $file | wc -l)
    p=$(echo "scale=5; $freq / $ln" | bc)
    acc+=$(echo "$p \t$freq \t$line\n")
done

echo -e "$(echo -e $acc | sort -r -n)"