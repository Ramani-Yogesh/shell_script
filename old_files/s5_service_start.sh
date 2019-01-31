#!/bin/bash
/etc/init.d/apache2 status >> /dev/null
a=$(echo $?);
if [ $a -eq 0 ]; 
then
	echo "Service is running already";
else 
	echo "Service is not running, wait it will start";
	/etc/init.d/apache2 start >> /dev/null
	echo "Now service is running";
fi
