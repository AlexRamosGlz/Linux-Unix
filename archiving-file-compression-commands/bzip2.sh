#!/bin/bash

##      -- bzip2 [ OPTIONS ] [ filenames ...  ] --        ##

    #   Es una herramienta de compresion mas rapida que xz pero su
    #   ratio de compresion no es tan buena
    #
    #   utiliza el algoritmo the compresion "Burrows-Wheeler block sorting text
    #   compression" y "Huffman codig"


gzip file-to-compress.txt

    # Antes de la compresion
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 13K Mar 20 11:54 file-to-compress.txt
    #
    # Depsues de la compresion
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 5.1K Mar 20 11:54 file-to-compress.txt.bz2
    #


gunzip file-to-compress.txt.gz

     # descompriome el archivo comprimido generado por el anterior comando
    #
    #   -rw-rw-r-- 1 alexramosglz alexramosglz 13K Mar 20 11:54 file-to-compress.txt
    #