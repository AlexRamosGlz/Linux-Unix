#!/bin/bash

##      --  ss [options] [ FILTER ] --     ##
    
    # el comando ss (Socket Statistics) muestra informacion de los sockets 
    # que nuestro sistema esta usando
    #
    # el comando es muy util para el troubleshooting de servicios que se
    # comunican via sockets

ss

    # si se ejecuta sin ninguna opcion se mostrara de todos los sockets esten
    # en uso o no
    # 


# Opciones comunes

ss -lps

    # Algunas de las opciones mas comunes son...
    #	
    #	-l -> Muestra solo los sockets que estan escuchando
    #	-p -> muestra los PIDs de los procesos usando el socket
    #	-s -> muestra un resumen de 
    #


# filtrar sockets por protocolo

ss -u; ss -t; ss -4; ss -6
	
   # las opciones para filtrar sockets por protocolo son...
   #
   # 	-u -> UDP sockets
   # 	-t -> TCP sockets
   # 	-4 -> IPv4 sockets
   # 	-6 -> IPv6 sockets	

