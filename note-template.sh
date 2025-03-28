#!/bin/bash

template() {
    
    local COMMAND_NAME=$1

    local MAN_SYNOPSIS=`man $COMMAND_NAME 2> /dev/null | grep -E  "$COMMAND_NAME +\[" | head -n 1 | tr -s ' '`
  
cat << EOF > $COMMAND_NAME.sh
#!/bin/bash

##      -- $MAN_SYNOPSIS --     ##
    
    # DESCRIPCION
EOF

}

copy() {
    echo "copiando a /user/bin"
} 

usage() {
    echo "$0 [OPTIONS] [COMMAND_NAME]"
    exit 1
}


OPTIONS="c-:"
while getopts $OPTIONS OPTION
do
    case $OPTION in
        -)
            case $OPTARG in
                help)
                    usage
                    ;;
            esac;;

        ## todo, copiar /user/bin
        c)  
            copy
            ;;
        *)
            usage
            ;;
    esac
done


shift $(( OPTIND - 1 ))

[[ $# -eq 0 ]] && usage 


for COMMAND_NAME in $@
do  
    template $COMMAND_NAME
done


exit 0