#!/bin/bash  -x

#READ UPPER AND LOWER LIMIT
read -p "Enter lower range : " lower
read -p "Enter Upper range : " upper

#FOR LOOP FROM LOWER TO UPPER LIMIT
for (( counter=$lower; counter<=$upper; counter++ ))
do
	#INITIALIZE FLAG=0
	isPrime=1
	for (( i=2; i<=$(($counter/2)); i++ ))
	do
		if [ $(($counter%$i)) -eq 0 ]
		then
			#TURN FLAG IF NOT PRIME AND BREAK OUT OF LOOP
			isPrime=0
			break
		fi
	done

	#CHECK IF NUMBER IS PRIME AND NOT EQUAL TO 1
	if [ $isPrime -eq 1 -a $counter -ne 1 ]
	then 
		echo $counter;
	fi
done
