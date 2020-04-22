#!/bin/bash

for n in {0..5}
do
  echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done

ROOT_UID=0

echo -n "You are: "
if [ "$UID" -eq "$ROOT_UID" ]
then
  echo "Root. Your \$UID = $UID"
else
  echo "User. Your \$UID = $UID"
fi

someFunction()
{
  # shellcheck disable=SC2128
  echo "Function name is $FUNCNAME"
}
someFunction

# shellcheck disable=SC2128
echo "Outside, \$FUNCNAME = $FUNCNAME" #NULL because we are in outside the function

if [[ $HOSTNAME && $USER && $HOME ]]
then
  echo " \$USER: $USER"
  echo " \$HOSTNAME: $HOSTNAME"
  echo " \$HOME: $HOME"
  echo " \$MACHTYPE: $MACHTYPE"
  echo "Variables are set"
else
  echo "Variables are not set"
fi

text="1, 2, 3, 4, 5"
IFS=,
echo $text
echo $LINENO
cat 1.txt | sort
echo ${PIPESTATUS[*]}
