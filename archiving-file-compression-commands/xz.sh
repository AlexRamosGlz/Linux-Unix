#!/bin/bash

##      --  xz [OPTION...]  [file...]   --      ##

    #  xz es un herramienta de compresion lossless compatible con
    #  los archivos de formato .xz, lzma ademas de que es
    #  compatible con la decompresion de los archivos .lz
    #
    #  Ofrece el mejor ratio de compresion para todos los tipos
    #  de data, pero puede ser lento en documentos grandes
    #
    #  NOTA: Esta herrameinta produce una version comprimida del archivo
    #        manteniendo el nombre original pero con la extension de la herramienta
    #        al final del nombre, ademas de que el archivo original es eliminado   


xz file-to-compress.txt

    # Antes de la compresion
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 13K Mar 20 11:54 file-to-compress.txt
    #
    # Depsues de la compresion
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 5.1K Mar 20 11:54 file-to-compress.txt.xz
    #


unxz file-to-compress.txt.xz

    # descompriome el archivo comprimido generado por el anterior comando
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 13K Mar 20 11:54 file-to-compress.txt
    #



