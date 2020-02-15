#!/bin/sh

read n

echo $n
for i in $(seq 20)
do
if (($n % 2 == 0)) 
then
n=$((n / 2))
echo $n
else
n=$(((n * 3) + 1))
echo $n
fi
done
