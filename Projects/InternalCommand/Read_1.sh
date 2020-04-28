#!/bin/bash

echo "read"
# shellcheck disable=SC2162
while read var
do
  echo "$var"
done<test.txt