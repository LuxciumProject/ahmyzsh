function compute_pl10K_now() {
    (env echo $(npm -v) >"${CACHE_FOLDER_}/NPM_VERSION.raw.txt")
    (env echo "$(cut -d ' ' -f 2 <<<$(tsc -v))" >"${CACHE_FOLDER_}/TSC_VERSION.raw.txt")

    call_ "compute_pl10k_"
}
