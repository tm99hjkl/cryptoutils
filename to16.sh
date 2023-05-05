#!/bin/bash

read arg
echo "obase=16; $arg" | bc | tr -d '\\\n'
