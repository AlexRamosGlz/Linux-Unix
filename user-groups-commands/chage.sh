#!/bin/bash

##       --  chage [OPTION]... LOGIN  --        ##

    # * Cambia la fecha de expiración de la contraseña de un usuario * #

chage -E 0 $USER_TO_DISABLE &2> /dev/null # La opcion '-E 0' setea la fecha de expiracion de la conasena a
                                          # 0 dias, lo que hace que se deshabilite la cuenta.
                                