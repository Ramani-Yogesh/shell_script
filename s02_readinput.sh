#!/bin/bash
printf  "Enter your first name:\n";
read first
echo "Enter your last name:"
read last
echo "HI, ${first} ${last}" 
echo "Your First name is : $first " 
echo "Your  Last name is : $last";

#We can use "printf" instead of "echo". Because "echo" sometimes shows the error when we using "\n", but printf does not show.
##Different "read" method
read -p "Enter your first name: " first;
read -p "Enter your last name: " last;
echo "Hi, $first$last";
echo -e  "Your first name is: \n$first";
echo -e "Your last name is: \n$last";

