#!/bin/bash -x

read -p "Enter the number : " number
flag=0

#  for the possible prime factor
for (( counter=1; $((counter*counter))<=$number; counter++ ))
do

	if [ $(($number%$counter)) -eq 0 ]
	then
		isPrime=0

		# check the factor is prime
		for (( i=2; i<=$(($counter/2)); i++ ))
		do
			if [ $(($counter%$i)) -eq 0 ]
			then
				isPrime=1
				break
			fi
		done
		if [ $isPrime -eq 0 -a $counter -ne 1 ]
		then
			flag=1
			echo $counter
		fi
	fi
done
if [ $flag -eq 0 ]
then
	echo $number is a prime number 
fi
