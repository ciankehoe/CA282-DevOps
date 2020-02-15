#!/bin/sh

prev=""
first=true


while read line
do
	if test "$line" = "$prev" && test "$first" = true 
	then
		first_match=$line
		first=false
	else
		prev=$line
	fi
done

echo $first_match