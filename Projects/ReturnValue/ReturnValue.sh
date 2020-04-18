#!/bin/bash

no_of_args=2
end_badargs=85
end_unreadble=86

if [ $# -ne "$no_of_args" ]
then
	echo "Usage: `basename $0` testfile1 testfile2"
	exit $end_badargs
fi

if [[ ! -r "$1" || ! -r "$2" ]]
then
	echo "File are real"
	exit "$end_unreadable"
fi

