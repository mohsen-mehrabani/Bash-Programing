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
