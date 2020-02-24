max=99
min=1000
secondmax=99
secondmin=1000
for (( counter=1; counter<=10; counter++))
do
array[$counter]=$((RANDOM%900+100))

	if [ ${array[counter]} -gt $max ]
	then
	max=${array[counter]}
fi
        if [ ${array[counter]} -lt $min ]
        then
	min=${array[counter]}
fi
done
echo ${array[@]} 
#Second min max highest
for (( counter=1; counter<=10; counter++))
do
if [ ${array[counter]} -gt $secondmax -a ${array[counter]} -ne $max ]
        then
        secondmax=${array[counter]}
fi
if [ ${array[counter]} -lt $secondmin -a ${array[counter]} -ne $min ]
then
        secondmin=${array[counter]}
fi
done
echo  Second Minimum :$secondmin
echo Second Maximum  :$secondmax

