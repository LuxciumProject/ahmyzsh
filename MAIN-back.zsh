
# will be working on simplification in a new feature branch
echo main
echo $VERBOSA
set +m


function prompt_() {
  isinteractive && echo "${@}"
}

function load_error_() {
  prompt_ "Error: '${1}' path can not be resolved"
  return 1
}
