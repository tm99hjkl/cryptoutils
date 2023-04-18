#!/bin/bash

file=$1
unique_line=$(sort $file | uniq)
for line in $unique_line; do
    freq=$(grep -o $line $file | wc -l)
    p=$(echo "scale=4; $freq / 1479" | bc)
    echo -e "$p, $freq \t$line"
done
