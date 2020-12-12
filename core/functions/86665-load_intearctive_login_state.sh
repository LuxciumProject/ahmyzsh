function Load_Intearctive_Login_State() {
  export Login_Start_Did_Execute=false
  export Non_Login_Start_Did_Execute=false
  export Interactive_Start_Did_Execute=false
  export Non_Interactive_Start_Did_Execute=false

  Login_Start
  Non_Login_Start
  Interactive_Start
  Non_Interactive_Start
}

function Login_Start() {
  if [[ Login_Start_Did_Execute != true ]]; then
    export Login_Start_Did_Execute=true
    if [[ -o login ]]; then
      echo "I'm a login shell"
    fi
  fi

}

function Interactive_Start() {
  if [[ Interactive_Start_Did_Execute != true ]]; then
    export Interactive_Start_Did_Execute=true
    if [[ -o interactive ]]; then
      echo "I'm interactive shell"
    fi
  fi

}

function Non_Login_Start() {
  if [[ Non_Login_Start_Did_Execute != true ]]; then
    export Non_Login_Start_Did_Execute=true
    if [[ -o login ]]; then; else #+ !! ELSE !!
      echo "I'm a non login shell"
    fi
  fi
}

function Non_Interactive_Start() {
  if [[ Non_Interactive_Start_Did_Execute != true ]]; then
    export Non_Interactive_Start_Did_Execute=true
    if [[ -o interactive ]]; then; else #+ !! ELSE !!
      echo "I'm non interactive shell"
      export VERBOSA=0
    fi
  fi
}
