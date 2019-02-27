#!/bin/bash
/etc/init.d/apache2 status >> /dev/null
a=$(echo $?);
if [ $a -eq 0 ]; 
then
	echo "Apache Service is running already";
else 
	echo "Apache Service is not running, wait it will start";
sudo /etc/init.d/apache2 start >> /dev/null
echo "Now Apache service is running";
#sudo /etc/init.d/apache2 status
fi
