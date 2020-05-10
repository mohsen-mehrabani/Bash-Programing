#!/bin/bash

#arr[0]=10
#arr[1]=20

declare -a arr

#arr=(10 20 30 40 50 60)

arr=([0]=20 [1]=hello)
echo -e "${arr[0]} \n${arr[1]} \n${arr[3]}"


a=something123
echo ${a[*]}
echo ${a[0]}
echo ${a[1]}
echo ${#a[@]} # print the size of the array

echo "********************"
arr=(zero one two)

echo ${arr[0]}
echo ${#arr[0]}
echo ${#arr[*]}
echo ${#arr[@]}
