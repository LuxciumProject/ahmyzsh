alias iplist="sudo iptables -t filter -L"
alias iprules="sudo iptables -t filter -S"
alias ipruleslist="sudo iptables -t filter -S"
alias iplinks="sudo ip -c -h -p -a link show"
alias ipaddresses="sudo ip -c -h -p -a -4 addres show"
alias ip6addresses="sudo ip -c -h -p -a -6 addres show"
alias ip0addresses="sudo ip -c -h -p -a -4 -0 addres show"

alias ipeno1reset="zsh ${AHMYZSH}/settings/iptables-eno1.sh"
alias ipreset="zsh ${AHMYZSH}/settings/iptables-reset.sh"
alias ipenable="zsh ${AHMYZSH}/settings/iptables-enabler.sh"
# enp0s31f6 /home/luxcium/ahmyzsh/settings/iptables-enabler.sh

# sudo ip -c -br -0 addres show
# sudo ip -c -br -6 addres show
# sudo ip -c -br -4 addres show
# sudo ip -c -br -4 -r addres show

function iphelp() {
  echo sudo ip link help --------------------------------------------------------
  sudo ip link help
  echo sudo ip address help --------------------------------------------------------
  sudo ip address help
  echo sudo ip addrlabel help --------------------------------------------------------
  sudo ip addrlabel help
  echo sudo ip route help --------------------------------------------------------
  sudo ip route help
  echo sudo ip rule help --------------------------------------------------------
  sudo ip rule help
  echo sudo ip neigh help --------------------------------------------------------
  sudo ip neigh help
  echo sudo ip ntable help --------------------------------------------------------
  sudo ip ntable help
  echo sudo ip tunnel help --------------------------------------------------------
  sudo ip tunnel help
  echo sudo ip tuntap help --------------------------------------------------------
  sudo ip tuntap help
  echo sudo ip maddress help --------------------------------------------------------
  sudo ip maddress help
  echo sudo ip mroute help --------------------------------------------------------
  sudo ip mroute help
  echo sudo ip mrule help --------------------------------------------------------
  sudo ip mrule help
  echo sudo ip monitor help --------------------------------------------------------
  sudo ip monitor help
  echo sudo ip xfrm help --------------------------------------------------------
  sudo ip xfrm help
  echo sudo ip netns help --------------------------------------------------------
  sudo ip netns help
  echo sudo ip l2tp help --------------------------------------------------------
  sudo ip l2tp help
  echo sudo ip tcp_metrics help --------------------------------------------------------
  sudo ip tcp_metrics help
  echo sudo ip token help --------------------------------------------------------
  sudo ip token help
  echo sudo ip macsec help --------------------------------------------------------
  sudo ip macsec help
  echo sudo ip vrf help --------------------------------------------------------
  sudo ip vrf help
  echo sudo ip mptcp help --------------------------------------------------------
  sudo ip mptcp help
}

# lo               UNKNOWN        00:00:00:00:00:00 <LOOPBACK,UP,LOWER_UP>
# enp4s0           UP             10:7b:44:54:c3:53 <BROADCAST,MULTICAST,UP,LOWER_UP>
# eno1             UP             10:7b:44:54:c3:50 <BROADCAST,MULTICAST,UP,LOWER_UP>
# ❯ sudo ip -c -br -6 addres show
# lo               UNKNOWN        ::1/128
# enp4s0           UP             fe80::f010:827f:90f8:e32a/64
# eno1             UP             fe80::fa1a:3d68:d59e:1391/64

#*    -4     shortcut for -family inet.
#*    -6     shortcut for -family inet6.
#*    -B     shortcut for -family bridge.
#*    -M     shortcut for -family mpls.
#*    -0     shortcut for -family link.

function ipreload() {
  ##
  ## Force the connection to reload
  ##
  sudo ifconfig eno1 down
  sudo ifconfig enp4s0 down
  sleep 2
  sudo ifconfig eno1 up
  sudo ifconfig enp4s0 up
  sleep 3

  (
    sudo nmcli con reload conf eno1 &
    sudo nmcli con reload conf enp4s0
  )
  sleep 0.5
  (
    sudo nmcli con reload dns-rc eno1 &
    sudo nmcli con reload dns-rc enp4s0
  )
  sleep 0.5
  (
    sudo nmcli con reload dns-full eno1 &
    sudo nmcli con reload dns-full enp4s0
  )
  sleep 0.5

  sudo nmcli con reload eno1
  sleep 1.25
  sudo nmcli con reload enp4s0
  sleep 1.25
}
