#!/bin/bash -x

read -p "Enter any number : " number;
harmonic=0;
for (( count=1; count<=$number; count++ ))
do
	harmonic=$(echo "scale=2;$harmonic + 1/$count" | bc );
done
echo $harmonic
