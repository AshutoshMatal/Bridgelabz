#!/bin/bash -x

echo "Guess any number between 1 to 100"

#VARIABLES
first=1
last=100
mid=0

#WHILE GUESSED NUMBER IS NOT FOUND

while [ $first != $mid ]
do
	mid=$((first+(last-first)/2))
	read -p "Is number between  $first and $mid  :" ans
	if [ $mid -eq $first ]
	then
		if [ $ans -eq 1 ]
		then
			echo $mid
			break
		else
			echo $(($mid+1))
			break
		fi
	fi
	if [ $ans == 1 ]
	then
		last=$mid
	else
		first=$(($mid+1))
	fi
done 
