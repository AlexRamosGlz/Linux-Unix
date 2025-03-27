#!/bin/bash

##      -- cut OPTION... [FILE]... --       ##

    # el comando cut extrae secciones especificas de
    # linea de cada archivo proveido
    #
    # se usa principalmente para mostras columnas de
    # datos o ciertos caractares de cada linea de cada
    # archivo


#   Mostrar caracteres por linea

cut -c 1 example-csv.csv
cut -c 1,5 example-csv.csv
cut -c 1-5 example-csv.csv

   # la primer funciones del comando es mostrar caracteres por
   # de cada linea 
   #
   # la opcion "-c" se puede usar de la siguente forma...
   #
   #    ' -c 5 '    ->  Muestra el 5to caracter de la linea
   #    ' -c 1,5 '  ->  Muestra el 1er y 5to caracter    
   #    ' -c 1-5 '  ->  Muestra del 1er al 5to caracter


# Mostrar columnas por linea

cut -d "," -f 1 example-csv.csv

   # El uso principal de cut es mostrar las columnas de cada linea
   # de cada archivo, y para eso se usa...
   #
   #    -d DELIMITER -> esta opcion es usada para especificar el
   #                    field delimiter, que en el caso de los
   #                    archivos csv es la coma (,)   
   #    
   #    -f          -> y la opcion f es usada para especificar el numero
   #                   de columna a extraer

cut -d "," -f 1,3,5 example-csv.csv
cut -d "," -f 1-5 example-csv.csv

    # Como en el caso de la opcion 'c', la opcion 'f' tambien permite
    # rangos y seleccionar 2 o mas columnas a la vez