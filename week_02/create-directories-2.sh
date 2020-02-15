#!/bin/sh

n=$1

for i in $(seq $n);
do
	id=$(printf %06d $i)
	mkdir dir.$id
done