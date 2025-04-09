#!/bin/bash

##    -- passwd [options] [LOGIN] --    ##

  # crea/cambia la contraseña de un usario 

passwd --stdin teresa


# cambiar passwd de otros usarios usando root 

sudo passwd -eS teresa

  # -e -> fuerza al usuario a cambiar de contrasena en su proximo login
  # -S -> muestra informacion de status del usuario 

sudo passwd -dl teresa

  # -d -> borra la contrasena del usario, haciendo una cuenta sin contrasena
  # -l -> bloquea la cuenta cuenta del usario

sudo passwd -u teresa

  # -u -> desbloquea la cuenta del usuario