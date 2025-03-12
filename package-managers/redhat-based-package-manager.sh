#!/bin/bash

##      -- Instalar paquetes --     ##

  # * Un package manager es utilizado para instalar, actualizar y remover aplicaciones * #


dnf search nvim     # Busca el package para instalar

dnf install nvim    # Instala el package proveido

dnf upgrade nvim     # Actualiza el package proveido

dnf remove nvim     # Elimina/Desinstala el package proveido
