#! /bin/bash

date=`date '+%B %d %Y'`
time1=`date '+%r'`

total_mem=`free -h | head -2 | tail -1 |  awk '{print $2}'`

used_mem=`free -h | head -2 | tail -1 |  awk '{print $3}'`

free_mem=`free -h | head -2 | tail -1 |  awk '{print $4}'`

total_disk=`df -h --output=size --total | awk 'END {print $1}'`

used_disk=`df -h --output=used --total | awk 'END{print $1}'`

avail_disk=`df -h --output=avail --total | awk 'END{print $1}'`


echo -e "\n----------------------------------------------\n"

echo -e "Date: $date"
echo -e "Time: $time1\n"

echo "------------------------------------------------"

echo -e "\n\t\tTotal\tUsed\tAvailable \n"

echo -e "RAM : \t\t$total_mem\t$used_mem\t$free_mem" 

echo -e "\nDisk Space: \t$total_disk\t$used_disk\t$avail_disk\n"



