#!/bin/sh 

pkill -f libcamera-jpeg 

SPACE=$(df / -m | awk '/[0-9]%/{print $(NF-2)}') 

if [ "$SPACE" -gt "1024" ] 
then 
DATE=$(date +"%Y-%m-%d_%H:%M:%S") 
libcamera-jpeg -n -o /home/apbarratt/captures/$DATE.jpg 
else 
echo "Disk space too low." 
fi 
