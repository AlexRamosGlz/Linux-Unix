#!/bin/bash

text="Progreso...100"
width=$(tput cols)

calculate_text_position () {

	[ "$(wc -c <<< "$text")" -eq 0 ] && text_position=0

	text_position=$(echo "($(tput cols)/2)-(15/2)" | bc)
}


draw_bar() {
	printf "[\e[999C]\r\e[$((text_position))C$text\r\e[1C\e[s"
	for i in $(seq 2 $(tput cols)); do
		range="{$i..236}"
		if (( i >= (text_position - 1) ||  i >= text_position + 16 )); then
			printf "\e[$((i))C"	 				
		else  	
	 		printf "#%.0s\e[s" $range
			sleep 0.09
		fi	
	done
}


calculate_text_position
draw_bar
