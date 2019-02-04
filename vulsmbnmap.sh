#!/bin/bash

if [ -z "$1" ];then
echo "**** n00b smb script ****"
echo "usage $0 <target ip>"
exit 0
fi

for vuln in $(ls /usr/share/nmap/scripts/*smb* |grep vuln |cut -d "/" -f6);do

nmap -p 445,139 $1 --script $vuln
done
