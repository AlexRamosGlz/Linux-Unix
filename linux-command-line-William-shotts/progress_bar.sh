#!/bin/bash

calculate_spaces() {
  width=$(tput cols)
  text="{$1:- Progreso...}"
  text_width=$(echo "$text" | wc -c)
  second_width=$(((width - text_width)/2))
}


update_progress() {
  printf "\r\033[%dCProgreso...%d%%" $second_width $1
}

fill_before_text() { 
 for i in $(seq 1 $second_width); do 
    #echo $range
    printf "\033[u#\033[s"   
    update_progress $i
    sleep 0.05
 done
}

fill_after_text() {
  printf "\033[$iC\033[s" $((second_width + text_width))
  for i in $(seq $((second_width + text_width)) $((width - 2))); do
    printf "\033[u#\033[s"
    update_progress $i
    sleep 0.05
  done
}

calculate_spaces
printf "\r[\033[%dC]\r\033[1C\033[s" $((width - 1))
fill_before_text
fill_after_text

