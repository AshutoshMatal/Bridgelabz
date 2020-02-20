echo " Fliping Coin "
randomvalue=$((RANDOM%2))
if(( $randomvalue == 0 ))
then
   echo "     Head     "
else
   echo "     Tail     "
fi
