#!/bin/bash -x

ISPRIME=1

read -p "Enter any number : " number

for (( count=2; count<=$number/2; count++))
do
	if [ $(($number%$count)) -eq 0 ]
	then
		ISPRIME=0
		break
	fi
done
if [ $ISPRIME -eq 1 -a $number -ne 1 ]
then 
	echo "$number is Prime Number"
else
	echo "$number is Not Prime Number"
fi
