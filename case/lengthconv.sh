#!/bin/bash -x

#READ UNIT 
read -p "Enter any length unit - inch, feet or meter : " unit

#READ LENGTH 
read -p "Enter length :" length
echo $length $unit

#CASE STATEMENT FOR UNIT ENTERED
case $unit in 
	feet) 
		#CONVERTING LENGTH TO OTHER UNITS
		inch=$(echo "12*$length" | bc)
		meter=$( echo "0.3048*$length" | bc)
		echo $length $unit = $inch inches
		echo $length $unit = $meter meters
		;;
	inch)
		foot=$(echo "0.08333*$length" | bc)
		meter=$(echo "0.0254*$length" | bc)
		echo $lenght $unit = $foot foots
		echo $length $unit = $meter meters
		;;
	meter)
		inch=$(echo "39.37*$length" | bc)
		foot=$(echo "3.2808*$length" | bc)
		echo $length $unit = $inch inches
		echo $lenght $unit = $foot foots
esac
