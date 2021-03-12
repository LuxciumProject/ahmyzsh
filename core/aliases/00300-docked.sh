alias drun='docker run'
alias dpsall='docker ps --all'
alias dps='docker ps'
alias psdocker='docker ps'
alias drmall='docker rm $(docker ps -qa)'
alias drmallf='docker rm $(docker ps -qa) --force'
alias dimgall='docker images --all'
alias dimg='docker images'
alias imgdocker='docker images'
alias drmiall='docker rmi $(docker images -qa)'
alias drmiallf='docker rmi --force $(docker images -qa)'
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

function dckr_redis_start() {
  dckr_start
  docker container ls --filter id=$(docker run -d -p 6381:6379 --name=Redis_Main_6381 -l=redis redis)
  [[ $(redis-cli -p 6381 PING) == "PONG" ]] && popsound
}

function dckr_redis_stop() {
  (
    docker stop Redis_Main_6381
    docker rm Redis_6381
  ) 2>/dev/null
}

function isRedis6381() {
  [[ $(redis-cli PING) == "PONG" ]] && popsound || exit
}

function dckr_redis_6380() {
  dckr_start
  docker container ls --filter id=$(docker run -d -p 6380:6379 --name=Redis_Main_6380 -l=redis redis)
}

function dckr_redis_random() {
  dckr_start
  docker container ls --filter id=$(docker run -d -P -l=redis redis)
}

alias dckr_ls_redis='docker container ls --filter label=redis'
alias dckr_killall_redis='docker rm --force $(docker container ls --filter label=redis --quiet)'

#+ // #### # REDIS # ####################################################### // +#
