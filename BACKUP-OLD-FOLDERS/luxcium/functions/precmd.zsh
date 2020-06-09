function precmd() {

    if [ "$ENV_LOADED" != 'true' ]; then
        export ENV_LOADED='true'
        autocomplete
    fi
    if [ "$NODE_VERSION" != "$(cut -d 'v' -f 2 <<<$(node -v))" ]; then
        compute_p9k
    fi
}
