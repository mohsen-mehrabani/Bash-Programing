#!/bin/bash

var="T arla llll aaa      a"
echo $var	
echo "$var"

var1=test1\ test2\ test3

var2="test1 test2 test3"

echo $var1 $var2

var3=
let "var4 +=10"
echo $var4
let "var4 = var4 + 10"
echo $var4
hi=`echo "test"`
echo "$hi"

dir=`ls /home`
echo $dir
dir1=$(ls -ltrh)
echo "$dir1"
