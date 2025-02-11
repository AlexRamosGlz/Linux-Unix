#!/bin/bash

# Display what the user typed on the command line

echo "You executed this command: ${0} and ${1} "  # Positional parameter (${n...}) son variables donde se guardan commandos y argumentos que se escriben el la linea de comandos

# Mostrar el path y el nombre del documento del script
echo $(basename /vagrant/lesson-6.sh) # asename regresa el nombre del file sin el path

echo $(dirname /vagrant/lesson-6.sh) # dirname regresa el nombre del directorio sin el file
# NOTA ninguno de los comandos anteriores verifica si el documento o directorio existe o no 

# otra forma de hacer lo anterior
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script."

# Mostrar cuantos arguments fueron provistos
# ( adentro del scrip son parameters, afuera son arguments)
NUMBER_OF_ARGUMENTS=$# # $# = ${#} -> $# es el numbero de argumentos que el usuario provello
echo "You supplied $NUMBER_OF_ARGUMENTS argument(s) on the command line."

# asegurarnos de que al menos 1 argumento sea provisto
if [[ $NUMBER_OF_ARGUMENTS -lt 1 ]]
then 
	echo "USAGE: $0 USER_NAME [USER_NAME...]"
	exit 1
fi

# Generar y mostrar una contraseña por cada parametro
for USER_NAME in $@
do
	PASSWORD=$(date +%s%N | sha256sum | head -c8)
	echo "$USER_NAME: $PASSWORD"
done

for X in {1..10}
do
	if [[ $X%2 -eq 0 ]]
	then 
		echo par
	fi
done
exit 0

