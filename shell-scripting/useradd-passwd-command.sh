#!/bin/bash


# El script crea una cuenta en el sistema local
# Te pedira la nombre de la cuenta y su contraseña

# Pedir el username
read -p 'Enter your username: ' USER_NAME

# Pedir el nombre real del usuario
read -p 'Enter user´sreal nam:e ' COMMENT

# Pedir su contraseña
read -p 'Enter  password: ' PASSWORD

# Crear el usuario
useradd -c "${COMMENT}" -m ${USER_NAME}

# Crear una contraseña para el usuario
echo ${PASSWORD} | passwd --stdin ${USER_NAME} 

# Forzar al usuario cambiar de  contraseña en su primer login
passwd -e ${USER_NAME}
