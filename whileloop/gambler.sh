#!/bin/bash -x

#VARIABLES
cash=100
bets=0
wins=0

#WHILE GAMBLER TARGET IS NOT REACHED AND MONEY IS LEFT
while [[ $cash -gt 0 && $cash -lt 200 ]]
do
	((bets++))
	random=$((RANDOM%2))
	if [ $random == 0 ]
	then
		cash=$((cash-1))
	else
		((wins++))
		cash=$((cash+1))
	fi
done

echo Bets : $bets
echo Wins : $wins
echo Cash : $cash
