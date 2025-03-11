#!/bin/bash

##    -- passwd [options] [LOGIN] --    ##

  # * crea/cambia la contraseña de un USER * #

passwd --stdin $USER_TO_CHANGE_PASSWD    # la opcion '--stdin' permite pasar la contraseña por stdin
                                         # en lugar de pedirla por consola