#!/bin/bash

# Cut
echo 'CUT sin rango'
cut -c 1 /etc/passwd

echo 'cut: con rangos'
cut -c 1-5 /etc/passwd
cut -c 9- /etc/passwd
cut -c -9 /etc/passwd

echo 'cut: con delimitadores y campos'
# usando la opcion '-f' regresa todo lo que esta en la columna o campo (field) ingresada
echo  -e 'one\ttwo\tthree' | cut -f 1
echo  -e 'one\ttwo\tthree' | cut -f 2
echo  -e 'one\ttwo\tthree' | cut -f 3

# Usando cut con delimitadores, regresa la columna especificada con el delimitador especificado
echo '1,2,3,4,5' | cut -d ',' -f 1
echo '1,2,3,4,5' | cut -d ',' -f 2 
echo '1,2,3,4,5' | cut -d ',' -f 3- 

# cambiendo el delimiter por el que nosotros queramos
echo '1,2,3,4,5' | cut -d ',' -f 1- --output-delimiter ' '

# AWK
# ahora lo mismo con awk
echo -e '\n\n'

# cut no solo acepta 'field delimiter' de un solo caracter, aqui es donde awk nos puede ayudar
awk -F 'DATA:' '{print $2}' people.dt

awk -F ':' '{print $1, $3}' /etc/passwd

# para cambiar el field separator hay mas formas de hacerlos con awk
awk -F ':' -v OFS=':::' '{print $1, $3}' /etc/passwd # la variables 'OFS' representa el 'Output Field Separator', y la opcion '-v' nos permite asignarle el valor que queramos en este caso el ':::'

# Como bonus, en awk, puedes cambiar el orden en que los fields son mostrados ( con cut no se puede )
awk -F ':' '{print "UID: " $3 " Login: " $1 }' /etc/passwd # se logra lo mismo que en el caso anterior, ademas de que es mas customisable

# Con awk, se tiene una variable llama 'NF' que es igual a Number of Fields', que es el total de columnas
awk -F ':' '{print $NF}' /etc/passwd
awk -F ':' '{print $((NF - 1))}' /etc/passwd # se puede hacer sustitucion aritmetica con NF

netstat -4nutl $1  | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}'