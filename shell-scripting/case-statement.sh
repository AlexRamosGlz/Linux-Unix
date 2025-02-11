#!/bin/bash

# Este script demuestra el case statement
case "$1" in
 start) 
	echo 'Starting.';;
 stop) 
	echo 'Stoping.';;
 status|state|--status|--state)
	echo 'Status: ';;
 *)
	echo 'Supply a valid option.' >&2
	exit 1
	;;
esac
