#!/bin/bash 
/etc/init.d/apache2 status > /dev/null 
a=$(echo $?); 
if [ $a -eq 0 ];
 then
 echo " service is running " 
else 
/etc/init.d/apache2 start >> /dev/null
fi
