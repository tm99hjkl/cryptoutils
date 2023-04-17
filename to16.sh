#!/bin/bash

if read arg; then
    echo "obase=16; $arg" | bc
fi
