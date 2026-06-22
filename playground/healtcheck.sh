#!/bin/bash

# This script generates a healthcheck page for my server

TITLE="System Information Report for $HOSTNAME"
UPTIME=$(uptime --since)
DATE=$(date --date="$UPTIME")
echo $DATE

cat << _EOF_
<html>
    <head>
        <title>$TITLE<title>
    </head>

    <body>
        <h1>$TITLE</h1>
        <p>Up since $DATE<p>
    
    </body>
</html>
_EOF_