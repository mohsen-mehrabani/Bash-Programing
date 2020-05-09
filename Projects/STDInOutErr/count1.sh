#!/bin/bash

count=0

cat input.txt | while read line;
                do
                  {
                  echo "$line"
                  (( count++ ))
                  }
                done
echo "Number of read lines is $count"
