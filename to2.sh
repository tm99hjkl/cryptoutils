#!/bin/bash

read arg
echo "obase=2; $arg" | bc
