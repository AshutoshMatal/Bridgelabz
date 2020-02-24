#!/bin/bash -x

read -p "Enter any number from 1,10,100 or 1000 :" num

#READ 1, 10, 100... AND PRINT UNIT, TEN, HUNDRED...
case $num in 
	1) 
		echo One
		;;
	10) 
		echo Ten
		;;
	100)    
		echo Hundred
		;;
	1000) 
		echo Thousand
		;;
esac
