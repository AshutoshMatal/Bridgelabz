#!/bin/bash -x

read -p "Enter n : " n

#VARIABLES
counter=0

while [[ $((2**$counter)) -le 256 && $counter -le n ]]
do
	echo $((2**$counter))
	((counter++))
done
