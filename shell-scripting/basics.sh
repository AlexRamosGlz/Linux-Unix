#!/bin/bash
# Shebang -> determina que interprete va a correr el script, en este caso sera bash

# chmod -> cambia los permisos  

# Para correr script desde el directorio actual
#   ~ ./[SCRIPT_NAME]

# Mostrar hello world
echo "hola mundo"

# echo -> es un shell builtin comando, significa que no ocupa ningun programa externo
# para ejecutarse

# type [COMMAND] -> es comando que indica si el comando a evaluar es si o no 
# es shell builtin

type echo
type -a echo

echo "##########################"

type echo unzip
type -a echo unzip

# Asignar valor a una variable
WORD='script'

# Mostrar el valor de la variable (usar la variable en un commando)

echo "$WORD"


# append texto a la variable
echo "${WORD}ing is fun".

# juntar 2 variables en texto
ENDING='ed'
echo "thsis is ${WORD}${ENDING}"

# Cambiar el valor de una variable (reassignment)
ENDING='ing'
echo "${WORD}${ENDING} is fun"


# nada dentro de single quotes ('') sera interpretado por bash
echo '$WORLD'
