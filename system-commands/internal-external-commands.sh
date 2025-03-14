#!/bin/bash

##    -- Internal & External Commands --    ##

  # Los Internal Commands son squellos que estan dentro de nuestra shell

echo "Hola mundo"   # "echo" es un ejemplo de un comando interno

 
  # Los External Commands son programas que residen dento del disco, normalmente
  # en el directorio "/usr/bin/"

nvim new_file   # "nvim" es un ejemplo de external command 


  # variable PATH
  #
  # Ya que nuestra shell busca comandos en todos los directorios que estan guardados
  # en la enviroment variable $PATH, los comandos externos no seran encontrados
  # si su directorio no esta dentro de esta variable, y por ende no seran ejecutadosº

echo $PATH

  # Agregar directorios a la variable PATH

PATH=$PATH:/usr/myprogs

  # Checar si external o internal command

type COMMAND_NAME   # el commando "type" nos muestra si es shell built in o no


