echo "Enter a year "
read year
if [`expr $ year %4 `eq 0 ];
then
echo $year is aleap year.
else
echo $year is not a leap year.
fi
