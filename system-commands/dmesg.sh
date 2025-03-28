#!/bin/bash

##      --  dmesg [options] --     ##

    # Los mensajes del kernel son guardados en el kernel ring buffer
    #
    # durante el boot, antes de que los archivos de sistema son montados
    # y el logging dameon es ejecutado, estos mensajes SOLO son accesibles
    # en el ring buffer
    #
    # NOTA: si el sistema no bootea completamente, el ring buffer puede contener
    # informacion para su troubleshootng



sudo dmesg -H

    # dmesg es usado para ver los mensajes admeas de editar el Kernel
    # ring buffer
    #
    # algunas de las opciones son...
    #
    #   -H  ->  el output es mostrado en formato human readable 