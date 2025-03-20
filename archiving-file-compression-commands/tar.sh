#!/bin/bash

##		-- tar [OPTIONS] ARCHIVE ARCHIVE... --			##
	
	# Tar es un comando creado para archivar muchos documentos en uno solo
	#
	# Los archivos resultantos son conocidos como "tar files" o "tarballs"	
	#
	# EL comando tar no requiere de "-" para usar opciones, sin embargo
	# aun asi es recomendadable usar "-" como estandar
	#


# Creando tar files

tar -cvf demo-tar-file.tar demo 
	
	# Las opciones del comando anterior son
	#	
	#	-c, --create	-> 	crea un nuevo archivo
	#	-v: 		  	->	muestra el nombre del archivo que esta siendo archivado
	# 	-f:				-> 	nombre del archivo donde se guardara el tarball resultante
	#


tar -cvf etc-services.tar /etc/services

	# Por defualt tar elimina el primer "/" del path absoluto, convirtiendolo en un path
	# relativo esto por razones como...
	#	
	#	-	Previene que se sobre escriba el documento existente/
	#	-	provee flexibilidad cuando se extrae el contenido de un tarball


tar -cvPf etc-services.tar /etc/services

	# ahora bien si se quiere preservar el "/" inicial, la opcion "-P" lo preserva


# Mostrar el contenido de un archive (tar file)

tar -tvf demo-tar-file.tar

	# Para mostrar el contenido de un tar file son los siguentes...
	#
	# 	-t	->  Enlista el contenido, se puede pensar que significa "table of contents"
	#	-v 	->  muestra informacion mas detallada de cada archivo y directorio, incluyendo 
	#			permisos y a quien le pertenece  
	#	-f 	->  nombre del tar file a mostrar
	#


# Extraer el contenido de un tar file

tar -xvf demo-tar-file.tar

	# Para extrar el contenido un tar-file las opciones son las siguientes
	# 
	#	-x	->	Le indica al comando tar que extraiga  
	#	-v 	->  muestra el nombre del archivo que esta siendo extraido
	#	-f  ->  nombre del tar file a extraer
	#
	#
	# NOTA: Cuando se extrae de un tar file, cualquier documento ya existente
	#		el cual su nombre y locacion coincide con algun documento que esta siendo 
	#		extraido, sera sobre escrito 
	#
	#		tar usa el path de los archivos guardados en el tarfile para decidir en que
	#		lugar seran guardados segun su path 

tar -xvf demo-tar-file --wildcards *.sh

	# Se pueden extrer archivos individuales usando la opcion "--wildcar"


## Compresion en el comando tar

	# El comando tar puede ejectuar una compresion por si mismo,
	# dependendiendo de que herramienta de compresion se quiere usar las 
	# opciones son las siguientes
	#
	#	nombre	  opcion	extension
	#	xz 		-> 	-J 	-> 	.txz
	#	bzip2 	->	-j 	-> 	.tbz
	#	gzip	->	-z	->	.tgz

tar -cvJf demo-tar-file.txz	demo/


## Descomprision en el comando tar

tar	-xvJf demo-tar-file.txz extracted/