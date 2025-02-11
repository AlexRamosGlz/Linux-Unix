#!/bin/bash

# Asegurarnos de que el comando solo pueda ser ejecutado por usuario root
if [[ $UID -ne 0  ]]
then	
	echo
	echo "El scrip solo puede ser ejecutado por usario root" >&2
	echo
	exit 1
fi

# Asegurarnos de que el username y el comentario fueron incluidos
if [[ $# -eq 0 ]]
then	
	echo
	echo "Uso: ${0} [USER_NAME COMMENT...]" >&2
	echo
	exit 1
fi

# Crear el usuario con los parametros provistos
USER_NAME=${1}
shift
COMMENT=${*}
echo

adduser -c "${COMMENT}" -m ${USER_NAME} &> /dev/null

if [[ ${?} -ne 0  ]]
then
	echo
	echo "Error al crear el usuario" >&2
	echo
	exit 1
fi

# Generar la contraseÃa automaricamente
PASSWORD=$( date +%s%N | sha256sum | head -c12 ) 
echo $PASSWORD | passwd --stdin $USER_NAME &> /dev/null  

if [[ ${?} -ne 0 ]]
then	
	echo
	echo "Error al crear la contraseÃ±a de ${USER_NAME}"  >&2
	echo
	exit 1
fi


# Forzar a cambiar la contraseÃa en el primer login
passwd -e $USER_NAME &> /dev/null

echo
echo "Username: ${USER_NAME}"
echo "Pasword: ${PASSWORD}"
echo "Host: ${HOSTNAME}"
echo 

exit 0
