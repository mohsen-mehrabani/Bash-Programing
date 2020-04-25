#!/bin/bash

echo "input something"
# shellcheck disable=SC2162
read
echo "The value is $REPLY"

echo "Read the next one"
# shellcheck disable=SC2162
read var
echo "The second one is $var"