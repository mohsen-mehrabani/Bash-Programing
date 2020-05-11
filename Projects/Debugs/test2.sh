#!/bin/bash

E_BadArgs=65
E_NoFile=66

trap 'echo "No Param"' EXIT
if [ -z "$1" ]
then
  exit $E_BadArgs
fi
trap - EXIT

trap ' echo " File $1: Not Found"' EXIT
if [ f "$1" ]
then
  rm $1
  echo "$1 removed"
else
  exit $E_NoFile
fi
trap - EXIT
