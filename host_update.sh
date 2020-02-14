#!/bin/bash

rm host
sort -u /etc/hosts > hosts.new && mv hosts.new host
echo "host file generated for compare with new file" 
new_host=`awk 'NR==FNR{a[$0];next}!($0 in a)' host a.txt`
if [[ $new_host > 0 ]];
then
echo "Adding new hosts entry :" $new_host 
sleep 2
echo "$new_host" | sudo tee -a /etc/hosts > /dev/null
sleep 2
echo "Added new host "$new_host" in /etc/hosts file"
else
echo "no data found inside host file"
echo "Deleted host file from this location"
fi
