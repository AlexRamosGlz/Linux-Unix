#!/bin/bash

# sed = Stream editor
# A stream is data that travels from: One process to another through a pipe, One file to another as a redirect, One device to another

# sed performs text transformations on streams, it's common use is for find and replace
sed 's/DATA/data/' people.dt # sed 's/search-pattern/replacement-string/flag' [stream] 
echo 'THIS IS ALL IN CAPS' > caps.txt

sed 's/caps/lower case/i' caps.txt 
sed 's/data/data/ig' people.dt # las flag 'g' es usada para remplazar todas las ocurrencias con el replacement string, tambien se puede especificar que numero de ocurrencia es la que se quiere remplazar.
sed 's/data/data/i2' people.dt # la flag 'i' hace que el serch pattern no sea case-sensitive, y el numero que le sigue es  hace que el serch pattern no sea case-sensitive, y el numero que le sigue es el numero de ocurrencia en donde se quiere remplazar el texto

# sed no altera el texto del documento por default
sed -i.respaldo 's/data/data/ig' people.dt # la opcion '-i' sobre escribe el documento con el nuevo STDOUT, pero si se quiere hace un backup del documento originalbasta con agregar un . seguido del texto conque se identificara el bakcuo '-i.respaldo'

sed 's/jorge/alejandro/gw alejandros.txt' people.dt # sed puede guardar en un documento nuevo todas las ocurrencias que se encontraron

echo "/home/vagrant" | sed 's#/home/vagrant#/nuevo/path#' # se puede poner cualquier character como delimiter en el comando sed, esto es util cuando el texto que se quiere remplazar tenga el delimiter por default '/' 

# Elimir lineas donde ocurre un patron
sed "/Jorge/d" people.dt # la flag 'd' elimina las lineas donde se encuentra una ocurrencia del search pattern

sed '/^#/d' lesson-10.sh # se pueden usar regex como search pattern
sed '/^#/d ; /^$/d' lesson-10.sh # tambien se pueden concatenar sed commands, basta con sepraralos con un ';'
sed -e '/^#/d' -e '/^$/d' -e 's/log/echo/ig' lesson-10.sh # se logra el mismo resultado con un '-e'

# usar sed commands guardados en un documento
echo '/^#/d' > script.sed 
echo '/^$/d' >> script.sed
echo 's/log/echo/ig' >> script.sed

sed -f script.sed lesson-10.sh # la opcion '-f' lee los comandos desde el documento proporcionado

# aplicar el sed command solo en la linea especificada (addresses)
sed '2 s/data/DATA/g' people.dt

sed '/Teresa/ s/data/Data/g' people.dt # tambien se puede usar texto y regexp
sed '/^data/ s/Teresa/Tere/g' people.dt 