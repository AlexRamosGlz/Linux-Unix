#!/bin/bash

text="Progreso..."

calculate_text_position () {

	test wc -c $text -eq 0 && text_position=0

	text_position=$(echo "($(tput cols)/2)-(15/2)" | bc)
}


draw_bar() {

	for i in $(seq 1 100); do
		printf "\e[112CProgreso...%d" "$i"
		
		for ((j=0;j<i;j++)); do
			printf "#"
			sleep 0.5
		done
	done
}


calculate_text_position
draw_bar

