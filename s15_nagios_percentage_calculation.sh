#!/bin/bash
read -p "Enter the CPU Core: " cpu 
read -p "Enter the Load Value: " load
#percentage=$[100*${load}%${cpu}] | bc
#percentage=$(echo "$cpu * $load" | bc)
percentage=$(echo "100 * $load / $cpu" | bc)
echo Percentage value is $percentage;
exit 0
