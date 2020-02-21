echo $1 $2
day=$1
month=$2
if [[ $day -ge 20 && $month -eq 03  && $day -le 31 ]] || [[ $month -eq 04 && $day -ge 01 && $day -le 30 ]] || [[ $month == 05 && $day -ge 01 && $day -le 31 ]]  || [[ $day -ge 01 && $day -le 20 && $month -eq 06 ]]
then
echo "True"
else
echo "False"
fi
