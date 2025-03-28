#!/bin/bash

##      -- /boot directory & boot files --     ##

    # los arcihvos que tiene lugar en el procesos de boot de nuestro
    # sistema se encuentran en el directorio /boot

ls /boot

    # Bastantes archivos incluyen una serie de numeros en sus nombre

cat initrd.img-5.4.0-189-generic

    # Cada numero tiene su significado, de izquiera a derecha son...
    #
    # 	5   ->  version
    # 	4   ->  revision mayor
    # 	0   -> 	revision menor
    # 	189 ->  numero de parches

# Archivos adicionales

cat initrd

    # la imagen de disco inicial de RAM ( initial RAM disk image ), contiene
    # un root file system temporal que es usado durante el boot hasta que el 
    # file system real sea montado
    #


cat System.map

    # mapea las direcciones de memoria 	del kernel symbol names
    #


cat vmlinuz

    # contiene el kernel de linux comprimido in a self-extracting format
    #


cat grub 

    # conttiene los archivos de configuracion para el GRUB bootloader
    #
