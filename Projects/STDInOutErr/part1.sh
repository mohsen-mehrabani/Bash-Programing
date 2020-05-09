#!/bin/bash

echo 12345 > file.txt
exec 3<>file.txt
read -n 2 <&3
echo -n . >&3
exec 3>&-
cat file.txt

  # https://www.computerhope.com/unix/bash/exec.htm