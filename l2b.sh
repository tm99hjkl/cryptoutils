#!/bin/bash

if read arg; then
    echo $(echo "obase=16;$arg" | bc | xxd -r -p)
fi
