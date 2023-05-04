#!/bin/bash

# preamble
echo -e "% \tcount \tline"

# get unique lines and total line number of the file
file=$1
unique_lines=$(sort $file | uniq)
loc=$(cat $file | wc -l) # lines of code

# calculate the frequency of each unique line
result=""
for uline in $unique_lines; do
    count=$(grep -o $uline $file | wc -l)
    percent=$(echo "scale=5; $count / $loc" | bc)
    result+=$(echo "$percent \t$count \t$uline\n")
done

# output result
echo -e "$(echo -e $result | sort -r -n)"