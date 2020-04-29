#!/bin/bash
up=$'\x1b[A'
down=$'\x[B'
left=$'\x[D'
right=$'\x[C'

# shellcheck disable=SC2162
read -s -n3 -p "Press an arrow key: " arrow
# -s dows not echo
# -n accept 3 charachter n=number
# echo up prompt --> press an arrow key
case "$arrow" in
$up) echo "UP";;
$down) echo "Down";;
$left) echo "Left";;
$right) echo "Right";;
esac

echo "Enter a string with two backslash"
# shellcheck disable=SC2162
read var
echo "$var"
read -r var
echo "$var"


