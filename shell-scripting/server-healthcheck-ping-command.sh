#!/bin/bash

# este script pingea una lista de servidores y reporta su status

SERVER_FILE='/home/vagrant/vagrant/servers'

if [[ ! -e $SERVER_FILE ]]
then
	echo "Cannot open $SERVER_FILE" >&2 
	exit 1
fi

for SERVER in $(cat $SERVER_FILE)
do
	echo "Pinging $SERVER"
	ping -c 1 $SERVER &> /dev/null
   	if [[ $? -ne 0 ]]
	then
		echo "$SERVER down." >&2 
	else
		echo "$SERVER up."
	fi
done