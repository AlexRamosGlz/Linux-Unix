#!/bin/bash

# Este script demuestra la redirecion de I/O

# Redirigir STDOUT a un documento
FILE="/tmp/data"

head -n1 /etc/passwd > $FILE

# Redirigir STDIN a un programa
read LINE < $FILE # al usar input redirection podemos usar el comando read para que lea el documento

echo "La variable LINE contiene: $LINE"

# pipe '|' se usa cuando quieres usar el output de un comando como input de otro comando
# redirection ' < o > ' se usa cuando quieras usar el contenido de un documento en un comando

# Redirigir STDOUT a un documento, sobre escribiendolo
head -n3 /etc/passwd > $FILE
echo
echo "Contents of $FILE"
cat $FILE

# Redirigir STDOUT a un documento, sin sobre escribirlo

echo "nuevo contenido $RANDOM" >> $FILE # ' >> ' es usado para agregar contenido a un documento sin sobre escribirlo

echo
echo "Contents of $FILE"
cat $FILE

# File descriptor
# 0 -> STDIN
# 1 -> STDOUT
# 2 -> STDERR

read X 0< $FILE #
echo
echo $X

# Guardar STDOUT y STDERR separados
head -n1 /etc/hosts /etc/passwd /fakedir > head.out 2>> head.err 
echo
echo "Content of head.out"
cat head.out
echo
echo "Content of head.err"
cat head.err

# Guardar STDOUT y STDERR juntos
# Syntax vieja
head -n1 /etc/passwd /etc/hosts /fakedir > head.both 2>&1 # Cuando hay un '&' despues de redirigir esto significa que estas convertiendo con un file descriptor ( en este caso estas conviertiendo el STDERR a STOUT ) y gracias a esto se pueden guardar ambos outputs son tratados como STDOUT

# Syntax nueva
head -n1 /etc/passwd /etc/hosts /fakedir &>> head.both # lo mismo que el caso anteriro pero con la nueva syntax
  

echo
echo "Content of head.both"
cat head.both

# Pasar STDERR a un comando con pipes 
# Vieja syntax
head -n1 /etc/passwd /fakedir 2>&1 | cat -n # convertir STDERR a STDOUT para poder usar el pipe  

echo
echo
# nueva syntax
head -n1  /etc/passwd /fakedir |& cat -n # lo mismo que el caso anterior pero con un nuevo syntax

# Convertir STDOUT a STDERR
echo "This is STDERR!" 1>&2 # notar que es mismo metodo que en los casos anteriores 

# Descartar STDOUT
echo
echo "Discarding STDOUT: "
head -n3 /etc/passwd /fakefile > /dev/null

# Descartar STDERR
echo
echo "Discarding STDERR: "
head -n3 /etc/passwd /fakefile 2> /dev/null

# Descartar ambos STDOUT Y STDERR
echo
echo "Discarding STDOUT & STDERR: "
head -n3 /etc/passwd /fakedile &> /dev/null

# clean up
rm $FILE
exit 0
  
