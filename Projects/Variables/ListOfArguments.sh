#!/bin/bash

MIN=10

if [ -n "$1" ]
then
	echo "First one is $1"
fi

if [ -n "$2" ]
then    
	        echo "Scond one is $2"
fi

if [ -n "$3" ]
then    
        echo "Third one is $3"
fi

if [ -n "$4" ]
then    
        echo "Forth one is $5"
fi

if [ -n "$6" ]
then    
        echo "Sexth one is $6"
fi

if [ -n "$7" ]
then    
        echo "Seventh one is $7"

fi

if [ -n "$8" ]
then    
        echo "Eighth one is $8"
fi

if [ -n "$9" ]
then    
        echo "Nineth one is $9"
fi

if [ -n "${10}" ]
then    
        echo "Tenth one is ${10}"
fi

echo "List of arguments: "$*""

echo "Name of script is: \""$0"\""

if [ $# -lt "$MIN" ]
then
        echo "Not enough arguments, need 10to run"
fi

