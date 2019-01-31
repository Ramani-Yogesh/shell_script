#!/bin/bash
echo "enter the first value:"
read a
echo "enter the second value:"
read b
if [ "$a" == "$b" ]; then
#if [ "$a" -eq "$b" ]; then
echo "The first and second values are equal";
elif [[ "$a" > "$b" ]]; then
#elif [ "$a" -gt "$b" ]; then
echo "the first value is greater";
else
echo "the second value is greater";
fi
