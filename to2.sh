#!/bin/bash

if read arg; then
    echo "obase=2; $arg" | bc
fi
