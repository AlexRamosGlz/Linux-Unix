#!/bin/bash

##      --  tr [OPTION]... SET1 [SET2] --       ##

    # El comando tr que significa "translate", es muy 
    # usado para eliminar o remplazar texto 
    #
    # El comando no toma un archivo como argumento sino  
    # que lee el STDIN
    #
    # NOTA: el comando no altera archivos

#   Remplazar texto

tr ' ' '-' <<< "Teresa Guadalupe Velazquez Gomez"

    # Por defualt, el comando tr, remplaza set1 por el 
    # set2 de el texto proveido


tr '[:lower:]' '[:upper:]' <<< "Jorge Alejandro Ramos Gonzalez"

    # tambien se puede usar para convertir de minusculas a mayusculas
    # o viceversa, con las clases [:lower:] y [:upper:]


tr -s " " <<< "texto                   largo"

    # Un uso muy popular de tr es el de transformar una secuencia larga
    # del mismo caractar a uno solo
    #
    #   -s  ->  la opcion s o "squeezing", es la encargada de hacerlo


#   Eliminar caracteres

tr -d "aeio" <<< "hola mundo!"

    # -d    ->  esta opcion elimina los caracteres set1 en el texto proveido