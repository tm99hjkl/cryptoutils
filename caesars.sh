#!/bin/bash

lower=($(echo {a..z}))
upper=($(echo {A..Z}))

read arg;
for i in ${!lower[@]};do
    echo $(echo $arg | \
        tr [a-z] "[${lower[$(($i))]}-za-${lower[$(($i-1))]}]" | \
        tr [A-Z] "[${upper[$(($i))]}-ZA-${upper[$(($i-1))]}]")
done
