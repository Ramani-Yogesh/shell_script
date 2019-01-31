#!/bin/bash 
echo -e  "What is your name ?\n"; 
read name; 
echo  -e  "\nHI $name Nice to Meet you...................";
echo  "This line prints without space";

#variables
echo "HOME: $HOME"
echo "PATH: $PATH"
echo "USER: $USER"
SERVER_NAME=$(hostname)
SERVER_NAME=`hostname`

echo "Your Host Name is: ${SERVER_NAME}"


# Use curly braces to print variables
MY_VARIABLE="Write"
echo "Output $MY_VARIABLE"
echo "Output ${MY_VARIABLE}ing."

exit 0; 



