#!/bin/sh

n=1

for arg in "$@"
do
    echo $((n))"." $arg
    n=$((n+1))
done
