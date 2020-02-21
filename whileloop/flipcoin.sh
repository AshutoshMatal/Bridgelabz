#!/bin/bash -x

#VARIABLES 
head=0
tail=0

#WHILE EITHER HEAD OR TAIL COUNTS UP TO 11
while [[ $head -lt 11 && $tail -lt 11 ]]
do
	if [ $((RANDOM%2)) -eq 0 ]
	then
		((head++))
	else
		((tail++))
	fi
done

if [ $head -eq 11 ]
then
	echo head
else
	echo tail
fi
