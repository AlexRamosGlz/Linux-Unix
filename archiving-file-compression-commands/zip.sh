#!/bin/bash

##      --  zip [OPTIONS] zipfile [file] --       ##

    # zip es otra herramienta para crear archives, lo que
    # hace especial a esta herramienta es que es compatible con
    # Windows, ya que tar no es compatible con Windows
    #
    # No se necesita de ninguna herramienta de compresion original, ya
    # que zip lo hace automaticamente tanto en Linux como en Windows, no hay 
    # necesidad de archivar y comprimir por separado

# Crear un archive 

zip -r test.zip demo/

    # la opcion "-r" debe ser usada para que archive tambien el contenido 
    # entre directorios, de otra forma solo archivara un solo documento
    #


# Extraer un zip file

unzip test.zip