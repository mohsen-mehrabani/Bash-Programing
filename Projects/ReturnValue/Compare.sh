#!/bin/bash

no_of_args=2
end_badargs=85
# shellcheck disable=SC2034
end_unreadble=86

if [ $# -ne "$no_of_args" ]
then
	# shellcheck disable=SC2006
	echo "Usage: `basename "$0"` testfile1 testfile2"
	exit $end_badargs
fi

if [[ ! -r "$1" || ! -r "$2" ]]
then
	echo "File are not real"
	# shellcheck disable=SC2154
	exit "$end_unreadable"
fi

cmp "$1" "$2" &> /dev/null

# shellcheck disable=SC2181
if [ $? -eq 0 ]
then
	echo "Files are the same"
else
	echo "Files are not the same"
fi

exit 0

