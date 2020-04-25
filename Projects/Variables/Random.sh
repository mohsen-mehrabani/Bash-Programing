#!/bin/bash

Max=10
i=1

while [ "$i" -le "$Max" ]; do
  n=$RANDOM
  echo "$n"
  # shellcheck disable=SC2219
  let " i += 1 "
done