#!/bin/bash

Args=1
E_BadArgs=85

FILE=/etc/passwd
pattern=$1

if [ $# -ne "$Args" ]
then
  echo"Usage: `basename $0` USERNAME"
  exit $E_BadArgs
fi
get_real_name()
{
  while read line
  do
    echo "$line" | grep $1 | awk -F":" '{ print $5 }'
  done
}<$FILE

get_real_name $pattern
