#!/bin/bash
read -p "Enter the CPU Core: " cpu 
read -p "Enter the percentage Value: " percentage
load=$(echo "$cpu * $percentage / 100" | bc)
#percentage=$(echo "100 * $load / $cpu" | bc)
echo "load  value is $load"
exit 0
