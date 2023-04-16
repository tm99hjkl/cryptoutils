#!/bin/bash

if read arg; then
    echo "ibase=16;$(echo -n $arg | xxd -p | tr '[a-f]' '[A-F]')" | bc
fi
