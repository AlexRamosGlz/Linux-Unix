#!/bin/bash

##      --  ping [-aAbBdDfhLnOqrRUvV46] [-c count] [-F flowlabel] [-i interval] --     ##
    
    # ping envia un echo request packet a una direccion ip o hostname,
    # y muestra un mensaje cuando recibe un respuesta, indicando que 
    # la red puede contactar al host correctamente
    #

ip -c 5 example-ip

    # las opciones mas comunes en el comando ping son...
    #
    # 	-c -> dejara de mandar request despues n intentos
