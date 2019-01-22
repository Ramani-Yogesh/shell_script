#!/bin/bash
echo "enter the value:"
read a
b=$(($a % 2))
if [ $b == 0 ]
then
echo "it is a even number";
else
echo "it is a odd number";
fi

