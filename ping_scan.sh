#!/bin/bash

for i in {1..254}
do 
	ip=192.168.85.$i
	ping -c 1 -W 0.1 $ip > /dev/null 2>&1
	if [ $? -eq 0 ];then
		echo "$ip up"
	else 
		echo "$ip down"
	fi
done


for a in {1..128}
do
	for b in {1..254}
	do
		ip=10.17.$a.$b
		ping -c 1 -W 0.1 $ip > /dev/null 2>&1
		if [ $? -eq 0 ];then 
			echo "$ip up"
		else
		 	echo "$ip down"
		fi 
	done 
done 
