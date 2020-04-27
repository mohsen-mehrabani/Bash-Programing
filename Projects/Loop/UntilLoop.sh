#!/bin/bash

until [ "$n" = end ]
do
    echo "Input end to exit"
    # shellcheck disable=SC2162
    read n
    echo "$n"
done