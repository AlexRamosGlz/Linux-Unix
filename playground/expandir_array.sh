#!/bin/bash

expandir_array() {
   local array=$@

   for item in ${array[@]}; do
	  echo "$item"
   done

   return 0
}


expandir_array $(ls /usr/bin)
