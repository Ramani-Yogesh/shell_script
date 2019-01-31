#!/bin/bash
echo "enter the first value:"
read a
echo "enter the second value:"
read b
if [ $a == $b ]; then
echo "The first and second values are equal";
elif [ $a -gt $b ]; then
echo "the first value is greater";
#elif [ "$a" -lt "$b" ]; then
else
echo "the second value is greater";
fi
