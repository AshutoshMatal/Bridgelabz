PlayerOne=1
PlayerTwo=2  
PlayerThree=3  
PlayerFour=4  
PlayerFive=5 
PlayerSix=6
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
declare -A number
while (( $count1<10 && $count2<10 && $count3<10 && $count4<10 && $count5<10 && $count6<10 ))
do
dice=$((RANDOM%6+1))
case $dice in
1)		count1=$((count1+1))
		number[$PlayerOne]="$count1"
		;;
2)    count2=$((count2+1))
      number[$PlayerTwo]="$count2"
      ;;
3)    count3=$((count3+1))
      number[$PlayerThree]="$count3"
      ;;
4)    count4=$((count4+1))
      number[$PlayerFour]="$count4"
      ;;
5)    count5=$((count5+1))
      number[$PlayerFive]="$count5"
      ;;
6)    count6=$((count6+1))
      number[$PlayerSix]="$count6"
      ;;
esac
done
echo "${!number[@]} : ${number[@]}"
max=0
min=11

for ((counter=1;counter<=6;counter++ ))
do
if (("${number[$counter]}">$max))
then
 max="${number[$counter]}"
fi
done
for ((counter=1;counter<=6;counter++ ))
do
if (("${number[$counter]}"<$min ))
then
 min="${number[$counter]}"
fi
done
echo "Maxvalue is :$max"
echo "MinValue is :$min"

