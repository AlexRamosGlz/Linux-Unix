#!/bin/bash

playground() {
    local SALUDO=$1
    local -n ARRAY=$2
   
    [[ $# -ne 2 ]] && echo "la funcion nececita los 2 parametros, parametros pasado $#" \
    || echo "Parametros correctos"

    index=0
    array_length=$(("${#ARRAY[@]}"))

    echo $array_length
    while [[ "$index" -le array_length ]]; do
        echo "${ARRAY[$index]}"
        index=$(($index + 1))
    done

    echo "funcion $FUNCNAME() terminada, $SALUDO"
}

array=(1 2 3 4 5)
saludo="Hola Mundo"

playground "$saludo" array