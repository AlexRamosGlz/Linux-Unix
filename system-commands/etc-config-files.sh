#!/bin/bash

##      -- Config Files & directorio /etc  --
    
    # Linux guarda los archivos de configuracion en el 
    # directorio /etc
    #
    # Originalmente el directorio era usado para guardar
    # todos los
    # archivos que no encajaban en otro lugar
    # en el FHSi

#   subdirectorios

tree /etc

    #	/etc/group  	->  guarda los detalles de los grupos guardados en
    #			    el sistema
    #
    #	/etc/hostname	->  guarda el hostname de la computadora
    #
    #	/etc/hosts	->  detalles de los host disponibles en la red
    #
    #	/etc/passwd	->  detalles de los usarios que pueden loggearse en 
    #			    el sistema
    #
    #	/etc/shadow	->  guarda las contraseñas encriptadas de todos los
    #			    usuarios
    #
    #	/etc/services	->  detalles de los servicios que corren en la
    #			    computadora
    #

# Extension .conf

cat /etc/logrotate.conf

    #	Muchos programas y utilities guardan sus propias config files
    #	dentro de /etc
    #
    #	usualmente el nombre de los archivos tienen la siguiente estructura
    #
    #		<PROGRAMM_NAME>..confi
    #


# Utilities directories

tree /etc/logrotate.d

    #	Muchos utilites tienen directorios dentro de /etc	
    #
    #	normalmente son nombrados como...
    #		
    #		<UTILITY_NAME>.d
    #
    #	dentro se ecuentran
    #


# Configuraciones locales

cat .zshrc

    #	Estas configuraciones estan guardads tipicamente en archivos ocultos
    #
    #		.<FILE_NAME>
    #
    #
    #	Tambien se ecuentran configuraciones guardadas dentro de directorios
    #	ocultos, como el caso de 
    #
    #		.ssh -> Contiene configuraciones de usuario para la utility 
    #			ssh
