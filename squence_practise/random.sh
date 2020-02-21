r1=`echo RANDOM%0.9+0.1 | bc -l`
echo "$r1"
r2=`echo RANDOM%0.9+0.1 | bc -l`
r3=`echo RANDOM%0.9+0.1 | bc -l`
r4=`echo RANDOM%0.9+0.1 | bc -l`
r5=`echo RANDOM%0.9+0.1 | bc -l`
sumofRandom=`echo $r1 + $r2 + $r3 + $r4 + $r5  | bc -l` 
average=`echo $sumofRandom / 5 | bc -l`
echo "Enter sum is :$sumofRandom"
echo "Enter average is :$average"

