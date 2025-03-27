#!/bin/bash

##      --  grep [OPTION...] PATTERNS [FILE...] --      ##

    # grep es una herramienta versatil para encontrar y 
    # mostrar texto o patrones dentro de un archivo
    #


# Mostrar lineas que matchean un patron

grep "hello" hello.txt

grep -ir "hello" /usr/bin/

    # El uso default de grep se puede modificar con las opciones...
    #
    #   -i  ->  case insensitive
    #   -r  ->  recursive, busca recursivamente en los directorios
    #           del path especificado


# Contar el numero de matches encontrados

grep -c 'a' hello.txt 

    #   -c  -> count, esta opcion muestra las veces que el patron  
    #          matcheo


# invertir grep, mostrar las lineas que NO matchean el patron

grep -v 'hello' hello.txt

    #   -v  -> invierte el funcionamioento de grep

# Regular expressions y grep

    # las regex son secuencia de caracteres que forman un
    # patron que permite buscar, validar y manipular texto de forma avanzada
    #
    # su funcionamiento es similar a las wildcards de linux


grep "h." hello.txt

    # los meta-characters son caracteres que tienen un significado especifico
    # tales como...
    #
    #   .   ->  matchea cualquier caracter solo menos new line
    #   
    #   (he)llo wold!
    #   (ho)la mundo!


grep 'h.*!' hello.txt

    #   *   ->  tiene un significado diferente al del wildcard de linux,
    #           en regex significa que la linea matcheara si zero o mas 
    #           ocurrencias del caracter anterior aparecen en la pocicion especificada
    #
    #   se puede usar para rellenar espacios entre caracteres, en la expresion anterior se puede
    #   decir que grep regrese las lineas donde la linea tenga una "h", seguido por cualquier single caracter
    #   seguido por n numero de caraceres hasta llegar a un "!"
    #   
    #       hello wold!
    #       hola mundo!    
    #


grep '[Rr]' numbers.csv

    # []    ->  son usados para encerrar uno o mas caracteres por buscar en
    #           en el patron
    #  
    #   grep buscara cualquier linea que empieze contenga un R o r, en cualquier posicion      
    #
    #   se pueden incluir rangos de caracteres [1-9]


grep '^K' numbers.csv

    #   ^   ->  tiene 2 usos, cuando esta FUERA de unos [], se regresaran las lineas
    #           donde la linea empieza con el caracter seguiente del ^


grep '[^K]' numbers.csv

    #   el otro uso es que cuando este DENTRO de [], donde los caracteres que no aparezcan
    #   dentro del [] no searn matcheados


grep  '5$' numbers.csv

    #   $   ->  mostrara las lineas donde acabe con el caracter anterior al $ 


#   Extended expression


grep -E '02+' numbers.csv 

    #   +   ->  indica que uno o mas del caracter anterior DEBE aparecer
    #           en la pocicion definida en el string
    #
    #  grep regresara cualquier donde tenga un 0 seguido por una o mas ocurrencias del
    #  numero 2 


grep -E '02?' numbers.csv

    #   ? ->   indica que zero o una ocurrencia del caracter anterior al ?


grep -Ei 'rahul|parker' numbers.csv

    #   |   ->  es como un OR, donde se mostraran las lineas que tengas alguno de los
    #           strings especificados 