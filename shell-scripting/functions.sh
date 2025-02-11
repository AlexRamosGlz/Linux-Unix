#!/bin/bash

# Esta funcion manda un mensaje a syslog y a STDOUT si VERBOSE es true.
function log {  # las funciones deben de declarace al incio del script
  local MESSAGE=$@ # local es un shell built in que usado para declarar variables que solo estaran disponibles en el code block de la funcion donde fueron declaradas

  if [[ $VERBOSE = 'true'  ]]
  then
	echo $MESSAGE
  fi 

  logger -t lesson-10.sh $MESSAGE
}


# Esta funcion crea un backup file. Retorna non-zero status si hay error
backup_file() {
 local FILE=$1

 if [[ -f $FILE ]]
 then
	local BACKUP_FILE="/var/tmp/$(basename $FILE).$(date +%F-%N)"
	log "Backing up $FILE to $BACKUP_FILE"
	
	# el exit estatus de esta funcion sera el de el comando cp
	cp -p $FILE $BACKUP_FILE
 else
	# el documento no exite, entonces se returna un non-zero estatus
	return 1
fi
}


readonly VERBOSE='true' # esta variable solo se puede leer, es el equivalente a las constantes en JS o java
log 'Hello'
log 'this is fun' # los parametros de una funcion es todo despues del nombre de la funcion
log hola mundo como estan

backup_file /etc/passwd

# Tomar una decision basandonos en el exit estatus de la funcion
if [[ $? -eq 0 ]]
then
   log 'File backup succeeded!'
else
   log 'File backup failed!'
   exit 1
fi
exit 0
