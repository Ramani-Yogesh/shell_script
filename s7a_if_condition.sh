#!/bin/bash
read -p "enter the first value: " x;
read -p "enter the second value: " y;
read -p   "1. Addition 
2. Subtraction 
3. Multiplication
4. Division 
5. Exit from menu
Please enter your selection in number: " function;
#read -p "enter the first value: " x;
#read -p "enter the second value: " y;
if [ $function == "1" ] 
then
 z=$[$x + $y];
echo "The addition of $x and $y is: $z";
elif [ $function == "2" ]
then
let z=$x-$y;
echo "The subtraction of $x and $y is: $z";
elif [ $function == "3" ]
then
let z=$x*$y;
echo "The multiplication of $x and $y is: $z";
elif [ $function == "4" ]
then
let z=$x/$y;
echo "The division of $x and $y is: $z";
elif [ $function == '5' ] 
then
echo "exit successfully";
exit 0;
else 
echo "You entered wrong option, Please try again";
fi

