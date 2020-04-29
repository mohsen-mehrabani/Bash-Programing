#!/bin/bash

Upper_Limit=9
echo "Numbers form 1 to 10 Not including 3 and 11"
n=0
while [ "$n" -le "$Upper_Limit" ]
do
  # shellcheck disable=SC2004
  n=$(($n+1))
  if [ "$n" -eq 3 ] || [ "$n" -eq 11 ]
    then
      continue
  fi
  echo -n "$n"
done
echo

n=0
while [ "$n" -le "$Upper_Limit" ]; do
  n=$(("$n"+1))
  if [ "$n" -gt 2 ]; then
      break
  fi
  echo -n "$n"
done
echo