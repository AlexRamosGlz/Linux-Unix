#!/bin/bash

# This scrip generates a list of random passwords.

# A random number as a password.
PASSWORD=${RANDOM}
echo "${PASSWORD}"

# Three random number toghether
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo ${PASSWORD}

# Use the current date as password
PASSWORD=$(date +%s) # el signo + es usado para indicar se usara un formato
echo ${PASSWORD}

# Usar nanosegundos para randomizar la contrase√a
PASSWORD=$(date +%s%N)
echo ${PASSWORD}

# usar sha256sum para convertir numero a exadecimal ( no es su uso primario ) 
PASSWORD=$(date +%s%N | sha256sum | head -c8 ) #usamos el comando head para reducir el otuput a solo 8 caracteres
echo ${PASSWORD}

# Crear un contrase√±a mucho mejor
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
echo ${PASSWORD}
