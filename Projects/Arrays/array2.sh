#!/bin/bash

declare -a colors

echo "Your favorite colors separated by space"

read -a colors

count=${#colors[@]}

i=0
while [ $i -lt $count ]
do
  echo ${colors[$i]}
  (( i++ ))
done

echo ${colors[*]}

unset colors[2]
echo ${colors[*]}
echo "**********"
echo ${colors[@]}
echo "**********"

unset colors
echo "All colors are gone"
echo ${colors[*]}
