#!/bin/bash

if [ ! -z S1 ] # -z The -z and -n operators return successfully if their arguments are empty or nonempty
then
  process="ps -ef | grep $1"
fi
eval "$process"
