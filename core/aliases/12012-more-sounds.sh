

_t1sound(){
  play_019 &
}
_t5sound(){
  play_017 &

}
_t15sound(){
  play_0021 &
  play_0020 &
}
_t30sound(){
  play_08 &
  sleep 1.25
  play_08 &
  sleep 0.625
  play_08 &
  sleep 1.25
  play_08 &
}
_t60sound(){
  play_019 &
}


function timer1min(){
  play_019 &
  sleep 60
}

function _timer4min(){
  timer1min
  timer1min
  timer1min
  timer1min
}



function timer5min(){
  _timer4min
  play_017 &
  sleep 60
}


function _timer14min(){
  timer5min
  timer5min
  _timer4min
}


function timer15min(){
  _timer14min
  play_0021 &
  play_0020 &
  sleep 60
}


function _timer29min(){
  timer15min
  _timer14min
}

function timer30min(){
  _timer29min
  play_08 &
  sleep 1.25
  play_08 &
  sleep 0.625
  play_08 &
  sleep 1.25
  play_08 &
  sleep 60
}


function timer60min(){
  timer30min
  _timer29min
  play_09 &
  sleep 0.625
  play_09 &
  play_09 &
  sleep 0.625
  play_09 &
  sleep 60
  play_zelda_email &
}
function timer60now(){

  play_zelda_buddylogin  &
  timer60min &

}
