echo $PATH
where sh
which sh
echo $PATH
sh -v
exit 1
. /home/luxcium/ahmyzsh/MAIN.sh
source  /home/luxcium/ahmyzsh/MAIN.sh
source  /home/luxcium/ahmyzsh/MAIN.sh
bash
echo $IS_BASH_
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"
echo $IS_BASH_
echo $IS_BASH_
echo $IS_ZSH_ $IS_BASH_
source  /home/luxcium/ahmyzsh/MAIN.sh
echo $IS_ZSH_ $IS_BASH_
SCIENTIA_ES_LUX_PRINCIPIUM
echo $IS_ZSH_ $IS_BASH_
source  /home/luxcium/ahmyzsh/MAIN.sh
SCIENTIA_ES_LUX_PRINCIPIUM
SCIENTIA_ES_LUX_PRINCIPIUM
SCIENTIA_ES_LUX_PRINCIPIUM
where npm
exit
which npm
exit
exec bash
function Bash_Login_Start() {
  if [[ Bash_Login_Start_Did_Execute != true ]]; then     export Bash_Login_Start_Did_Execute=true;     shopt -q login_shell && (       echo "I'm a login shell";       return 0;     ) || (       echo 'Not login shell';       return 1;     );   fi }
function Bash_Login_Start() {
  if [[ Bash_Login_Start_Did_Execute != true ]]; then     export Bash_Login_Start_Did_Execute=true;     shopt -q login_shell && (       echo "I'm a login shell";       return 0;     ) || (       echo 'Not login shell';       return 1;     );   fi }
Bash_Login_Start
function isloginshell() { #+ I'm a login shell
  if [[ -o login ]]; then     echostdout "I'm a login shell"       && return 0;   else     echostderr "I'm a non login shell"       && return 1;   fi }
isloginshell
source /etc/zshenv 
SCIENTIA_ES_LUX_PRINCIPIUM
SCIENTIA_ES_LUX_PRINCIPIUM
SCIENTIA_ES_LUX_PRINCIPIUM
source /etc/zshenv 
SCIENTIA_ES_LUX_PRINCIPIUM
source /etc/zshenv 
SCIENTIA_ES_LUX_PRINCIPIUM
SCIENTIA_ES_LUX_PRINCIPIUM
source /etc/zshenv 
ps -o comm= -p $$ | grep 'bash'
echo $IS_BASH_
[ -z "${IS_BASH_}" ] && echo bash
[ -z "${IS_BASH_}" ] ||  echo bash
echo "$(ps -o comm= -p $$ | grep 'zsh')"
source /etc/zshenv 
SCIENTIA_ES_LUX_PRINCIPIUM
SCIENTIA_ES_LUX_PRINCIPIUM
SCIENTIA_ES_LUX_PRINCIPIUM
[ -o interactive ] && echo true
[ -o interactive ] && echo true
shopt -q login_shell && echo 'Login shell' || echo 'Not login shell'
[[ $- == *i* ]] && echo 'Interactive' || echo 'Not interactive'
Load_Intearctive_Login_State
function Bash_Login_Start() {
  if [[ Bash_Login_Start_Did_Execute != true ]]; then     export Bash_Login_Start_Did_Execute=true;     shopt -q login_shell && echo "I'm a login shell";   fi }
function Bash_Interactive_Start() {   if [[ Bash_Interactive_Start_Did_Execute != true ]]; then     export Bash_Interactive_Start_Did_Execute=true     if [[ $- == *i* ]]; then       echo "I'm interactive shell";     fi;   fi }
 Bash_Login_Start
function Bash_Login_Start() {
  if [[ Bash_Login_Start_Did_Execute != true ]]; then     export Bash_Login_Start_Did_Execute=true;     shopt -q login_shell && echo "I'm a login shell" || echo 'Not login shell';   fi }
function Bash_Interactive_Start() {   if [[ Bash_Interactive_Start_Did_Execute != true ]]; then     export Bash_Interactive_Start_Did_Execute=true     if [[ $- == *i* ]]; then       echo "I'm interactive shell" || echo 'Not interactive';     fi;   fi }
 Bash_Login_Start
echo $PATH
IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"
alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (echo 'zsh'; exit 0) || (echo 'not zsh'; exit 1))"
alias isbash="([[ -n ${IS_BASH_:-''} ]] && (echo 'bash'; exit 0) || (echo 'not bash'; exit 1))"
alias iszsh_="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
alias isbash_="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"
iszsh
iszsh_
iszsh_ && echo true || echo false
isbash_
isbash_ && echo true || echo false
IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"
alias iszsh_v="([[ -n ${IS_ZSH_:-''} ]] && (echo 'true'; exit 0) || (echo 'false'; exit 1))"
alias isbash_V="([[ -n ${IS_BASH_:-''} ]] && (echo 'true'; exit 0) || (echo 'false'; exit 1))"
alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
alias isbash="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"
isbash
function isloginshell() { #+ I'm a login shell
  if [[ -o login ]]; then     echostdout "I'm a login shell"       && return 0;   else     echostderr "I'm a non login shell"       && return 1;   fi }
isloginshell
function Bash_Login_Start() {
  if [[ Bash_Login_Start_Did_Execute != true ]]; then     export Bash_Login_Start_Did_Execute=true;     shopt -q login_shell && (       echo "I'm a login shell";       return 0;     ) || (       echo 'Not login shell';       return 1;     );   fi }
Bash_Login_Start
bash -l
htop
sudo htop
zsh -c local
zsh -c env
sudo reboot
zsh -x
env
echo $PKG_CONFIG_PATH 
