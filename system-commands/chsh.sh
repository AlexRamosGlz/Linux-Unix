#!/bin/bash

##      --  chsh [options] [LOGIN] --     ##
    
    # Cambia la shell defualt por cualquier otra
    #

chsh
	
	# EL comando sin nunguna opcion nos muestra un CLI
    # donde nos pide el insertar la nueva shell a usar
    #


chsh -s /usr/bin/zsh

    # La opcion -s (shell o --shell) es para hacer lo mismo
    # que el comando anterioro solo que sin el CLI