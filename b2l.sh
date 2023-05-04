#!/bin/bash

read arg
bc <(echo "ibase=16;$(echo -n $arg | xxd -p | tr '[a-f]' '[A-F]')")
