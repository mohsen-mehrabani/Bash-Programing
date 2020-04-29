#!/bin/bash
var="1 2 3"
echo $var
set -- $var
i=1
while [ "$i" -le $# ]; do
  echo -n "\$$i = "
  eval echo \$$i
  (( i++ ))
done
set --
echo "\$1 = $1"
echo "\$2 = $2"
echo "\$3 = $3"
echo
var="1 2 3 4"
set -- $var
echo "$var"
set --
#unset var
echo "$var"