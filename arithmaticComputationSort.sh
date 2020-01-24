#!/bin/bash -x
echo "--------------------------------------WELLCOME TO ARITHMATIC COMPUTATON AND SORTING------------------------------------------"
read -p "Enter First Number:" a
read -p "Enter Second Number:" b
read -p "Enter Third Number:" c

echo "Arithmatic Operation result for number1+number2*number3 is:" $(($a+$b*$c))
echo "Arithmatic Operation result for number1*number2+number3 is:" $(($a*$b+$c))
