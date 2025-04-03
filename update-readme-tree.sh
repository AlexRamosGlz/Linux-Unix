#!/bin/bash

# Este scrip modifica el arbol de directorios que esta en el archivo README.md automaticamente



# gitadd() agrega todos los archivos .sh al stage
stageChanges() {

    local CURR_DIR=$(basename `pwd`)

    if [[ $CURR_DIR != "Linux-Unix" ]]
    then
        echo "Tienes que estar en el directorio base del repositorio para ejecutar el comando" >&2
        exit 1
    fi

    git add *.sh
}

updateDirTree() {
    tree
}

updateDirTree
stageChanges

