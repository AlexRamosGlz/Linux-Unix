#!/bin/bash

##    -- Linux Command Options --    ##

while getopts [OPTIONS, OPTION:value] VAR_TO_STORE_OPTIONº
 do 
   case $VAR_TO_STORE_OPTION
     OPTION_1) ... ;;
     OPTION_2) $OPTARG ;;
     ?) ... ;;
    esac
  done


## El snipet anteriorio muestra como usar las opciones de comando


