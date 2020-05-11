#!/bin/bash

set -x
swap()
{
  local tmp=${colors[$1]}
  colors[$1]=${colors[$2]}
  colors[$2]=$tmp
  return
}

declare -a colors
colors=(red white black blue brown)
echo "**"
echo ${colors[@]}
echo "**"
size=${#colors[@]}
echo $size

for (( last = $size -1 ; last > 0 ; last-- )); do
  
  for (( i = 0; i < last ; i++ )); do

    [[ "${colors[$i]}" > "${colors[$((i+1))]}" ]] && swap $i $((i+1))
      
  done
done

echo ${colors[@]}