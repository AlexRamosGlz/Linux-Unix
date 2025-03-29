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

    # 
