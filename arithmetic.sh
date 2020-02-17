echo  "Enter the value of a : " 
read a
echo  "Enter the value of b : "
read b
echo "Enter the value of c : " 
read c
s=`echo $a + $b / $c  | bc -l`
echo " Result is :" $s 
