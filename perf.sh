#! /bin/bash

#Used date and time so it shows when the time when script runs and the memory details for that time.

date=`date '+%B %d %Y'`
time1=`date '+%r'`

#For total, used and free memory, 'free' command shows more details. Here we have scrapped other values only to display the required values.

total_mem=`free -h | head -2 | tail -1 |  awk '{print $2}'` 
used_mem=`free -h | head -2 | tail -1 |  awk '{print $3}'`
free_mem=`free -h | head -2 | tail -1 |  awk '{print $4}'`

#For disk space, df command is used here. For specific directory you can use du also. 

total_disk=`df -h --output=size --total | awk 'END {print $1}'`
used_disk=`df -h --output=used --total | awk 'END{print $1}'`
avail_disk=`df -h --output=avail --total | awk 'END{print $1}'`


echo -e "\n----------------------------------------------\n"

echo -e "Date: $date"
echo -e "Time: $time1\n"

echo "------------------------------------------------"

#Used the tabs in order to display values in my editor.
echo -e "\n\t\tTotal\tUsed\tAvailable \n"

echo -e "RAM : \t\t$total_mem\t$used_mem\t$free_mem" 

echo -e "\nDisk Space: \t$total_disk\t$used_disk\t$avail_disk\n"


