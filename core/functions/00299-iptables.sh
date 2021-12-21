function eno1_ping_test() {

  echo -e '\u001b[7m\u001b[35m LOOP BACK (lo) \u001b[0m\u001b[35m ----------------------------------------------------------- \u001b[0m'
  _ping_test 127.0.0.1 lo
  echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[34m ---------------------------------------------------------------\u001b[0m'
  _ping_test 1.1.1.1 eno1
  _ping_test 1.0.0.1 eno1
  _ping_test 1.1.1.2 eno1
  _ping_test 1.0.0.2 eno1
  _ping_test 1.1.1.3 eno1
  _ping_test 1.0.0.3 eno1
  echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[34m ---------------------------------------------------------------\u001b[0m'
  _ping_test 8.8.8.8 eno1
  _ping_test 8.8.4.4 eno1
  echo ''
  ipinfos
}

function _ping_test() {

  echo ''
  echo "\u001b[0m\u001b[36m--- ping to ${1} --------------\u001b[0m"
  sudo ping -W 0.25 -I ${2} -c 3 ${1} && echo -e "\u001b[0m\u001b[1m\u001b[32;1mping to ${1} (ACCEPTED)\u001b[0m" || echo -e "\u001b[0m\u001b[1m\u001b[31;1mping to ${1} (DROPED)\u001b[0m"
  echo ''

}

# _ping_test 1.1.1.1 eno1
# _ping_test 1.0.0.1 eno1
# _ping_test 1.1.1.2 eno1
# _ping_test 1.0.0.2 eno1
# _ping_test 1.1.1.3 eno1
# _ping_test 1.0.0.3 eno1
# echo "\u001b[0m\u001b[31m--- ping to 31X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[32m--- ping to 32X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[33m--- ping to 33X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[34m--- ping to 34X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[35m--- ping to 35X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[36m--- ping to 36X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[37m--- ping to 37X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[38m--- ping to 38X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[39m--- ping to 39X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[30m--- ping to 30X.XXX.XXX.XXX --------------\u001b[0m"

function ipinfos() {
  ##
  ## List connections informations and status
  ##
  echo 'LINK ---------------------------------------------------------------------------'
  sudo ip -c -br -0 addres show
  echo 'IP v6 --------------------------------------------------------------------------'
  sudo ip -c -br -6 addres show
  echo 'IP v4 --------------------------------------------------------------------------'
  sudo ip -c -br -4 addres show
  echo 'DNS (name) ---------------------------------------------------------------------'
  sudo ip -c -br -4 -r addres show
}
