#!/bin/bash

declare -r var_r=5
echo "\$var_r = $var_r"

declare -i var_i=10  # declare a variable as Integer
echo "\$var_i = $var_i"

var_i=Blue
echo "\$var_i = $var_i"

x=8/2
echo "\$x = $x"

declare -i x
x=8/2
echo "\$x = $x"
declare -a x=(1 2 3 4 5)
for i in {0..4}
do
  echo "${x[$i]}" # x[$i] --> x[1], x[2], ...
  # shellcheck disable=SC2219
  let "i += 1"
done

declare -f function #declare a function

declare -x var_x=10 # exports (show) a variable outside the environment
echo "$var_x"