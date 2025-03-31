#!/bin/bash

##      --  journalctl [OPTIONS...] [MATCHES...] --     ##
    
    # El comando es utilizado para mostrar archivos binarios de logs (binary log files)

journalctl --since `date --rfc-3339=date`

    # journalctl puede filtrar logs con algunas de las opciones mas comunes...
    #
    #   --since ->  Muestra mensajes desde la fecha proveida, en formato "yyyy-mm-dd hh:mm:ss",
    #               el timepo es opcional
    #   
    #   -b      ->  Muestra los mensajes generados desde la ultima ves que el 
    #               sistema fue booteado
    #   
    #   -k      ->  Muestra mensajes del kernel, similar al comando dmesg
    #
    #
    #   -u      ->  Muestra mensajes de la unidad proveida
    #
    #   -f      ->  Mestra mensajes recientes y se actualiza conforme nuevos mensjas
    #               van llegando
    #


# Niveles de severedidad (Severety levels)

journalctl -p 1

    # Los niveles de severidad rondan desde 0 a 7, donde...
    #
    #   0 es una emergencia
    #   1 es alerta
    #   2 es critico
    #   3 es un error
    #   4 es una advertencia
    #   5 es una notificacion
    #   6 es informacional
    #   7 es un mensaje de debug
    #
    # con la opcion -p, se pueden filtrar los mensajes por nivel de severidad
    #

journalclt -p 1..4

    # ademas de que se pueden mostrar mensajes de rangos de severidad