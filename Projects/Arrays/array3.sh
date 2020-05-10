#!/bin/bash

FILE=test.txt

declare -a arr_file
arr_file=( `cat "$FILE"` )

echo ${arr_file[*]}
size=${#arr_file[*]}
echo "Array size is $size"