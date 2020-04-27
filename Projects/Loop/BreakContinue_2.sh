#!/bin/bash

for i in 1 2
do
  echo "Loop 1: iteration $i"
  for j in 1 2 3
  do
    echo -e "\tLoop 2: iteration $j"
    for k in 1 2 3 4
    do
      echo -e "\t\tLoop 3: iteration $k"
      if [ "$k" -eq 2 ]
      then
        break 2
      fi
    done
  done
done
echo
for i in 1 2 3 4 5
do
  echo "Loop 1: iteration $i"
  for j in 1 2 3
  do
    echo -e "\tLoop 2: iteration $j"
    for k in 1 2 3 4
    do
      echo -e "\t\tLoop 3: iteration $k"
      if [ "$k" -eq 2 ]
      then
        continue 3
      fi
    done
  done
done

exit 0
