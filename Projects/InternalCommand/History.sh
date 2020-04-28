#!/bin/bash

set +o history

set -o history

echo "Before setting the parameters"

echo "\$1=$1"
echo "\$2=$2"

set `echo "three four"`

echo "After setting the parameters"

echo "\$1=$1"
echo "\$2=$2"


