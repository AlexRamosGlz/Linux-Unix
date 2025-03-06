#!/bin/bash

# Mostar el UID (user ID) y username del usuario que ejectua el script
# Mostrar si el usuario es o no root user

# Mostrar UID
echo "your UID is ${UID}"


# Mostrar el username
USER_NAME=$(id -un) # para guardar el output de un comando en una variable se usa este syntaxis

#USER_NAME=`id -un` -> vieja syntaxis

echo "Your username is ${USER_NAME}"

# Mostrar si es o no un root user
if [[ "${UID}" -eq 0 ]]  # syntax -> if [[ <EXPRESION> ]] then...else..fi
then
	echo "${USER_NAME} is root"
else 
	echo "${USER_NAME} is not root"
fi

# Ternary Operator

[ -f conditionals.sh ] &&  touch conditionals.sh || echo "no existe"

  # * [CONDICION] && <do_if_true> || <do_if_false> * #



