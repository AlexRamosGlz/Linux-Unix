#!/bin/bash

##      -- wc [OPTIONS] [FILE...] --      ##

    # Muestra cuantas nuevas lineas, palabras y bytes tiene 
    # un archivo, y si son suplidos mas de un archivo en el 
    # comando entonces se sumaran todo lo anterior
    #
    # Se puede pensa que el comando wc significa "word count"

wc -lmw /usr/bin/zip 

    # Las opciones del comando anterior muestran...
    #
    #   l   ->  Muestra el numero de lineas 
    #   w   ->  Muestra el numero de palabras
    #   m   ->  Muestra el numero de caracteres