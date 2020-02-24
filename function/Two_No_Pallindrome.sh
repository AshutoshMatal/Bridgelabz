#!/bin/bash -x

read -p "Enter number : " number

function isPalindrome()
{
      local sum=0;
		#HERE IS OUR SECOND NUMBER
		temp=321
      local number=$1
      while [[ $number -gt 0 ]]
      do
               remainder=$((number%10));
               sum=$((sum*10+remainder));
               number=$((number/10));
        done

        if [ $sum -eq $temp ]
        then
                echo "$1 is Palindrome"
        else
                echo "$1 is not Palindrome "
        fi
}
result="$( isPalindrome $number)"
echo "$result"
