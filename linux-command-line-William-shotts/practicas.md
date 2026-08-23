================================================================================
           GUÍA DE PRÁCTICAS - THE LINUX COMMAND LINE (William Shotts)
================================================================================

Versión: 1.0
Autor: Guía generada por Lumo
Fecha: 12 Agosto 2026
Objetivo: Aplicación práctica de todos los capítulos del libro
================================================================================

┌──────────────────────────────────────────────────────────────────────────────┐
│                           ÍNDICE GENERAL                                     │
├──────────────────────────────────────────────────────────────────────────────┤
│ PARTE I: THE BASICS (Capítulos 1-7)                                        │
│ PARTE II: THE SHELL (Capítulos 8-13)                                       │
│ PARTE III: CONFIGURATION AND ENVIRONMENT (Capítulos 14-20)                 │
│ PARTE IV: COMMON TASKS AND ESSENTIAL TOOLS (Capítulos 21-30)               │
│ PARTE V: WRITING SHELL SCRIPTS (Capítulos 31-36)                           │
└──────────────────────────────────────────────────────────────────────────────┘

================================================================================
                         PARTE I: THE BASICS
================================================================================

CAPÍTULO 1: ¿QUÉ ES EL SHELL?
─────────────────────────────

Conceptos clave: Qué es el shell, interfaz vs terminal, historia UNIX

Prácticas obligatorias:
  [ ] 1. Identifica qué shell estás usando: echo $SHELL
  [ ] 2. Explora shells disponibles: cat /etc/shells
  [ ] 3. Cambia temporalmente de shell y vuelve: exit
  [ ] 4. Investiga el significado de "POSIX"
  [ ] 5. Crea archivo reflexivo: nano ~/practicas_tlcl/cap1_reflexion.md


CAPÍTULO 2: NAVEGACIÓN
───────────────────────

Conceptos clave: Sistema de archivos, directorios, pwd, cd, ls, rutas

Comandos esenciales:
  • pwd       - Mostrar ubicación actual
  • cd        - Cambiar directorio
  • ls        - Listar contenidos
  • tree      - Visualizar estructura jerárquica

Prácticas obligatorias:
  [ ] 1. Crea árbol complejo: mkdir -p ~/practicas_tlcl/proyectos/{web,mobile,backend}/{src,tests,docs}
  [ ] 2. Practica navegación relativa vs absoluta
  [ ] 3. Usa tab-completion intensivamente
  [ ] 4. Explora directorios del sistema (/home, /var/log, /etc)
  [ ] 5. Crea script que muestre ruta actual


CAPÍTULO 3: EXPLORANDO EL SISTEMA
──────────────────────────────────

Conceptos clave: Información del sistema, man pages, tipo de archivo

Comandos esenciales:
  • man       - Páginas de manual
  • uname     - Información del kernel
  • hostname  - Nombre del host
  • uptime    - Tiempo de actividad
  • free -h   - Memoria RAM
  • df -h     - Espacio en disco
  • file      - Tipo de archivo

Prácticas obligatorias:
  [ ] 1. Explora man pages: man ls, man -k file, whatis pwd
  [ ] 2. Examina información básica: uname -a, hostname, uptime, date
  [ ] 3. Explora hardware: lscpu, lsblk, free -h, df -h, du -sh ~
  [ ] 4. Identifica tipos de archivo con 'file'
  [ ] 5. Lista usuarios: cat /etc/passwd | cut -d: -f1


CAPÍTULO 4: MANIPULANDO ARCHIVOS Y DIRECTORIOS
───────────────────────────────────────────────

Comandos esenciales:
  • cp        - Copiar
  • mv        - Mover/Renombrar
  • rm        - Eliminar
  • mkdir     - Crear directorio
  • rmdir     - Eliminar directorio vacío
  • touch     - Crear archivo vacío
  • ln        - Crear enlaces

Prácticas obligatorias:
  [ ] 1. Crea 10 archivos: for i in {1..10}; do touch archivo_$i.txt; done
  [ ] 2. Copia con atributos: cp -rp fuente destino
  [ ] 3. Renombra y mueve archivos
  [ ] 4. Elimina archivos con precaución: rm temporal*.tmp
  [ ] 5. Crea enlaces simbólicos vs duros: ln -s, ln
  [ ] 6. Elimina directorios anidados: rm -r viejo


CAPÍTULO 5: TRABAJANDO CON COMANDOS
─────────────────────────────────────

Comandos esenciales:
  • --help    - Ayuda integrada
  • wildcard  - *, ?, []
  • &&, ||, ; - Combinación de comandos

Prácticas obligatorias:
  [ ] 1. Compara opciones cortas vs largas: ls -l vs ls --long
  [ ] 2. Usa --help de varios comandos
  [ ] 3. Escapa caracteres especiales con comillas
  [ ] 4. Practica wildcards: touch prueba_{a,b,c}.txt
  [ ] 5. Combina comandos: cmd1 && cmd2 || cmd3
  [ ] 6. Revisa histórico: history | tail -20


CAPÍTULO 6: REDIRECCIÓN
────────────────────────

Operadores:
  • >       - Redirige stdout (sobrescribe)
  • >>      - Añade a stdout
  • 2>      - Redirige stderr
  • &>      - Redirige stdout y stderr
  • <       - Lee desde archivo como stdin

Prácticas obligatorias:
  [ ] 1. Redirige salida: ls /etc > lista.txt
  [ ] 2. Añade sin sobrescribir: date >> lista.txt
  [ ] 3. Maneja errores: ls /no_exist 2> errores.log
  [ ] 4. Combina stdout/stderr: ls /existe /no_existe &> todo.txt
  [ ] 5. Usa /dev/null como vertedero
  [ ] 6. Usa tee para ver Y guardar: ls | tee lista.txt | wc -l


CAPÍTULO 7: FLUJO DE TEXTO
───────────────────────────

Comandos esenciales:
  • cat       - Concatenar/imprimir archivo
  • less      - Visor paginado avanzado
  • head      - Primeras líneas
  • tail      - Últimas líneas
  • wc        - Contar líneas/palabras/caracteres

Prácticas obligatorias:
  [ ] 1. Explora cat: cat -n, cat -A
  [ ] 2. Usa head/tail: head -20 archivo, tail -20 archivo
  [ ] 3. Ver archivo en tiempo real: tail -f archivo.log (Ctrl+C para salir)
  [ ] 4. Usa less para navegación: espacio=bajada, b=subida, q=salir, /=buscar
  [ ] 5. Extrae líneas específicas: sed -n '10,20p' archivo
  [ ] 6. Visualiza binarios: xxd archivo | head -20

================================================================================
                         PARTE II: THE SHELL
================================================================================

[CAPS 8-13 siguen con estructura similar...]

================================================================================
                        PROYECTO FINAL INTEGRADOR
================================================================================

audit_system.sh - Auditoría Completa del Sistema

Funcionalidades:
  • Verificación de seguridad (contraseñas, permisos, SUID/SGID)
  • Análisis de rendimiento (CPU, memoria, disco, procesos)
  • Configuración de red
  • Generación de reporte HTML

Para ejecutar:
  ./audit_system.sh
  
El reporte se guardará en: ~/auditorias/auditoria_YYYYMMDD_HHMMSS.html

================================================================================
                              CHECKLIST DE PROGRESO
================================================================================

Marca cada ítem cuando lo completes:

PARTE I - Fundamentos                    | ESTADO
────────────────────────────────────────────────────
Capítulo 1 - ¿Qué es el shell?          | □ □ □
Capítulo 2 - Navegación                  | □ □ □
Capítulo 3 - Explorando el sistema       | □ □ □
Capítulo 4 - Manipulación archivos       | □ □ □
Capítulo 5 - Trabajando con comandos     | □ □ □
Capítulo 6 - Redirección                 | □ □ □
Capítulo 7 - Flujo de texto              | □ □ □

PARTE II - El Shell                      | ESTADO
────────────────────────────────────────────────────
Capítulo 8 - Pipelines                   | □ □ □
Capítulo 9 - Variables del shell         | □ □ □
Capítulo 10 - Funciones                  | □ □ □
Capítulo 11 - Condicionales              | □ □ □
Capítulo 12 - Bucles                     | □ □ □
Capítulo 13 - Archivos de texto          | □ □ □

[Continúa para todas las partes...]

================================================================================
                            NOTAS PERSONALES
================================================================================

Fecha inicio: ________________
Fecha finalización estimada: ________________

Observaciones:
__________________________________________________________________________
__________________________________________________________________________
__________________________________________________________________________

Logros principales:
__________________________________________________________________________
__________________________________________________________________________
__________________________________________________________________________

Proyectos creados:
__________________________________________________________________________
__________________________________________________________________________
__________________________________________________________________________

================================================================================
                               FIN DEL DOCUMENTO
================================================================================

Para obtener más información:
• Libro original: https://linuxcommand.org/tlcl.php
• Descarga PDF oficial: https://sourceforge.net/projects/linuxcommand/files/TLCL/
• Translación al español: https://archive.org/details/la-linea-de-comandos-de-linux

================================================================================
