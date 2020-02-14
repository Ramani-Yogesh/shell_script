#!/bin/bash

# Description: This script will add the hostentry  for the below mentioned servers. 

# Script Usage
     # chmod +x hosts.sh
     # sudo ./hosts.sh

# Note:
     # -

##Variables
hosts_file=/etc/hosts
wiki_server=wiki.perfios.com
wiki_ip=192.168.0.155
gitlab_server=emu
gitlab_ip=192.168.0.11
finch_server=finch
finch_ip=192.168.0.42
flamingo_server=flamingo
flamingo_ip=192.168.0.98
db_server=db-job1.integreat.perfios.com
db_ip=172.17.10.7
jobs_server=background-jobs.integreat.perfios.com
jobs_ip=172.17.10.48

##Adding Emu Server host entry
emu=`grep $gitlab_ip $hosts_file`
output=`echo $?`
if [[ $output -eq 0 ]]
then
echo "$gitlab_server server entry already added."
else 
echo "$gitlab_ip    $gitlab_server ##Perfios" >> $hosts_file
echo "$gitlab_server server entry successfully added."
fi

##Adding WIKI Server host entry
wiki=`grep $wiki_ip $hosts_file`
output=`echo $?`
if [[ $output -eq 0 ]]
then
echo "$wiki_server server entry already added."
else 
echo "$wiki_ip    $wiki_server ##Perfios" >> $hosts_file
echo "$wiki_server server entry successfully added."
fi

##Adding Flamingo Server host entry
flamingo=`grep $flamingo_ip $hosts_file`
output=`echo $?`
if [[ $output -eq 0 ]]
then
echo "$flamingo_server server entry already added."
else 
echo "$flamingo_ip    $flamingo_server ##Perfios" >> $hosts_file
echo "$flamingo_server server entry successfully added."
fi

##Adding Finch Server host entry
finch=`grep $finch_ip $hosts_file`
output=`echo $?`
if [[ $output -eq 0 ]]
then
echo "$finch_server server entry already added."
else 
echo "$finch_ip    $finch_server ##Perfios" >> $hosts_file
echo "$finch_server server entry successfully added."
fi

##Adding db_server host entry
ftl1=`grep $db_ip $hosts_file`
output=`echo $?`
if [[ $output -eq 0 ]]
then
echo "$db_server server entry already added."
else 
echo "$db_ip    $db_server ##Perfios" >> $hosts_file
echo "$db_server server entry successfully added."
fi

##Adding jobs_server host entry
ftl2=`grep $jobs_ip $hosts_file`
output=`echo $?`
if [[ $output -eq 0 ]]
then
echo "$jobs_server server entry already added."
else 
echo "$jobs_ip    $jobs_server ##Perfios" >> $hosts_file
echo "$jobs_server server entry successfully added."
fi
