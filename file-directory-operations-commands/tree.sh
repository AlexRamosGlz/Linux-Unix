#!/bin/bash

##		-- tree [OPTIONS] [directory] --		##

	# Muestra toda la jerarquia del directorio especificado
	#
	# Si no se especifica un directorio, mostrara la jerarquia del
	# directorio actual
	#

tree -F test-directory		# Muestra que tipos de archivos son, o si son directorio

	# 	test-directory/
	#	├── nested-test-directory/
	#	├── test-executable-file*
	#	├── new-soft-link -> test-directory/test-executable-file
	#	└── test-link*
	#	
	#	Los items que terminan en...
	#	"/" son directorios
	#	"*" son archivos ejecutables
	#	"@" son symbolic links
	#	"=" son socket files
	#	"|" son FIFOs (named pipes)
	#	"->" son symbolic links que apuntan a otra locacion diferente
	#

