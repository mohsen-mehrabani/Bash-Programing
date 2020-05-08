#!/bin/bash

for file in *
do
  ls -al "$file"
  shopt -s nullglob
done
