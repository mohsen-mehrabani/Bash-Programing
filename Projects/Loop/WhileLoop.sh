#!/bin/bash

# shellcheck disable=SC2209
a=unset
prev=$a

while echo "Previous variable = $prev"
      echo
      prev=$a
      [ "$a" != end ]
do
      echo "Input end to exit or anything else to go on!"
      # shellcheck disable=SC2162
      read a
      echo "variable=$a"
done