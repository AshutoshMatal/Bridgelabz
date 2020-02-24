#!/bin/bash -x 

#CONSTANTS
CELCIUS_TO_FAHREN=1;
FAHREN_TO_CELCIUS=2;

printf  "Enter 1. Celius to Fahrenheit : 
	 				2. Fahrenheit to Celsius: \n" 

read choice

function getFahren(){
	read -p "Enter temperature in Celcius : " celcius;
	if (( $(echo "$celcius >= 0 && $celcius <= 100" | bc -l) ))
	then
		fahren=$(echo "scale=5;(9/5 * $celcius) + 32"  | bc);
		echo $celcius Celcius = $fahren Fahrenheit;
	else
		echo Enter temperature between 0 and 100 degree Celcius
	fi
	}

function getCelcius(){
	read -p "Enter Temperature in Fahren : " fahren;
	if [[ $fahren -ge 32 && $fahren -le 212 ]]
	then
		celcius=$(echo "scale=5;($fahren-32)*5/9" | bc);
		echo $fahren Fahrenheit = $celcius Celcius;
	else
		echo Enter temperature between 32 and 212 degree fahrenheit
fi
	}

case $choice in
	$CELCIUS_TO_FAHREN)
		ans="$( getFahren )"
		;;
	$FAHREN_TO_CELCIUS)
		ans="$( getCelcius )"
		;;
	*)
		ans="Wrong Input"
		;;
esac

echo $ans

