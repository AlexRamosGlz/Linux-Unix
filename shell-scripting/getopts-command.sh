#!/bin/bash

# Este script genera una contraseÃa random
# El usuario puede setear la longitud de la contraseÃ±a con -l y puede aceptar un caracter especial con -s.
# El modo verbose puede ser activado con -v


usage() {
  echo "Usage: $0 [-vs] [-l LENGHT]" >&2
  echo 'Generate a random password.'
  echo ' -l LENGTH Specify the password length.'
  echo ' -s  	   Append a special character to the password'
  echo ' -v   	   Increase verbosity.'
  exit 1	
}

log() {
  local MESSAGE=$*

  if [[ $VERBOSE = 'true' ]]
   then
	echo $MESSAGE
   fi
}

# Setear un valor default a la longitud de la contraseÃa
LENGTH=48


# esta es la estructura que se debe seguir para poder usar getops
while getopts vl:s OPTION # 'vls' seran nuestras opciones disponibles, si queremos que una opcion tenga un valor se le tiene que agregar un ':' despues de la opcion, en este caso es 'l:'
do
  case $OPTION in
   v)
 	VERBOSE='true'
	log 'Verbose mode on.'
	;;
   l)
	LENGTH=$OPTARG # los valores de las opciones son guardados en la variable OPTARG
   	;;
   s)
	USE_SPECIAL_CHARACTER='true'
   	;;
   ?)
	usage
	;;
  esac
done

# inspecsionar OPTIND
echo "OPTIND: $OPTIND" &> /dev/null

# remover las opciones dejando solo los argumentos faltantes
shift $(( OPTIND - 1 ))

if [[ $# -gt 0 ]]
then
    usage
fi


log 'Generating a password'	

PASSWORD=$(date +%s%N$RANDOM$RANDOM | sha256sum | head -c$LENGTH)

# Agregar un caracter especial si fue pedido
if [[ $USE_SPECIAL_CHARACTER = 'true' ]]
then
  log 'Selecting a random special character'
  SPECIAL_CHARACTER=$(echo '!@$%&*()=+-' | fold -w1 | shuf | head -c1 )
  PASSWORD=$PASSWORD$SPECIAL_CHARACTER
fi

log 'Done.'
log 'Here is the password'

# Mostrar contaseÃ±a
echo $PASSWORD

# Expansion aritmetica (Arithmetic expantion) $(( [expresion aritmetica] ))
NUM=$(( 6 + 1 ))
echo $NUM &> /dev/null

NUM2='7'
TOTAL=$(( NUM + NUM2 )) # las variables dentro de una expansion aritmetica no tiene que ser llamdas con un '$' al principio 
echo $TOTAL &> /dev/null

# incrementar el valor de una variable
(( NUM++ ))
(( NUM-- ))
(( NUM+= 5 ))
NUM=$(( NUM+= 5))

# Expansion aritmetica usando el comando 'let'
let NUM='1 + 2'; echo $NUM &> /dev/null
let NUM++; echo $NUM &> /dev/null

# Expansion aritmetica usando el comando expr
echo $( expr 1 + 2 ) # expr no guarda la operacion en ningun lado solo lo hace STDOUT
NUM=$( expr 1 + 2); echo $NUM &> /dev/null

exit 0 
