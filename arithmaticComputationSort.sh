#!/bin/bash
echo "--------------------------------------WELLCOME TO ARITHMATIC COMPUTATON AND SORTING------------------------------------------"
declare -A ResultDictionary
read -p "Enter First Number:" a 
read -p "Enter Second Number:" b
read -p "Enter Third Number:" c

result1=`echo "scale=2; $a+$b*$c" | bc`
result2=`echo "scale=2; $a*$b+$c" | bc`
result3=`echo "scale=2; $c+$a/$b" | bc`
result4=`echo "($a%$a)+$b" | bc`

ResultDictionary[result1]=$result1
ResultDictionary[result2]=$result2
ResultDictionary[result3]=$result3
ResultDictionary[result4]=$result4

for (( i=1; i<=4; i++ ))
do
	Array[$i]=${ResultDictionary[result"$i"]}
done

echo ${!ResultDictionary[@]}
echo ${ResultDictionary[@]}
echo "Array Values:"
echo ${Array[@]}
arrayLength=${#Array[@]}

for (( i=1; i<$arrayLength; i++ ))
do
	for (( j=$(($i+1)); j<=$arrayLength; j++ ))
	do
		if [ ${Array[$i]%%.*} -lt ${Array[$j]%%.*} ]
		then
			temp=${Array[$i]}
			Array[$i]=${Array[$j]}
			Array[$j]=$temp
		fi
	done
done
echo "After Sorting Array in Descending Order"
echo ${Array[@]}
