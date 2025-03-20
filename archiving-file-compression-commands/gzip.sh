#!/bin/bash

##      -- gzip [ OPTIONS ] [-S suffix] [ name ...  ] --        ##

    #   Es una herramienta de compresion muy rapida, pero su ratio
    #   de compresion no suele ser tan bueno como los de xz y bzip2
    #   
    #   Comprime los archivos usando el algoritmo "Lempel-Ziv coding (LZ77)"
    #

gzip file-to-compress.txt

    # Antes de la compresion
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 13K Mar 20 11:54 file-to-compress.txt
    #
    # Depsues de la compresion
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 5.3K Mar 20 11:54 file-to-compress.txt.gz
    #


gunzip file-to-compress.txt.gz

     # descompriome el archivo comprimido generado por el anterior comando
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 13K Mar 20 11:54 file-to-compress.txt
    #