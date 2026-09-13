#!/bin/bash

width=$(tput cols)
inner=$((width - 2))

draw_progress() {
    local percent=$1
    local text="${percent}%"
    local text_width=${#text}

    # Inicio del porcentaje, centrado
    local center=$(( (inner - text_width) / 2 ))

    # Cantidad total de # según el porcentaje
    local filled=$((inner * percent / 100))

    # # antes del porcentaje
    local left=$((filled < center ? filled : center))

    # # después del porcentaje
    local right=0

    if (( filled > center + text_width )); then
        right=$((filled - center - text_width))
    fi

    # Espacios restantes
    local empty=$((inner - left - text_width - right))

    printf "\r["

    # izquierda
    printf '%*s' "$left" '' | tr ' ' '#'

    # espacios entre # y porcentaje
    printf '%*s' "$((center - left))" ''

    # porcentaje
    printf '%s' "$text"

    # derecha
    printf '%*s' "$right" '' | tr ' ' '#'

    # espacios restantes
    printf '%*s' "$empty" ''

    printf "]"
}

for i in $(seq 0 100); do
    draw_progress "$i"
    sleep 0.05
done

printf '\n'

