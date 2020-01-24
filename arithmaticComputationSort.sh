#!/bin/bash -x
echo "--------------------------------------WELLCOME TO ARITHMATIC COMPUTATON AND SORTING------------------------------------------"
read -p "Enter First Number:" a 
read -p "Enter Second Number:" b
read -p "Enter Third Number:" c
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=`echo "scale=2; $c+$a/$b" | bc`
result4=$((($a%$b)+$c))
echo "Arithmatic Operation result for number1+number2*number3 is:" $result1
echo "Arithmatic Operation result for number1*number2+number3 is:" $result2
echo "Arithmatic Operation result for number3+number1/number2 is:" $result3
echo "Arithmatic Operation result for number1%number2+number3 is:" $result4
