function __loader__() {
    # Set you locale here
    : ${LANG:="fr_CA.UTF-8"}
    export LANG

    local S1="${AHMYZSH}/paths.sh"
    if [ -f "$S1" ]; then
        . "${S1}"
        init_paths
    else
        echo "Can not load 'init_paths' from '${S1}' please verify path or file"
    fi

    export BASE_LAYOUTS="${ZSH_SOURCES}/layouts/base-layouts.sh"
    local S1=${BASE_LAYOUTS}
    if [ -f "$S1" ]; then
        . ${S1}
        load_layouts
    else
        echo "Can not load 'load_layouts' from '${S1}' please verify path or file"
    fi

    local S1="${AHMYZSH}/functions.sh"
    if [ -f "$S1" ]; then
        . "${S1}"
        init_functions
    else
        echo "Can not load 'init_functions' from '${S1}' please verify path or file"
    fi
}
