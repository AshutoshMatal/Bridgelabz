#!/bin/bash -x

read -p "Enter any number : " number;
harmonic=0;

#CALCULATE HARMONIC NUMBER
for (( counter=1; counter<=$number; counter++ ))
do
	#USING SCALE AND BC TO LIMIT THE OUTPUT TO 2 DECIMAL PLACES
	harmonic=$(echo "scale=2;$harmonic + 1/$counter" | bc );
done
echo $harmonic
