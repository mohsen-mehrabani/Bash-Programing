#!/bin/bash

# shellcheck disable=SC2034
No_of_Args=2
E_No_Args=65
E_BadARGS=85
E_Unreadable=86
E_NoFile=87
E_NotFile=88
E_Size=89

if [[ -z "$1" && -z "$2" ]]
then
  echo "No arguments given"
  exit $E_No_Args
fi

if [[ $# -ne "$No_of_Args" ]]
then
  # shellcheck disable=SC2006
  echo "USAGE:`basename "$0"` File1 File2"
  exit $E_BadARGS
fi

if [[ ! -e "$1" || ! -e "$2" ]]
then
  echo "File does not exists"
  exit $E_NoFile
elif [[ ! -f "$1" || ! -f "$2" ]]
  then
    echo "File need to be regular files"
    exit $E_NotFile
elif [[ ! -r "$1" || ! -r "$2" ]]
  then
    echo "No read permission"
    exit $E_Unreadable
elif [[ ! -s "$1" || ! -s "$2" ]]
  then
    echo "Files are zero-size"
    exit $E_Size
fi
cat "$1" "$2" | sort>file.txt

# shellcheck disable=SC2181
if [ $? -eq 0 ]
 then
   echo "Execution of the script was successful"
   cat file.txt
  else
    echo "Execution of the script failed"
fi
