#!/bin/bash -x

flag=0
count=0
read -p "Enter the number " number
storeNumber=$number
for (( counter=2; $((counter*counter))<=$storeNumber ; counter++ ))
do 
	if [ $(($number%$counter)) -eq 0 ]
    then
   	number=$((number/counter))
	array[count]=$counter
	 ((count++))
	((counter--))
fi
done
if [ ${#array[@]} -eq 0 ]
then 
echo "$storeNumber is a prime Number"
else
echo ${array[@]}
 fi

