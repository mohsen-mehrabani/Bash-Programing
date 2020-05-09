#!/bin/bash

count=0

exec 3<>input.txt

while read line <&3
do
  {
    echo "$line"
    (( count++ ))
  }
done

exec 3>&-

echo "Number of lines is $count"