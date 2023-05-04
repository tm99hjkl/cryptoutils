#!/bin/bash

read arg
echo $(echo "obase=16;$arg" | bc | xxd -r -p)
