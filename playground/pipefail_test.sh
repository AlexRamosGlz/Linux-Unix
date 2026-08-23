#!/bin/bash 
echo "sin pipefail"
cat debugasdasd.sh 2> /dev/null | echo "si existe" > /dev/null; echo $? 
echo "Con pipefail"
set -o pipefail
cat debugasdasd.sh 2> /dev/null | echo "si existe" > /dev/null; echo $? 
