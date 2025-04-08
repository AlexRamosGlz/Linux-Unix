!#/bin/bash

##     -- useradd [options] LOGIN --    ##

    # el comando crea un nuevo usuario o actualiza la informacion
    # default


useradd teresa

    # por defualt el comando solo ocupa el nombre del usario a crear como argumento
    #

# Opciones mas comunes

useradd -mc "Teresa Guadalupe Velazques Gomez" teresa

    # algunas opciones comunes son...
    #
    #   -m -> crea su home directory dentro de /home y nombrado igual que el usuario
    #   
    #   -c -> es usado para agregar comentarios del usuario (nombre completo, cargo, etc...)
    #


useradd -f 30 -g dev alexramosglz

    #   -f -> specifica el numero de dias en que la passwd del usario expira y por ende
    #         al cuenta se desactiva
    #   q
    #   -g -> setea el nombre o GUID del grupo que sera el primary group del usario. el grupo
    #         ya debe existir
    #


useradd -MG mngr,devmngr,opsmngr manager

    # -G -> asigna una lista separada por comas de grupos adicionales al cuales el usario sera parte
    # -M -> esta opciones es usada para forzar el no crear home directory al user
    #


useradd -s /usr/bin/zsh -u 1500 tomaso

    # -s -> asinga el login shell del usario
    # -u -> asigna el UID al usuario
    #