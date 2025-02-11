#!/bin/bash

# los UID entre 201 y 999 corresponden al UID de una cuenta del sistem (sistem account) (TENER CUIDADO se quieren borrar)
# Los UID entre 1000 y 60000 corresponden a cuentas de usuario
id -u sshd; echo 'UID de una cuanta de sistem'
id -u; echo 'UID de una cuenta de usuario'

# mostrar cuentas usuario en el sistema
ls -l /home # si en la parte donde se muestra el grupo y usuario es el UID y no el username, significa que el usuario ha sido eliminado, pero su directorio aun existe

# Eliminar usuario
sudo userdel -r alexrms 2> /dev/null # si se quiere elimiar al usuario con su directorio la opcion '-r' es necesaria 

# Guardar o archivar el directorio de un usario
# primero creamos un directorio y guardamos algunas cosas ahi
mkdir lecciones

cp lesson*.sh lecciones

# usamos tar para archivar los documentos que estaban el directorio
tar -zcvf lessons.tar.gz lecciones
echo 'Archivado todo en lessons.tar' 

# borramos el directorio creado
rm -r lecciones/

# restaurar archivos
# creamos el directorio donde queremos restaruar
mkdir restore
cd restore/
tar -zxvf ../lessons.tar.gz

cd 
# borramos el archivo tar 
rm *tar*


# deshabilitar cuentas temporalmente es una buena manera de mantener la seguridad cuando la cuenta no se vaya a usar
# durante un periodo considerable de tiempo ( digamos vacaciones )
# deshabilitar cuenta o bloquear
sudo chage -E 0 teresagmz # chage es usado para bloquear cuentas temporalmente, la opcion '-E 0' bloquea la cuenta

# Re habilitar cuenta o desbloquearla
sudo chage -E -1 teresagmz # la opcion '-E 1' desbloquea la cuenta previamente bloqueada 