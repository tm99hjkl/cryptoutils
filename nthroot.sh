#!/bin/bash

echo $(echo "scale=100; x = e( l( $1 ) / $2 ) + 0.5; scale=0; x/1" | bc -l)