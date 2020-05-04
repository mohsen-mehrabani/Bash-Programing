#!/bin/bash

echo "Waiting for 5 seconds"
sleep 2 &
echo "Enter process name: "
read a
ps aux | grep $a
kill ps | grep $a
echo "$a"
