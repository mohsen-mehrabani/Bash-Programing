#!/bin/bash

E_File_Access=70
E_BadArgs=71

if [ ! -r $1 ]
then
  echo "Can't read from input file!"
  echo "Usage: $0 input-file output-file"
  exit E_File_Access
fi
if [ -z $2 ]
then
  echo "Specify output file!"
  echo "Usage: $0 input-file output-file"
  exit E_BadArgs
fi


exec 4<&0 # std 0 input
exec < $1

exec 7>&1 # std 1 output

exec > $2

tr a-z A-Z  # tr --> transform

exec 1>&7 7>&-   # restore standard output and close
exec 0<&4 4<&-    # restore standard input and close

