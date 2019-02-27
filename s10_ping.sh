#!/bin/bash
ping -c3 google.com  >> /dev/null
a=$(echo $?)
if [ $a == 0 ] 
then
echo "server is up"
else 
echo "server is down"
fi

