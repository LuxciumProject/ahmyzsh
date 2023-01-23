# ENO1_I='ENO1_I'
# ENO1_IF='ENO1_IF'
# ENO1_OF='ENO1_OF'
# ENO1_O='ENO1_O'
# ENP4S0_I='ENP4S0_I'
# ENP4S0_O='ENP4S0_O'
# ENP4S0_IF='ENP4S0_IF'
# ENP4S0_OF='ENP4S0_OF'
# LO_I='LO_I'
# LO_O='LO_O'
# LO_IF='LO_IF'
# LO_OF='LO_OF'
echo 'Set default policies for INPUT, FORWARD and OUTPUT chains'
## # Set default policies for INPUT, FORWARD and OUTPUT chains
##
# iptables -t filter -S
sudo iptables -t filter -P INPUT DROP
sudo iptables -t filter -P FORWARD DROP
sudo iptables -t filter -P OUTPUT DROP
# ---------------------------------------------
# iptables -t nat -S
# sudo iptables -t nat -P PREROUTING ACCEPT
# sudo iptables -t nat -P INPUT ACCEPT
# sudo iptables -t nat -P OUTPUT ACCEPT
# sudo iptables -t nat -P POSTROUTING ACCEPT
# ---------------------------------------------
# iptables -t mangle -S
sudo iptables -t mangle -P PREROUTING ACCEPT
sudo iptables -t mangle -P INPUT ACCEPT
sudo iptables -t mangle -P FORWARD DROP
sudo iptables -t mangle -P OUTPUT ACCEPT
sudo iptables -t mangle -P POSTROUTING ACCEPT
# ---------------------------------------------
# iptables -t raw -S
sudo iptables -t raw -P PREROUTING ACCEPT
sudo iptables -t raw -P OUTPUT ACCEPT
# ---------------------------------------------
# iptables -t security -S
sudo iptables -t security -P INPUT ACCEPT
sudo iptables -t security -P FORWARD DROP
sudo iptables -t security -P OUTPUT ACCEPT
# ---------------------------------------------
# ip6tables -t filter -S
sudo ip6tables -t filter -P INPUT DROP
sudo ip6tables -t filter -P FORWARD DROP
sudo ip6tables -t filter -P OUTPUT DROP
# ---------------------------------------------
# ip6tables -t nat DROP
# sudo ip6tables -t nat -P PREROUTING ACCEPT
# sudo ip6tables -t nat -P INPUT ACCEPT
# sudo ip6tables -t nat -P OUTPUT ACCEPT
# sudo ip6tables -t nat -P POSTROUTING ACCEPT
# ---------------------------------------------
# ip6tables -t mangle DROP
sudo ip6tables -t mangle -P PREROUTING DROP
sudo ip6tables -t mangle -P INPUT DROP
sudo ip6tables -t mangle -P FORWARD DROP
sudo ip6tables -t mangle -P OUTPUT DROP
sudo ip6tables -t mangle -P POSTROUTING DROP
# ---------------------------------------------
# ip6tables -t raw DROP
sudo ip6tables -t raw -P PREROUTING DROP
sudo ip6tables -t raw -P OUTPUT DROP
# ---------------------------------------------
# ip6tables -t security -S
sudo ip6tables -t security -P INPUT DROP
sudo ip6tables -t security -P FORWARD DROP
sudo ip6tables -t security -P OUTPUT DROP
# ---------------------------------------------

## -------------------------------------------------------------------------- -F
## Flush All Iptables Chains/Firewall rules -F
sudo iptables -t filter -F
sudo iptables -t nat -F
sudo iptables -t mangle -F
sudo iptables -t raw -F
sudo iptables -t security -F
## -------------------------------------------------------------------------- -F
sudo ip6tables -t filter -F
sudo ip6tables -t nat -F
sudo ip6tables -t mangle -F
sudo ip6tables -t raw -F
sudo ip6tables -t security -F

## -------------------------------------------------------------------------- -X
## Delete all Iptables Chains -X
sudo iptables -t filter -X
sudo iptables -t nat -X
sudo iptables -t mangle -X
sudo iptables -t raw -X
sudo iptables -t security -X
## -------------------------------------------------------------------------- -X
sudo ip6tables -t filter -X
sudo ip6tables -t nat -X
sudo ip6tables -t mangle -X
sudo ip6tables -t raw -X
sudo ip6tables -t security -X

## -------------------------------------------------------------------------- -Z
## Flush all counters too -Z
sudo iptables -t filter -Z
sudo iptables -t nat -Z
sudo iptables -t mangle -Z
sudo iptables -t raw -Z
sudo iptables -t security -Z
## -------------------------------------------------------------------------- -Z
sudo ip6tables -t filter -Z
sudo ip6tables -t nat -Z
sudo ip6tables -t mangle -Z
sudo ip6tables -t raw -Z
sudo ip6tables -t security -Z

# ##
# ## Name the chains
# sudo iptables -t filter -N $ENO1_I
# sudo iptables -t filter -N $ENO1_O
# sudo iptables -t filter -N $ENO1_IF
# sudo iptables -t filter -N $ENO1_OF
## Name the chains
# sudo iptables -t filter -N $ENP4S0_I
# sudo iptables -t filter -N $ENP4S0_O
# sudo iptables -t filter -N $ENP4S0_IF
# sudo iptables -t filter -N $ENP4S0_OF
## Name the chains
# sudo iptables -t filter -N $LO_I
# sudo iptables -t filter -N $LO_O
# sudo iptables -t filter -N $LO_IF
# sudo iptables -t filter -N $LO_OF
# ##
# ## Link the chains
sudo iptables -t filter -I INPUT -i eno1 -m state --state ESTABLISHED,RELATED -j ACCEPT # -j $ENO1_I
sudo iptables -t filter -I OUTPUT -o eno1 -j ACCEPT                                     # -j $ENO1_O
# sudo iptables -t filter -A FORWARD -i eno1 -j $ENO1_IF
# sudo iptables -t filter -A FORWARD -o eno1 -j $ENO1_OF
# sudo iptables -t filter -A $ENO1_I -m state --state ESTABLISHED,RELATED -j ACCEPT
# sudo iptables -t filter -A $ENO1_O -j ACCEPT
# ## Link the chains
sudo iptables -t filter -A INPUT -i enp4s0 -j DROP  # -j $ENP4S0_I
sudo iptables -t filter -A OUTPUT -o enp4s0 -j DROP # -j $ENP4S0_O
# sudo iptables -t filter -A FORWARD -i enp4s0 -j $ENP4S0_IF
# sudo iptables -t filter -A FORWARD -o enp4s0 -j $ENP4S0_OF
# ## Link the chains
sudo iptables -t filter -A INPUT -i lo -j ACCEPT  # -j $LO_I
sudo iptables -t filter -A OUTPUT -o lo -j ACCEPT # -j $LO_O
# sudo iptables -t filter -A FORWARD -i lo -j $LO_IF
# sudo iptables -t filter -A FORWARD -o lo -j $LO_OF
## Disallow SSH connections on tcp port 22
##
sudo iptables -t filter -A INPUT -p tcp --dport 22 -j DROP
sudo iptables -t filter -I INPUT -i eno1 -p tcp --dport 22 -j DROP
sudo iptables -t filter -A INPUT -i enp4s0 -p tcp --dport 22 -j DROP

# sudo iptables -t filter -A $ENO1_I -p tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -p tcp --dport 22 -j DROP
# sudo iptables -t filter -A $LO_I -p tcp --dport 22 -j DROP
##
## # Set access for localhost
##
# sudo iptables -t filter -A $LO_I -j ACCEPT
# sudo iptables -t filter -A $LO_O -j ACCEPT
# sudo iptables -t filter -A $LO_IF -j ACCEPT
# sudo iptables -t filter -A $LO_OF -j ACCEPT
##
## Accept packets belonging to established and related connections
# * sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# sudo iptables -t filter -A $ENO1_IF -j DROP
# sudo iptables -t filter -A $ENO1_OF -j DROP
# sudo iptables -t filter -A $ENP4S0_IF -j DROP
# sudo iptables -t filter -A $ENP4S0_OF -j DROP

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

function eno1_ping_test() {

  ## 1.1.1.2,1.0.0.2,8.8.8.8
  ## Ping from each connections
  ##

  echo
  echo -e '\u001b[7m\u001b[37m WHITE LINK (enp4s0) \u001b[0m\u001b[37m ------------------------------------------------------------\u001b[0m'
  echo
  ping -W 0.51 -I enp4s0 -c 1 8.8.8.8 && ping -I enp4s0 -c 1 1.1.1.1 && echo -e '\u001b[7m\u001b[37m WHITE LINK (enp4s0) \u001b[0m\u001b[37m\u001b[1m\u001b[31;1m (FAILED to DROP)\u001b[0m' || echo -e '\u001b[7m\u001b[37m WHITE LINK (enp4s0) \u001b[0m\u001b[37m\u001b[1m\u001b[30;1m (DROPED)\u001b[0m'
  # ping -W 1 -I enp4s0 -c 1 8.8.8.8
  #&& echo && ping -I enp4s0 -c 1 1.1.1.2 && echo -e '\u001b[1m\u001b[32;1menp4s0 ping (ACCEPTED)\u001b[0m' || echo -e '\u001b[1m\u001b[31;1menp4s0 ping FAILURE (DROPED)\u001b[0m'
  # ping -W 1 -I enp4s0 -c 1 104.20.23.46 && echo -e '\u001b[7m\u001b[37m WHITE LINK (enp4s0) \u001b[0m\u001b[37m\u001b[1m\u001b[32;1m ping to 104.20.23.46 (SUCCEED)\u001b[0m' || echo -e '\u001b[7m\u001b[37m WHITE LINK (enp4s0) \u001b[0m\u001b[37m\u001b[1m\u001b[31;1m ping to 104.20.23.46 (FAILED)\u001b[0m'

  # ping -W 0.51 -I enp4s0 -c 1 104.20.23.46
  echo

  echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[34m ---------------------------------------------------------------\u001b[0m'
  echo
  ping -W 0.51 -I eno1 -c 1 8.8.8.8 && ping -I eno1 -c 1 1.1.1.1 && echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[32;1m ping (ACCEPTED)\u001b[0m' || echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[31;1m ping (DROPED)\u001b[0m'
  # ping -W 1 -I eno1 -c 1 8.8.8.8
  #&& echo && ping -I eno1 -c 1 1.1.1.2 && echo -e '\u001b[1m\u001b[32;1m ping (ACCEPTED)\u001b[0m' || echo -e '\u001b[1m\u001b[31;1m ping (DROPED)\u001b[0m'
  # echo -n -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m '

  # ping -W 1 -I eno1 -c 1 104.20.23.46 && echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[32;1m ping to 104.20.23.46 (SUCCEED)\u001b[0m' || echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[31;1m ping to 104.20.23.46 (FAILD)\u001b[0m'

  # ping -W 0.51 -I eno1 -c 1 104.20.23.46

  ping -W 0.51 -I eno1 -c 1 0.0.0.0 && echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[32;1m ping to 0.0.0.0 (ACCEPTED)\u001b[0m' || echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[31;1m ping to 0.0.0.0 (DROPED)\u001b[0m'

  ping -W 0.51 -I eno1 -c 1 127.0.0.1 && echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[32;1m ping to 127.0.0.1 (ACCEPTED)\u001b[0m' || echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[1m\u001b[31;1m ping to 127.0.0.1 (DROPED)\u001b[0m'

  ping -W 0.51 -I enp4s0 -c 1 0.0.0.0 && echo -e '\u001b[7m\u001b[37m  WHITE LINK (enp4s0) \u001b[0m\u001b[1m\u001b[32;1m ping to 0.0.0.0 (ACCEPTED)\u001b[0m' || echo -e '\u001b[7m\u001b[37m  WHITE LINK (enp4s0) \u001b[0m\u001b[1m\u001b[31;1m ping to 0.0.0.0 (DROPED)\u001b[0m'

  ping -W 0.51 -I enp4s0 -c 1 127.0.0.1 && echo -e '\u001b[7m\u001b[37m  WHITE LINK (enp4s0) \u001b[0m\u001b[1m\u001b[32;1m ping to 127.0.0.1 (ACCEPTED)\u001b[0m' || echo -e '\u001b[7m\u001b[37m  WHITE LINK (enp4s0) \u001b[0m\u001b[1m\u001b[31;1m ping to 127.0.0.1 (DROPED)\u001b[0m'

  ping -W 0.51 -I lo -c 1 0.0.0.0 && echo -e '\u001b[7m\u001b[35m LOOP BACK (lo) \u001b[0m\u001b[1m\u001b[32;1m ping to 0.0.0.0 (ACCEPTED)\u001b[0m' || echo -e '\u001b[7m\u001b[35m LOOP BACK (lo) \u001b[0m\u001b[1m\u001b[31;1m ping to 0.0.0.0 (DROPED)\u001b[0m'

  ping -W 0.51 -I lo -c 1 127.0.0.1 && echo -e '\u001b[7m\u001b[35m LOOP BACK (lo) \u001b[0m\u001b[1m\u001b[32;1m ping to 127.0.0.1 (ACCEPTED)\u001b[0m' || echo -e '\u001b[7m\u001b[35m LOOP BACK (lo) \u001b[0m\u001b[1m\u001b[31;1m ping to 127.0.0.1 (DROPED)\u001b[0m'
}
##
## # Set access for localhost
##
# sudo iptables -t filter -I INPUT -i lo -j DROP
# sudo iptables -t filter -I OUTPUT -o lo -j DROP

# nmap 192.168.15.15
# nmap 192.168.15.53
# nmap 192.168.15.51
# nmap 192.168.15.50

# ##
# ## # Set access for localhost
# ##
# sudo iptables -t filter -I INPUT -i lo -j ACCEPT
# sudo iptables -t filter -I OUTPUT -o lo -j ACCEPT

# nmap 192.168.15.15
# nmap 192.168.15.53
# nmap 192.168.15.51
# nmap 192.168.15.50

# ip6tables -t nat -S
# -P PREROUTING ACCEPT
# -P INPUT ACCEPT
# -P OUTPUT ACCEPT
# -P POSTROUTING ACCEPT
# ---------------------------------------------
# ip6tables -t mangle -S
# -P PREROUTING ACCEPT
# -P INPUT ACCEPT
# -P FORWARD ACCEPT
# -P OUTPUT ACCEPT
# -P POSTROUTING ACCEPT
# ---------------------------------------------
# ip6tables -t raw -S
# -P PREROUTING ACCEPT
# -P OUTPUT ACCEPT
# ---------------------------------------------

# filter:
# This is the default table (if no -t option is passed). It contains the built-in chains INPUT (for packets destined to local sockets), FORWARD (for packets being routed through the box), and OUTPUT (for locally-generated packets).
# nat:
# This table is consulted when a packet that creates a new connection is encountered. It consists of three built-ins: PREROUTING (for altering packets as soon as they come in), OUTPUT (for altering locally-generated packets before routing), and POSTROUTING (for altering packets as they are about to go out).
# mangle:
# This table is used for specialized packet alteration. Until kernel 2.4.17 it had two built-in chains: PREROUTING (for altering incoming packets before routing) and OUTPUT (for altering locally-generated packets before routing). Since kernel 2.4.18, three other built-in chains are also supported: INPUT (for packets coming into the box itself), FORWARD (for altering packets being routed through the box), and POSTROUTING (for altering packets as they are about to go out).
# raw:
# This table is used mainly for configuring exemptions from connection tracking in combination with the NOTRACK target. It registers at the netfilter hooks with higher priority and is thus called before ip_conntrack, or any other IP tables. It provides the following built-

# http://x.com/ -A INPUT -p tcp -m tcp --dport 22 -j DROP

# iptables -I ENO1_I -s nodejs.org -j RETURN # change the IP address as appropriate
# iptables -I ENO1_O -s nodejs.org -j RETURN # change the IP address as appropriate

# iptables -I ENP4S0_I -s nodejs.org -j ACCEPT # change the IP address as appropriate
# iptables -I ENP4S0_O -s nodejs.org -j ACCEPT # change the IP address as appropriate
# nodejs.org to test

##
# $ Main Settings ENO1_I and ENO1_O
##

# #
# !! Alternative Settings ENP4S0_I and ENP4S0_O
# sudo iptables -t filter -A ENP4S0_I -m state --state ESTABLISHED,RELATED -j ACCEPT
# sudo iptables -t filter -A ENP4S0_O -j ACCEPT

# sudo iptables -t filter -A ENO1_I -j DROP
# sudo iptables -t filter -A ENO1_O -j DROP
# #
# !! Alternative Settings ENP4S0_I and ENP4S0_O
# #

##
# sudo iptables -t filter -A $ENO1_I -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_O -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP

# sudo iptables -t filter -A $ENP4S0_I -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_O -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A INPUT -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A OUTPUT -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A INPUT -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -A OUTPUT -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP

# sudo iptables -t filter -I $ENO1_I -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_I -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENO1_O -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP

# sudo iptables -t filter -I $ENP4S0_I -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -s 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -d 192.168.15.51 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -s 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -d 192.168.15.50 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -d corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -s corsairone-neb401-com -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_I -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I $ENP4S0_O -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I INPUT -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I OUTPUT -s 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I INPUT -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
# sudo iptables -t filter -I OUTPUT -d 0.0.0.0 -p tcp -m tcp --dport 22 -j DROP
#// -A ENO1_I -p tcp -m tcp --dport 22 -j DROP

# sudo iptables -t filter -A OUTPUT -d x.com -j DROP
# sudo iptables -t filter -A ENO1_O -d x.com -j DROP
# sudo iptables -t filter -A ENP4S0_O -d x.com -j DROP
# sudo iptables -t filter -A INPUT -d x.com -j DROP
# sudo iptables -t filter -A ENO1_I -d x.com -j DROP
# sudo iptables -t filter -A ENP4S0_I -d x.com -j DROP

# sudo iptables -t filter -A OUTPUT -s x.com -j DROP
# sudo iptables -t filter -A ENO1_O -s x.com -j DROP
# sudo iptables -t filter -A ENP4S0_O -s x.com -j DROP
# sudo iptables -t filter -A INPUT -s x.com -j DROP
# sudo iptables -t filter -A ENO1_I -s x.com -j DROP
# sudo iptables -t filter -A ENP4S0_I -s x.com -j DROP
# ping x.com
