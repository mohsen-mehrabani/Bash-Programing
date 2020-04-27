#!/bin/bash

echo -n "Enter a letter or digit: "
# shellcheck disable=SC2162
read a

case "$a" in
[[:lower:]] ) echo "$a is a lowercase letter";;
[[:upper:]] ) echo "$a is a uppercase ;letter";;
[0-9]       ) echo "$a is a digit";;
*           ) echo "$a is a special character";;
esac
exit 0
