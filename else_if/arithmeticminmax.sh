
echo  "Enter the value of a : " 
read a
echo  "Enter the value of b : "
read b
echo "Enter the value of c : " 
read c
s0=`echo "$a + $b * $c" | bc -l`
s1=`echo "$c + $a / $b" | bc -l`
s2=`echo "$a % $b + $c" | bc -l`
s3=`echo "$a * $b + $c" | bc -l`
echo " Result is :" $s0 
echo " Result is :" $s1 
echo " Result is :" $s2
echo " Result is :" $s3 
max=$s0
if (( `echo "$max < $s1 " | bc -l` ))
then
	max=$s1
fi
max=$s1
if (( `echo "$max < $s2 " | bc -l` ))
then
        max=$s2
fi
max=$s2
if (( `echo "$max < $s3 " | bc -l` ))
then
        max=$s3
fi
echo "MaxValue is :$max "

min=$s0
if (( `echo "$min > $s1 " | bc -l` ))
then
        min=$s1
fi

if (( `echo "$min > $s2 " | bc -l`))
then
        min=$s2
fi
if (( `echo "$min > $s3 " | bc -l`))
then
        min=$s3
fi
echo "MinValue is :$min "

