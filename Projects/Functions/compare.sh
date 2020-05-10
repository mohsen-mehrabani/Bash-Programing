#!/bin/bash

E_Param_Err=250
Equal=251

function_max()
{
  if [ -z "$2" ]
  then
    return $E_Param_Err
  fi
  if [ "$1" -eq "$2" ]
  then
    return $Equal
   else
     if [ "$1" -gt "$2" ]
     then
       return $1
       else
         return $2
     fi
   fi
}

function_max 12 25

Return_Value=$?
if [ "$Return_Value" -eq "$E_Param_Err" ]
then
  echo "Function needs two parameters"
  elif [ "$Return_Value" -eq "$Equal" ]
  then
    echo " Numbers are equal"
    else
      echo "Max number is $Return_Value"
fi
