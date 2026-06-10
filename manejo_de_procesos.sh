#!/bin/bash

##      -- Manejo de procesos --     ##
    
    # Un procesos es simplemente un comando que esta corriendo en el sistema
    # 
    # Cada vez que executas un comando en Linux, el sistema operativo crea un 
    # proceso para correr ese comando

# Mostrar inforamcion de los procesos corriendo
ps -f 

    # Otras buenas opciones son...
    # -a muestra info de todos los usuarios
    # -x muestra informacion de procesos sin terminales (como aplicaciones)
    # -u muestra mas informacion (MEM, VSZ, RSS, STAT y muetra mas info de CMD)
    # -e muestra informacion de TODOS los procesos en cualquier estado
    # -r restringe la seleccion a los procesos que esta corriendo en ese momento


# Obtener los PIDs de un programa (proceso con nombre)
pidof NOMBRE_DEL_PROGRAMA

# Matar un proceso
kill PID # la opcion -9 fuerza a terminar el proceso porque se le manda 
         # la señal SIGKILL (con numbero de señal 9)
