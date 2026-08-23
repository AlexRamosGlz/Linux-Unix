#!/bin/bash

arrp[0]=0
arr[1]=1
arr[2]=3

echo "${#arr[@]}"

for index in ${arr[@]}; do 
  printf "El valor es %i\n" $index
done;

exit 0
