#!/bin/bash -x

#CALCULATING PRIME FACTORS OF A NUMBER
read -p "Enter the number : " number
flag=0

#FIRST FOR LOOP FOR THE POSSIBLE PRIME FACTORS
for (( count=1; $((count*count))<=$number; count++ ))
do

	#TO CHECK IF COUNTER IS A FACTOR
	if [ $(($number%$count)) -eq 0 ]
	then
		isPrime=0

		#SECOND FOR LOOP TO CHECK IF THE FACTOR IS PRIME 
		for (( i=2; i<=$(($count/2)); i++ ))
		do
			if [ $(($count%$i)) -eq 0 ]
			then
				isPrime=1
				break
			fi
		done
		if [ $isPrime -eq 0 -a $count -ne 1 ]
		then
			flag=1
			echo $count
		fi
	fi
done
if [ $flag -eq 0 ]
then
	echo $number is a prime number 
fi
