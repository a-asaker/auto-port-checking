#!/bin/bash
# Coded By : A_Asaker
usage='	| Auto Port Checker - By A_Asaker |
	~ Usage : ./port_check.sh [ host ] [ Port1 ] [ Port2 ]
		    [ Port3 ] [ Ports_list1 ] ..
		- host : 
			~ -l => local ip address, for this device.
			~ -p or -r => public/remote ip address, for this device.
			~ <ip address> => any other device ip address.
		- ports : ~ if any port is under 1024, then you should run it 
			    with "sudo" [as a root].
	~ Example : ./port_check.sh -l 214 2334 3563
	~ Example : ./port_check.sh -r 214 $(seq 45 578)
	~ Example : ./port_check.sh 231.45.2.67 $(seq 1 100) 443 12455'
if (( $# < 2 )); then
	echo "${usage}"
	exit 0
fi

for c in $@
do
	if [ $c != $1 ]
	then
		x=$(python3 Port_checker.py $1 $c)
		err=$(echo "$x" | grep "There Is No Internet Access")
		if [ -n "$err" ]; then
			echo $x
			exit 0
		else
			echo "${x}"
		fi
	fi
done
