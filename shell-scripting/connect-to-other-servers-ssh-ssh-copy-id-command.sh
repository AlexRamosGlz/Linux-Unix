#!/bin/bash

# conectar a otros servers
ping -c 5 10.9.8.11 # con ping nos aseguramos de que el server al que queremos conectar este en buen estado, la opcion '-c' indica el numero de veces que mandara el ping

# editar documentos con tee y guardar hosts con nombres
echo "10.9.8.11 server01" | sudo tee -a /etc/hosts # el comando 'tee' nos permite leer del STDIN y guardar en un documento, la opcion '-a' es para escribir una nueva linea sin sobreescribir

echo "10.9.8.12 server02" >> /etc/hosts # se puede lograr lo mismo que lo anterior pero tendriamos que estar loggeados como root 

# Guardar una ssh-key en el host destino para no tener que autentificarnos cada ves que nos conectemos
ssh-keygen # este comando generara una llave ssh
 
ssh-copy-id server01 # para guardar nuestra llave recien creada en el host destino se el comando ssh-copy-id
