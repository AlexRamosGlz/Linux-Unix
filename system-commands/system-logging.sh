#!/bin/bash

##      -- /var/log & registros de sistema (system logging) --     ##
    
    # El kernel de linux, servicios y aplicaciones generan mensajes
    # periodicamente
    #
    # Hoy en dia estos mensajes son guardados en una bitacora asi
    # los sysadmin pueden checarlos para identificar algun problema
    #


#  syslog

   # syslog es el protocolo original para logging
   #
   #	- Los logs son guardados como simples archivos de texto
   #	- Se pueden buscar y ver con comandos estandar de Linux 
   #	


#  journald

   # journald es el nuevo estandar
   #
   # 	- los logs ahora son guardados en una forma binaria 
   # 	- Pueden ser vistos y buscados con el comando journalclt
   #


#  System logging

   # Un daemon colecta estos mensajes desde varias fuentes y los
   # guarda en el registro apropiado
   #
   # 	- en nuevos sistemas este daemon es llamado journald y 
   # 	  en los viejos sistemas el proceso era ejecutado por syslogd
   #
   #
   # NOTA: algunas aplicaciones manjejan sus logs de forma independiente
   #


# log files

   # los archivos donde se guardan los registros normalmente tiene un .log
   # al final del nombre
   #
   # 	auth.log -> guarda mensajes relacionados con la autentificacion
   # 	kern.log -> guarda mensajes relacionados con el kernel
   # 	syslog -> mensajes del sistema
   #	...
   #
   #	NOTA: algunas aplicacions o servicios, tienen multiples log files,
   #	      por eso tiene su propio directorio dedicado dentro de /var/log
   #	      un ejemplo es el package manager apt
	

#  log rotation

   # 1) los registros pueden crecer hasta tamaños no manejables, asi que el
   # 	sistema renombra viejos registros con un numero de version y se crea
   # 	un nuevo y vacio log file
   # 
   # 2) A medida que los registros envejecen, los log files se comprimen para
   # 	guardar espacio y eventualmente son borrados
   #
   #
   # NOTAS: se puede cambiar la configuracion del proceso de log rotation desde los
   # archivos que manejan este proceso dentro del directorio /etc
   #
   #	la configuracion defualt esta guardada en /etc/logrotate.conf, se puede
   #	editar para cambiar la configuracion
   #
   #	la configuracion controla...
   #	
   #	- El renombrado de los logs
   #	- el archiving de los logs
   #	- la compresion de los logs
   #	- y enviar los logs via email
   #


