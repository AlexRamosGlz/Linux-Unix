#!/bin/bash

# Mostrar el UID y username del usuario que esta ejecutando el script
# Mostrar si el user is "vagrand" o no

# Mostrar el UID
echo "Your UID is ${UID}"

# Solo mostrar si el UID no es 1000
UID_TO_TEST_FOR='501'

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
    echo "Your UID does not match ${UID_TO_TEST_FOR}"
    exit 1
fi

# Mostrar el username
USER_NAME=$(id -un)

# Probar is el commando fue un exito
if [[ "${?}" -ne 0 ]] # '${?}' es una variable especial que contiene el exit status del commando anterior
then                  # el exit status 0, significa que se realizo con exito el comando
    echo "the id command did not execute succesfully"
    exit 1
fi
echo "Your username is ${USER_NAME}"

# Probar contra un string
USER_NAME_TO_TEST_FOR='alexramosglz'

if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
    echo "Your username matches ${USER_NAME_TO_TEST_FOR}"
fi

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
    echo "Your usernmae does not match ${USER_NAME_TO_TEST_FOR}."
    exit 1
fi

exit 0