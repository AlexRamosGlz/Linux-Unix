#!/bin/bash

# Asegurarnos de que el comando solo pueda ser ejecutado por usuario root
if [[ $UID -ne 0  ]]
then
	echo "El scrip solo puede ser ejecutado por usario root"
	exit 1
fi

# Asegurarnos de que el username y el comentario fueron incluidos
if [[ $# -eq 0 ]]
then	
	echo "Uso: ${0} [USER_NAME COMMENT...]"
	exit 1
fi

# Crear el usuario con los parametros provistos
USER_NAME=${1}
shift
COMMENT=${*}
echo

adduser -c "${COMMENT}" -m ${USER_NAME}

if [[ ${?} -ne 0  ]]
then
	echo "Error al crear el usuario"
	exit 1
fi

# Generar la contrase√a automaricamente
PASSWORD=$( date +%s%N | sha256sum | head -c12 ) 
echo $PASSWORD | passwd --stdin $USER_NAME

if [[ ${?} -ne 0 ]]
then
	echo "Error al crear la contrase√±a de ${USER_NAME}"
fi

# Forzar a cambiar la contrase√a en el primer login
passwd -e $USER_NAME

echo
echo "Username: ${USER_NAME}"
echo "Pasword: ${PASSWORD}"
echo "Host: ${HOSTNAME}"
echo 

exit 0
