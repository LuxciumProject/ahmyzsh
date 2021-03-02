alias drun='docker run'
alias dpsall='docker ps --all'
alias psdocker='docker ps'
alias drmall='docker rm $(docker ps -qa)'
alias drmallf='docker rm $(docker ps -qa) --force'
alias dimgall='docker images --all'
alias imgdocker='docker images'
alias drmiall='docker rmi $(docker images -qa)'
alias drmiallf='docker rmi --force $(docker images -qa)'
alias inspectbridge='docker network inspect bridge'

alias dstart='sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

alias dspxs='sudo docker run -it -v /home/luxcium/spx-data:/data --rm msftspeech/spx synthesize'
alias dokr_start='sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

alias dokr_stop='sudo systemctl disable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

function dokr_redis() {
  dokr_start
  docker container ls --filter id=$(docker run -d -p 6379:6379 -l=redis redis)
  redis-cli
}

function dokr_redis_6380() {
  dokr_start
  docker container ls --filter id=$(docker run -d -p 63780:6379 -l=redis redis)
}

function dokr_redis_random() {
  dokr_start
  docker container ls --filter id=$(docker run -d -P -l=redis redis)
}

# docker rm --force $(docker container ls --filter label=redis --quiet)
alias dokr_ls_redis='docker container ls --filter label=redis'
alias dokr_killall_redis='docker rm --force $(docker container ls --filter label=redis --quiet)'

alias dokr_up='enable_containerd up;docker container ls --all --size'
alias dokr_down='enable_containerd down'
alias dokr_restart='enable_containerd restart;docker container ls --all --size'

alias dokr_images='docker images'
alias images='docker images'
alias dokr_rm_all_images='docker rmi $(docker images -aq) 2> /dev/null'
alias dokr_rm_all_images_f='docker rmi --force $(docker images -aq) 2> /dev/null'
alias dokr_ps='docker ps -a'
alias dokr_rm_all='docker rm $(docker ps -aq) 2> /dev/null'
alias dokr_rm_all_f='docker rm --force $(docker ps -aq) 2> /dev/null'
alias dokr_helloworld='docker run hello-world'
