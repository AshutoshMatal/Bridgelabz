echo $1 $2 $3
d=$1
m=$2
y=$3
y0=$(( y - ( 14 - m ) / 12 ))
x=$(( y0 + y0 / 4 - y / 100- y0 / 400))
m0=$((m + 1 * ( 14 -m / 12 ) - 2 ))
d0=$(( (( d + x + 31 * m0 / 12 )) % 7 ))
if [ $d0 -eq 0 ]
then
echo "Sunday"
elif [ $d0 -eq 1 ]
then
echo "Monday"
elif [ $d0 -eq 2 ]
then
echo "Tuesday"
elif [ $d0 -eq 3 ]
then 
echo "Wednesday"
elif [ $d0 -eq 4 ]
then
echo "Thursday"
elif [ $d0 -eq 5 ]
then
echo "Friday"
elif [ $d0 -eq 6 ]
then
echo "Saturday"
fi
