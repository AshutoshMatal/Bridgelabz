#!/bin/bash -x

#CONSTANTS
IS_PRIME=1

read -p "Enter any number : " number

#FOR LOOP TO CHECK IF ANY NUMBER DIVIDES ENTERED NUMBER
for (( counter=2; counter<=$number/2; counter++))
do
	if [ $(($number%$counter)) -eq 0 ]
	then
		IS_PRIME=0
		break
	fi
done
if [ $IS_PRIME -eq 1 -a $number -ne 1 ]
then 
	echo "$number is Prime Number"
else
	echo "$number is Not Prime Number"
fi
