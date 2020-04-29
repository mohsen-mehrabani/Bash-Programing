#!/bin/bash

while getopts :dm option
do
  case $option in
    d) d_option=1;;
    m) m_option=1;;
    *) echo "Usage: -dm"
  esac
done

# shellcheck disable=SC2006
day=`date | awk '{print $1 " " $2}'`
# shellcheck disable=SC2236
if [[ ! -z $d_option ]]; then
  echo "Date is: $day"
fi
# shellcheck disable=SC2006
month=`date | awk '{print $3}'`
# shellcheck disable=SC2236
if [[ ! -z $m_option ]]
then
  echo "Month is: $month"
fi
# shellcheck disable=SC2004
shift $(($OPYIND - 1))
