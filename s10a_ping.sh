#!/bin/bash
read -p "Enter the domain name:" domain;
echo -e "Please wait.......\n"
output=`ping -c3 $domain 2> /dev/null`
a=$(echo $?)
if [ $a == 0 ]
then
echo "$domain server is up"
else
echo "$domain server is down"
fi
