#!/bin/bash

colors="red white red"

for col in $colors 
do
  echo $col
done


for col in "$colors"
do
	echo "$colors"
done

echo "$colors"
echo $colors
