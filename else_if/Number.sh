read -p "Enter a number :" num

if (( $num == 1 ))
then
  echo "the number is in unit place"
elif (( $num == 10 ))
then
  echo "the number is in ten place"
elif (( $num == 100 ))
then
  echo "the number is in hundredth place"
elif (( $num == 1000 ))
then
  echo "the number is in thousandth place"
else
  echo "it is a whole number"
fi
