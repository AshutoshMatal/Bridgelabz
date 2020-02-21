#!/bin/bash -x

read -p "Enter n : " n
for((i=0; i<=n; i++))
do
	echo 2^$i = $((2**i))
done
