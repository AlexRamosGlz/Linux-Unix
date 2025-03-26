#!/bin/bash

template() {
    
    local COMMAND_NAME=$1

    local MAN_SYNOPSIS=`man $COMMAND_NAME 2> /dev/null | grep -i name | head -n 1`
  
cat << EOF > $COMMAND_NAME.sh
#!/bin/bash

##      -- $MAN_SYNOPSIS --     ##
    
    # DESCRIPCION
EOF

}

usage() {
    echo `$0 [OPTIONS] [COMMAND_NAME]`
    exit 0
}


OPTIONS="p:-:"
while getopts $OPTIONS OPTION
do
    case $OPTION in
        -)
            case $OPTARG in
                help)
                    usage
                    ;;
            esac;;

        ## todo, que acepte un path como opcion
        p)
            W_PATH=$OPTARG
            ;;
        *)
            usage
            ;;
    esac
done

    
shift $(( $OPTIND - 1 ))

[ $# -eq 0 ] && usage

for COMMAND_NAME in $@
do 
    template $COMMAND_NAME
done


exit 0