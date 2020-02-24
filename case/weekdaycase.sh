read -p "Enter any number between 1 and 7 : " dayNum

#READ NUMBER AND PRINT THE DAY OF WEEK USING CASE STATEMENT
case $dayNum in
	1) 
		echo Sunday
		;;
	2) 
		echo Monday
		;;
	3) 
		echo Tuesday
		;;
	4)
		echo Wednesday
		;;
	5) 
		echo Thursday
		;;
	6) 
		echo Friday
		;;
	7)
		echo Saturday
		;;
esac
