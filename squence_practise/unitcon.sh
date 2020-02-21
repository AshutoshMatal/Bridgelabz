ft=`echo "42/12" | bc -l`
echo " convert 42 inches into ft : $ft "
rp=`echo "60 * 0.3048" | bc -l`
rp1=`echo "40 * 0.3048" | bc -l`
result=`echo "$rp * $rp1" |bc -l`
echo " regular plot is: $result "
ap=`echo "$result * 25 / 4046.86 " | bc -l`
echo "area is : $ap"
