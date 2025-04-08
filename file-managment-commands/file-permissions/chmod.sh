#!/bin/bash

##      --  chmod [OPTION]... MODE[,MODE]... FILE... --     ##
    
    # chmod cambia los permisos de un archivo o directorio


# symbolic mode

chmod u+x test.txt

    # En modo simbolico, podemos modificar permisos de usario, grupo u otros
    # sin que los demas se vean afetacados
    #
    # las siguintres abreviaciones corresponden a...
    #
    #   u -> el user dueno del archivo
    #   g -> el grupo dueno del archivo     
    #   o -> otros
    #   a -> todos los 3 tipos anteriores

chmod u+x,g=rw,o-wx test.txt

    # Ahora se especifica la accion a tomar con los siguientes simbolos...
    #
    #   + -> concede un permiso que no se tenia
    #   - -> revoca un permiso que ya se tenia
    #   = -> setea el permiso no importande sus permisos anteriores


# Numeric mode

    #  el modo numerico nos deja conceder los permisos a un archivo o directorio
    # de una forma mas rapida y con un solo comando chmod

    # En el modo numero los permisos son representados por numereos...
    #
    #       Permiso     Valor Numerico
    #          r              4  
    #          w              2 
    #          x              1
    #         none            0           

chmod 764 test.txt

    # despues se suman los valores numeros de los permisos deseados, de izquierda
    # a derecha son owner, group, otros...


# Cambiar permisos recursivamente

chmod -R 755 ./
    
    # -R -> la opcion cambia los permisos de los archivos que estan dentro del directorio
    # 