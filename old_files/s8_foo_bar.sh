#!/bin/bash
echo "enter the value:"
read value
if [ "$value" == "foo" ];
then
echo "bar";
elif [ "$value" == "bar" ];
then
echo "foo";
else  
echo "you entered wrong value";
fi
