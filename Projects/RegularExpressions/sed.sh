#!/bin/bash

E_BadArgs=65
if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` file " # equals to echo "Usage: $(basename "$0") file "
  exit $E_BadArgs
else
  for i
  do
    sed -e '1,/^$/d' -e '/^$/d' $i
  done
fi