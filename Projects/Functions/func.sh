#!/usr/bin/env bash

_()
{
  echo "First args is $1 and the second one is $2"
}
var2=10
var1=20

_ $1 $2
sleep 10