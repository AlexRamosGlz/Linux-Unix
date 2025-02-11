#!/bin/bash

# Demostrar el uso de shift y el while loop

# Loopear atraves de todos los positional parameters
while [[ ${#} -gt 0 ]] 
do
	echo "Number of parameters ${#}"
	echo "Parameter 1: ${1}"
	echo "Parameter 2: ${2}"
	echo "Parameter 3: ${3}"
	echo
	shift # cambia de lugar los parametros una posicion atras (paramaetro[1] -> parametro[0]...parametro[n] -> paramtro[n - 1])
done 





# Demostrar un loop infinito
while true  # 'while [[ true ]]' es igual a 'while true', solo con diferente syntax (mas entendible)
do
	echo $RANDOM
	sleep 1s  # el comando sleep es usado para pasar N segundos el scrip
	exit 1
done

