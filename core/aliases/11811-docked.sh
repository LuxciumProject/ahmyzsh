#!/bin/bash

alias dps='docker ps'
alias dpsa='docker ps --all'
alias dmi='docker images'
alias dimg='docker images'
alias dmia='docker images --all'
alias dimga='docker images --all'
alias drun='docker run'
alias drma='((docker rm $(docker ps -qa))2>/dev/null|| exit 5)'
alias drmaf='((docker rm --force $(docker ps -qa))2>/dev/null|| exit 5)'
alias drmia='((docker rmi $(docker images -qa))2>/dev/null|| exit 5)'
alias drmiaf='((docker rmi --force $(docker images -qa))2>/dev/null|| exit 5)'
alias inspectbridge='docker network inspect bridge'

alias dstart='sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

alias dspxs='sudo docker run -it -v /home/luxcium/spx-data:/data --rm msftspeech/spx synthesize'
alias dckr_start='sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

alias dckr_stop='sudo systemctl disable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

alias dckr_ls_redis='docker container ls --filter label=redis'
alias dckr_killall_redis='docker rm --force $(docker container ls --filter label=redis --quiet)'

alias dckr_up='enable_containerd up;docker container ls --all --size'
alias dckr_down='enable_containerd down'
alias dckr_restart='enable_containerd restart;docker container ls --all --size'

alias dckr_images='docker images'
alias images='docker images'
alias dckr_rm_all_images='docker rmi $(docker images -aq) 2> /dev/null'
alias dckr_rm_all_images_f='docker rmi --force $(docker images -aq) 2> /dev/null'
alias dckr_ps='docker ps -a'
alias dckr_rm_all='docker rm $(docker ps -aq) 2> /dev/null'
alias dckr_rm_all_f='docker rm --force $(docker ps -aq) 2> /dev/null'
alias dckr_helloworld='docker run hello-world'

#+ // #### # REDIS # ####################################################### // +#
# export REDIS_DATA"${HOME}/WSD_250/redis/data"
# REDIS_DATA redislabs/rejson:latest
function dckr_redis_start_6381() {
  dckr_start
  (docker stop Redis_Main_6381 && docker rm Redis_Main_6381) 2>/dev/null
  docker container ls --no-trunc --filter id="$(docker run -d -p 6381:6379 -v "${REDIS_DATA}":/data --name=Redis_Main_6381 -l=redis redis:alpine redis-server --save 60 1 --loglevel warning 2>/dev/null)"
  ([[ $(redis-cli -p 6381 PING) == "PONG" ]] && (
    play -qv 0.75 ${AHMYZSH}/multimedia/sounds/dactylo-cloche.mp3 &
    (
      sleep 0.1875
      play -qv 0.50 ${AHMYZSH}/multimedia/sounds/pop-up.mp3
    ) &
  )) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
  # docker ps --no-trunc
}

function dckr_redis_stop_6381() {
  (
    docker stop Redis_Main_6381 2>/dev/null
    docker rm Redis_Main_6381 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6381() {
  ([[ $(redis-cli -p 6381 PING PONG) == "PONG" ]] && popsound) || notconnectsound
  return
}
# /home/luxcium/WSD_250/redis/6382/data/ // /home/luxcium/WSD_250/redis/6382/data/

function dckr_redis_start_6382() {
  echo path using REDIS_6382:"$REDIS_6382"

  dckr_start

  (docker stop Redis_JSON_6382 && docker rm Redis_JSON_6382) 2>/dev/null

  (docker container ls \
    --no-trunc \
    --filter id="$(docker run -d -p 6382:6379 \
      -v "${REDIS_6382}":/data \
      --name=Redis_JSON_6382 \
      -l=redis \
      redislabs/rejson:latest \
      redis-server \
      --save 60 1 \
      --loglevel debug \
      --loadmodule /usr/lib/redis/modules/rejson.so \
      --loadmodule /usr/lib/redis/modules/redisearch.so \
      2>/dev/null)" && [[ $(redis-cli -p 6382 PING) == "PONG" ]] && (
    play -qv 0.75 "${MY_SOUNDS}"/dactylo-cloche.mp3 &
    (
      sleep 0.1875
      play -qv 0.50 "${MY_SOUNDS}"/pop-up.mp3
    ) &
  )) || (play -qv 1 "${MY_SOUNDS}"/Oxygen-Im-Cant-Connect.ogg)
}
# function dckr_redis_start_6382() {
#   # // redislabs/rejson:latest
#   dckr_start
#   docker rm Redis_JSON_6382 2>/dev/null
#   docker container ls --filter id=$(docker run -d -p 6382:6379 --name=Redis_JSON_6382 -l=redis redis 2>/dev/null)
#   [[ $(redis-cli -p 6382 PING) == "PONG" ]] && popsound || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
# }

function dckr_redis_stop_6382() {
  (
    docker stop Redis_JSON_6382
    docker rm Redis_JSON_6382
  ) # 2>/dev/null
}

function isRedis_6382() {
  ([[ $(redis-cli -p 6382 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

alias notconnectsound="(play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)"
alias popsound="(play -qv 0.75 ${AHMYZSH}/multimedia/sounds/dactylo-cloche.mp3 & sleep 0.375;play -qv 0.50 ${AHMYZSH}/multimedia/sounds/pop-up.mp3 &)"
#
# alias play_Im-Cant-Connect='(play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)'
#

function dckr_redis_start_6384() {
  dckr_start
  docker rm Redis_Main_6384 2>/dev/null
  docker container ls --filter id="$(docker run -d -p 6384:6379 --name=Redis_Main_6384 -l=redis redis 2>/dev/null)"
  ([[ $(redis-cli -p 6384 PING) == "PONG" ]] && popsound) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
}

function dckr_redis_stop_6384() {
  (
    docker stop Redis_Main_6384 2>/dev/null
    docker rm Redis_Main_6384 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6384() {
  ([[ $(redis-cli -p 6384 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

function dckr_redis_start_6383() {
  dckr_start
  docker rm Redis_Main_6383 2>/dev/null
  docker container ls --filter id="$(docker run -d -p 6383:6379 --name=Redis_Main_6383 -l=redis redis 2>/dev/null)"
  ([[ $(redis-cli -p 6383 PING) == "PONG" ]] && popsound) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
}

function dckr_redis_stop_6383() {
  (
    docker stop Redis_Main_6383 2>/dev/null
    docker rm Redis_Main_6383 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6383() {
  ([[ $(redis-cli -p 6383 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

function dckr_redis_start_6380() {
  dckr_start
  docker rm Redis_Main_6380 2>/dev/null
  docker container ls --filter id="$(docker run -d -p 6380:6379 --name=Redis_Main_6380 -l=redis redis 2>/dev/null)"
  ([[ $(redis-cli -p 6380 PING) == "PONG" ]] && popsound) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
}

function dckr_redis_stop_6380() {
  (
    docker stop Redis_Main_6380 2>/dev/null
    docker rm Redis_Main_6380 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6380() {
  ([[ $(redis-cli -p 6380 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

function dckr_redis_start_all() {
  (
    (dckr_redis_start_6380) 2>/dev/null
    (dckr_redis_start_6381) 2>/dev/null
    (dckr_redis_start_6382) 2>/dev/null
    (dckr_redis_start_6383) 2>/dev/null
    (dckr_redis_start_6384) 2>/dev/null
    exit 0
  )

}

function dckr_redis_stop_all() {
  (
    (dckr_redis_stop_6380) 2>/dev/null
    (dckr_redis_stop_6381) 2>/dev/null
    (dckr_redis_stop_6382) 2>/dev/null
    (dckr_redis_stop_6383) 2>/dev/null
    (dckr_redis_stop_6384) 2>/dev/null
    exit 0
  )

}

# function dckr_redis_6380() {
#   dckr_start
#   docker container ls --filter id=$(docker run -d -p 6380:6379 --name=Redis_Main_6380 -l=redis redis)
# }

# function dckr_redis_random() {
#   dckr_start
#   docker container ls --filter id=$(docker run -d -P -l=redis redis)
# }

alias dckr_ls_redis='docker container ls --filter label=redis'
alias dckr_killall_redis='docker rm --force $(docker container ls --filter label=redis --quiet)'

#+ // #### # REDIS # ####################################################### // +#
