#!/bin/bash

Limit_Time=12
Time_Interval=3
echo "This script will run $Limit_Time seconds."
echo "Press Ctrl-c to stop"
 while [ $SECONDS -le $Limit_Time ]; do
   echo "This script has been running fo $SECONDS seconds."
   sleep $Time_Interval
 done