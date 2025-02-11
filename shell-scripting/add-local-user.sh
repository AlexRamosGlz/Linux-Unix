#!/bin/bash

# Crear usuarios locales

# Asegurarse de que se correra con root user
USER_ID=(UID)

if [[ "${USER_ID}" -ne 0 ]]
then 
	echo 'Nececitas ser root para correr este comando'
	exit 1
fi


# Pedir el username
read -p 'Escriba el username para el usario a crear: ' USER_NAME

# Pedir el nombre real del usuario
read -p 'Escriba el nombre real del usuario a crear: ' REAL_NAME

# Pedir la contrase√±a temoral
read -p 'Escriba la contrase√±a para el usuario a crear: ' PASSWORD

# Crear el usuario
adduser -c "${REAL_NAME}" -m ${USER_NAME}

# Asegurarse de que el usuario se creo correctamente
if [[ "${?}" -ne 0 ]]
then
	echo 'Error al crear el usuario.'
	exit 1
fi

# Guardar Password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Cambiar la contrase√a en el primer login
passwd -e ${USER_NAME} 

# Mostrar el username, su contrase√a y el host donde la cuenta fue creada
echo
echo "Username: ${USER_NAME}"
echo
echo "Password: ${PASSWORD}"
echo
echo "Host:${HOSTNAME} "
exit 0
