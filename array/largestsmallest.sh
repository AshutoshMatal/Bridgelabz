for (( counter=1; counter<=10; counter++))
do
array1[$counter]=$((RANDOM%900+100))
done

echo ${array1[@]}

function sort()
{
array=("$@")

for((i=0; i<$((${#array[@]}-1));i++))
do
for((j=0;j<$((${#array[@]}-1));j++))
do
        if [ ${#array[j]} -gt ${array[j+1]} ]
        then
        temp=${array[j]}
        ${array[j]}=${array[j+1]}
        ${array[j+1]}=temp

fi
done
done

echo ${array[@]}
}
array=($(sort ${array1[@]}))
echo ${array[@]} 


length=$((${#array1[@]})) 

echo Second largest Number : ${array[length-2]} 
echo Second smallest Number: ${array[1]}
