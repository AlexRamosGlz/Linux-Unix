#!/bin/bash

##      --  ip [ OPTIONS ] OBJECT { COMMAND | help } --     ##
    
    # el comando ip es usado para mostrar y configurar configuraciones
    # de network
    #

ip link show

    # el primer parametro especifica el tipo de informacion u objeto
    # que se esta trabajando
    # 
    # el segundo parametro es la accion que quieres ejecutar
    #
    # el ejemplo anteorior muestra todas las network interfaces disponibles
    # en el sistema
    #

ip -4 addr show

    # 	addr 	-> el obejto addr se refieriea al IP address de nuestras network
    # 		   interfaces
    #
    #
    # 	y la opcion -4 restringe el resultado a direcciones IPv4 solamente
    #


# IPv4 routing

ip route show

    # route 	-> el objeto route se referie a nuestra routing table de nuestro
    # 		   device
    #

sudo ip route add default via 192.168.0.1

    # la accion "add" nos permite agregar un router defualt o default gateway
    #


# IP allocation

ip a add 192.168.1.200/24 dev eth0

   # para agregar una direccion ip en alguno de nuestros network devices 
   # (interace) se usa...
   #
   # 	add 192.168.1.200/24	-> la accion add añade la direccion ip
   # 				   que fue suplido como argumento
   #
   # 	dev eth0	-> Es el device a donde se le asignara la direccion
   # 			   anterior
   #


