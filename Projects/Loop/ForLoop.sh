#!/bin/bash

# shellcheck disable=SC1036
for i in 1 2 3 4 5
  do
    echo "Outer loop $i --------------------- "
    for j in 1 2 3
      do
        echo "Inner loop $j !!!!!"
      done
  done
