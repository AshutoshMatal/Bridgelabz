#!/bin/bash  -x

read -p "Enter starting range : " first
read -p "Enter ending range : "last
for (( count=$first; count<=$last; count++ ))
do

	isPrime=1
	for(( i=2; i<=$count/2 ;i++ ))
	do
		if [ $((count%i)) -eq 0 ]
		then
			isPrime=0
			break
		fi
	done

	# check prime is not equal to 1
	if [ $isPrime -eq 1 -a $count -ne 1 ]
	then 
		echo $count;
	fi
done
