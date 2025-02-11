#!/bin/bash

usage() {
 echo "Usage: $0 [-nsv] [-f filename] COMMAND"
 exit 1
}

log() {
 local MESSAGE=$*
 
 if [[ $VERBOSE = 'true' ]]
 then	
	echo -e "$CURR_SERVER: "
 fi
}

run() {
 local COMMAND_TO_RUN=$*
 	
 if [[ $DRY_RUN = 'true' ]]
 then
	log DRY RUN:  ssh -o ConnectTimeout=2  $CURR_SERVER $COMMAND_TO_RUN
 	return $?
 fi

 if [[ $ROOT = 'true' ]] 
 then
	log 
	ssh -o ConnectTimeout=2 $CURR_SERVER sudo $COMMAND_TO_RUN
    	return $?
 fi
 
 log
 ssh -o ConnectTimeout=2  $CURR_SERVER $COMMAND_TO_RUN
 return $?
}


while getopts "vnsf:" OPTION
do 
  case $OPTION in
 	v)
	  VERBOSE='true'
	  echo "Verbose mode on."
 	  ;;
	n)
	  DRY_RUN='true'
	  ;;
	s)
	  ROOT=true
	  ;;
	f)
	  FILE=$OPTARG
	  ;;
	*)
	  usage
	  ;;
  esac 
done

shift

COMMAND=$*
FILE='/home/vagrant/vagrant/servers'

for SERVER in $(cat $FILE)
do
	CURR_SERVER=$SERVER
	run $COMMAND
done

exit 0