#!/bin/bash

##      --  ps [options] --     ##
    
    # ps muestra un snapshot de los procesos en nuestra shell session
    # actuales

ps -f
 
    # la opcion -f, es por full-format, el cual muestra el snapshot
    # con en un formato mas completo 
    #     UID          PID    PPID  C STIME TTY          TIME CMD
    # alexram+    9349    9336  0 20:37 pts/1    00:00:00 zsh
    # alexram+    9774    2276  0 20:37 pts/1    00:00:00 zsh
    # alexram+    9775    2276  0 20:37 pts/1    00:00:00 zsh
    # alexram+    9778    2276  0 20:37 pts/1    00:00:00 zsh
