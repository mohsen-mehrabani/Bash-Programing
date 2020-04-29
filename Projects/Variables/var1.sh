#!/bin/bash

num=1100
let "num -= 10"
echo "$num"

var=${num/10/A}

echo "$var"

num1=1100

var=${num1/11/B}

echo "$var"

num3=A0
let "num3 += 1"

echo "$num3" # bash sets integer value of a string to zero

var=hey1100
num4=${var/hey/10}
echo "$num4"


