#!/bin/bash

swap()
{
  local tmp=${colors[$1]}
  colors[$2]=${colors[$1]}
  colors[$1]=$tmp
  return
}

declare -a colors
colors=(red white black blue brown)
size=${#colors[@]}
