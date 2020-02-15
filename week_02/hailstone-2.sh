#!/bin/sh

n=$1

while test $n != 1 
do
	echo $n
    if test $((n%2)) -eq 0
    then
        n=$((n / 2))
    else
        n=$(((n * 3) + 1))
    fi
done

echo $n