echo $(echo "obase=16;$1" | bc | xxd -r -p)
