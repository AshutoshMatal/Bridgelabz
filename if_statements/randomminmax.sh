s0=$((RANDOM%999+100))
s1=$((RANDOM%999+100))
s2=$((RANDOM%999+100))
s3=$((RANDOM%999+100))
s4=$((RANDOM%999+100))
echo $s0
echo $s1
echo $s2
echo $s3
echo $s4
max=$s0
if (( "$max < $s1 " ))
then
        max=$s1
fi
max=$s1
if (( "$max < $s2"  ))
then
        max=$s2
fi
max=$s2
if (( "$max < $s3 " ))
then
        max=$s3
fi
max=$s3
if (( "$max < $s4 " ))
then
        max=$s4
fi
echo "MaxValue is :$max "


min=$s0
if (( "$min > $s1 " ))
then
        min=$s1
fi
min=$s1
if (( "$min > $s2 " ))
then
        min=$s2
fi
min=$s2
if (( "$min > $s3 " ))
then
        min=$s3
fi
min=$s3
if (( "$min > $s4 " ))
then
        min=$s4
fi

echo "MinValue is :$min "

