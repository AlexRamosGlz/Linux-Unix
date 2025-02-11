#!/bin/bash

# Este script deshabilita/elimina cuentas de usuario

# Mostrar un ejemplo de como se debe usar el script
usage() {
	echo "Usage: $0 [OPTION] USER..." >&2
	exit 1
}

# No aceptar cuentas con UID menor a 1000
checkUID() {
  local USER_ID=$(id -u $1)

  if [[ "$USER_ID" -eq "0" ]]
  then
	echo "El usuario $1 no existe"
	return 1
  fi

  if [[ "$USER_ID" -lt "1000" ]] 
  then
	echo "La UID del usario $1 corresponde a una cuenta de systema." >&2 
	return 1 
  fi
}

# Archivar documentos 
archiveFiles() {
 local ARCHIVE_NAME="$1_archive.tzg"
 local FILES_TO_ARCHIVE="/home/$1"

 if ! [[ -d archives ]]
 then 
	mkdir archives
 fi

 tar -czf $ARCHIVE_NAME $FILES_TO_ARCHIVE
 
 mv $ARCHIVE_NAME archives/$ARCHIVE_NAME
}


# Asegurarnos de que el script sea ejecutado con sudo o como root
if [[ $UID -ne 0 ]]
then
   	echo "Necetias ser root para ejectur el progama." >&2
	exit 1
fi

# Ejecutar el scrip segun las opciones provistas por el usuario
while getopts dra OPTION
do
case $OPTION in 
  d)
	DELETE_USER='true'
	;;
  r)
	REMOVE_FILES='true'
 	;;
  a)	
	ARCHIVE_FILES='true'
	;;
  *)	
	echo "Invalid option"
	usage
	;;
esac
done

shift $(( $OPTIND - 1 ))


# Aceptar al menos mas de un usuario para poder correr el script
if [[ $# -eq 0  ]]
then
 echo "Ingresa al meno un usario."
 usage
fi

USER_TO_DELETE=$1

# Deshabilitar cuentas por default
while [[ $# -gt 0 ]]
do	
	echo "Usario: $USER_TO_DELETE"
	checkUID $USER_TO_DELETE
	
	if [[ $? -eq 1 ]]
	then
		shift
		USER_TO_DELETE=$1 
		continue
	fi

	if	[[ $ARCHIVE_FILES = 'true'  ]]
	then
		archiveFiles $USER_TO_DELETE
 	elif [[ $DELETE_USER = 'true' ]]
	then
		echo "Deleting $USER_TO_DELETE account"
		userdel $USER_TO_DELETE
	elif [[ $REMOVE_FILES = 'true' ]]		
	then
		echo "Deleting $USER_TO_DELETE and it's files"
		userdel -r  $USER_TO_DELETE
	else
		echo "disabling account" 
		chage -E 0 $USER_TO_DELETE &2> /dev/null
	fi	

shift
USER_TO_DELETE=$1 
done

exit 0 