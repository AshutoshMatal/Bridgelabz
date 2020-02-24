#/bin/bash -x

read -p "Enter number : " number

#FUNCTION TO CHECK IF NUMBER IS PALINDROME
function isPalindrome(){
	local sum=0;
	local number=$1
	while [ $number -gt 0 ]
	do
		remainder=$((number%10));
		sum=$((sum*10+remainder));
		number=$((number/10));
	done

	if [ $sum -eq $1 ]
	then
		echo "$1 is Palindrome"
	else
		echo "$1 is not Palindrome "
	fi
}

#FUNCTION TO CHECK IF NUMBER IS PRIME
function isPrime(){
	local isPrime=0;
	for (( counter=2; counter<=$1/2; counter++ ))
	do
		if [ $(($1%$counter)) -eq 0 ]
		then
			isPrime=1;
		break;
		fi
	done
	if [ $isPrime -eq 0 ]
	then 
		echo $1 is Prime
	else
		echo $1 is not Prime
	fi
}

function isPalindromePrime(){
        local sum=0;
	local num=$number
        while [ $num -gt 0 ]
        do
                remainder=$((num%10));
                sum=$((sum*10+remainder));
                num=$((num/10));
        done

        if [ $sum -eq $1 ]
        then
                echo "$1 is Palindrome"
        else
                echo "$1 is not Palindrome "
        fi
}
echo "$( isPrime $number )"
echo "$( isPalindrome $number )"
echo "$( isPalindromePrime $number)"
