#!/bin/bash

##    -- Linux Command Options --    ##

OPTIONS="hf:g-:"
while getopts $OPTIONS OPTION
 do 
   case $OPTION in
    -)
      case $OPTARG in
        help)
          echo "Usage: $0 [-a|-f, FILE_NAME|-h, --help ]"
          ;;
        ?)  
          echo "Usage: $0 [-a|-f, FILE_NAME|-h, --help ]"
          ;;
      esac;;
    f) 
      echo "Filename: $OPTARG"
      ;;
    g)  
      echo "Hi, `id -un`!"
      ;;
    h) 
      echo "Usage: $0 [-a|-f, FILE_NAME|-h, --help ]"
      ;;
    ?) 
      echo "Usage: $0 [-a|-f, FILE_NAME|-h, --help ]"
      ;;
    esac
  done


  #  El snipet anteriorio muestra como usar las opciones de comando
  #
  #  short (-h) y long (--help) options, hacen la misma funcion mas su sintaxis es diferente
  #  
  #  si una opcion ocupa un valor se usa la sintaxis...
  #
  #     while getopts l: 
  #       do
  #         ...
  #       done
  #
  #   "l:" es un indicador que la opcion 'l' requiere un valor
  #
  #  Un buen articulo para aprender como manejar las long options seria el siguiente
  #
  #     * https://stackoverflow.com/questions/402377/using-getopts-to-process-long-and-short-command-line-options/7680682#7680682 *
  #