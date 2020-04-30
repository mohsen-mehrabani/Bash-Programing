#!/bin/bash

E_NoPattern=71
Dict=/home/asus/PycharmProjects/PythonPrograms/Bash-Programming/Projects/RegularExpressions/english-words-master/words.txt

if [ -z "$1" ]; then
  echo
  echo "Usage: "
  # shellcheck disable=SC2006
  echo "`basename $0` \"Pattern,\""
  echo "where \"Pattern\" is in the form"
  echo "ooo..oo..o..."
  echo
  echo "The O's are the you already know,"
  echo "and the periods are missing letters."
  echo "Letters and periods can be in any position"
  echo "for example: w...i....n"
  echo
  exit $E_NoPattern
fi

grep ^"$1"$ "$Dict"
#end
