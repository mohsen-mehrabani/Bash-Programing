#!/bin/bash

E_BadArgs=65

if [ ! -z "$1" ] && echo "The First parameter is $1" && [ ! -z "$2" ] && echo "The Second parameter is $2"; then
    echo "The two parameters are passed to the script"
    else
      echo "Usage:`basename $0` arg1 arg2 " && exit $E_BadArgs
fi