#!/bin/bash
read -p "Enter the CPU Core: " cpu 
read -p "Enter the Load Value: " load
#percentage=$[100*${load}%${cpu}] | bc
#multiple=$(echo "$cpu * $load" | bc)
multiple=$(echo "100 * $load / $cpu" | bc)
echo $multiple;
#echo Your percentage value is $percentage
#exit 0
