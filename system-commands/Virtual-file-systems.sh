#!/# log files# log filesbin/bash

##      -- Virtual File System (/proc & /sys) --     ##
    
    # los virtual file systems son estructuras de memoria usadas
    # por el kernel, que parecen directorios normales, con la diferencia de...
    #
    #   - sus contenidos no son guardados despues de apagarse el sistema,
    #      contianere
    #
    #   - contiene informacion acerca de los status de los procesos que estan corriendo
    #     actualmente, configuracion del kernel y del system hardware


# /proc & /sys

    # Inicialmente Linux guaradaba toda la estructura del kernel en
    # /proc, pero nuevas versiones guardan informacion en/sys
    #

tree /proc

    # el directorio /proc contiene informacion de el estatus actual del sistema.
    #
    # algunas configuracion del kernel, viven en /proc/sys y otras en /sys

tree /proc/sys

    # Hay muchos sub directorios, algunos muy comunes son...
    #
    #   /proc/sys/fs    ->  configuracions relacionadas con los file systems
    #   /proc/sys/kernel -> configuraciones del kernel
    #   /proc/sys/net   -> configuraciones de network
    #   /proc/sys/user  -> configuraciones relacionadas a users y grupos
    #


tree /sys

    # El directorio /sys guarda configuracion del kernel en una forma estricta
    #
    # NOTA: alguna informacion en duplicada de /proc
    #



# Subdirectorios

    # Los subdirectorios comunes son...
    #
    #	/block 	-> contiene soft links de todos los block devices dentro de
    #		   /sys/devices
    #
    #	/bus 	-> Contiene subdirectorios por cada bus device en el sistema
    #
    #	/class	-> Contiene los devices categorisados por clases
    #
    #	/dev	-> devices separados por tipo (block y character) 
    #
    #	/devices -> Contiene una herarquia de estructura de devices dentro del 
    #		    kernel
    #
    #	/firmware -> contiene atributos especificos del firmware
    #
    #	/fs	-> contiene directorios que representan file systems
    #
    #	/kernel	-> informacion acerca del estatus del kernel
    #
    #	/module	-> informacion acerca de modulos adicionales que son cargados
    #		   en el kernel
    #
    #	/power	-> contiene parametros del manejo de poder


# ejemplos

cat /sys/devices/system/cpu/cpu0/uevent
	
	# muestra informacion de nuestro cpu

cat /sys/class/net/eth0/address

	# muestra la direccion MAC de nuestro sistema
	
