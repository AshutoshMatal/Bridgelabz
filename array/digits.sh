#!/bin/bash -x
count=0
for (( counter=1; counter<=100; counter++ ))
do 
if (( $(($counter%10)) == $(($counter/10))  ))
then
array[((count++))]=$counter
fi
done
echo ${array[@]}
