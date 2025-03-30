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
    if [[ `id -u` -ne 0 ]] 
        then
            echo -e "Must use root privilages to use this option" >&2
            usage
    fi

    [ -f /usr/bin/note-template.sh ] && echo "The scrip already exists on /usr/bin" >&2 | exit 1

    cp $0 /usr/bin &> /dev/null
    
    if [[ $? -ne 0 ]]
        then
            echo "Error while copying the script"
            exit 1
    fi

    exit 0
} 

usage() {
    echo -e "Usage:\n\t$0 [OPTIONS] [COMMAND_NAME...]"
    echo -e "\nOPTIONS:"
    printf "\t-c\t Copy scrip to /usr/bin, must use root privilages\n"
    printf "\t--help\t Prints a summary of %s command" $0 
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

        ## todo, copiar /usr/bin
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