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
sudo iptables -t filter -P INPUT ACCEPT
sudo iptables -t filter -P FORWARD ACCEPT
sudo iptables -t filter -P OUTPUT ACCEPT
# ---------------------------------------------
# iptables -t nat -S
sudo iptables -t nat -P PREROUTING ACCEPT
sudo iptables -t nat -P INPUT ACCEPT
sudo iptables -t nat -P OUTPUT ACCEPT
sudo iptables -t nat -P POSTROUTING ACCEPT
# ---------------------------------------------
# iptables -t mangle -S
sudo iptables -t mangle -P PREROUTING ACCEPT
sudo iptables -t mangle -P INPUT ACCEPT
sudo iptables -t mangle -P FORWARD ACCEPT
sudo iptables -t mangle -P OUTPUT ACCEPT
sudo iptables -t mangle -P POSTROUTING ACCEPT
# ---------------------------------------------
# iptables -t raw -S
sudo iptables -t raw -P PREROUTING ACCEPT
sudo iptables -t raw -P OUTPUT ACCEPT
# ---------------------------------------------
# iptables -t security -S
sudo iptables -t security -P INPUT ACCEPT
sudo iptables -t security -P FORWARD ACCEPT
sudo iptables -t security -P OUTPUT ACCEPT
# ---------------------------------------------
# ip6tables -t filter -S
sudo ip6tables -t filter -P INPUT ACCEPT
sudo ip6tables -t filter -P FORWARD ACCEPT
sudo ip6tables -t filter -P OUTPUT ACCEPT
# ---------------------------------------------
# ip6tables -t nat ACCEPT
sudo ip6tables -t nat -P PREROUTING ACCEPT
sudo ip6tables -t nat -P INPUT ACCEPT
sudo ip6tables -t nat -P OUTPUT ACCEPT
sudo ip6tables -t nat -P POSTROUTING ACCEPT
# ---------------------------------------------
# ip6tables -t mangle ACCEPT
sudo ip6tables -t mangle -P PREROUTING ACCEPT
sudo ip6tables -t mangle -P INPUT ACCEPT
sudo ip6tables -t mangle -P FORWARD ACCEPT
sudo ip6tables -t mangle -P OUTPUT ACCEPT
sudo ip6tables -t mangle -P POSTROUTING ACCEPT
# ---------------------------------------------
# ip6tables -t raw ACCEPT
sudo ip6tables -t raw -P PREROUTING ACCEPT
sudo ip6tables -t raw -P OUTPUT ACCEPT
# ---------------------------------------------
# ip6tables -t security -S
sudo ip6tables -t security -P INPUT ACCEPT
sudo ip6tables -t security -P FORWARD ACCEPT
sudo ip6tables -t security -P OUTPUT ACCEPT
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

# # ##
# # ## Name the chains
# sudo iptables -t filter -N $ENO1_I
# sudo iptables -t filter -N $ENO1_O
# sudo iptables -t filter -N $ENO1_IF
# sudo iptables -t filter -N $ENO1_OF
# ## Name the chains
# sudo iptables -t filter -N $ENP4S0_I
# sudo iptables -t filter -N $ENP4S0_O
# sudo iptables -t filter -N $ENP4S0_IF
# sudo iptables -t filter -N $ENP4S0_OF
# ## Name the chains
# sudo iptables -t filter -N $LO_I
# sudo iptables -t filter -N $LO_O
# sudo iptables -t filter -N $LO_IF
# sudo iptables -t filter -N $LO_OF
# # ##
# # ## Link the chains
# sudo iptables -t filter -I INPUT -i eno1 -j   $ENO1_I
# sudo iptables -t filter -I OUTPUT -o eno1 -j   $ENO1_O
# sudo iptables -t filter -A FORWARD -i eno1 -j $ENO1_IF
# sudo iptables -t filter -A FORWARD -o eno1 -j $ENO1_OF
# # ## Link the chains
# sudo iptables -t filter -A INPUT -i enp4s0 -j  $ENP4S0_I
# sudo iptables -t filter -A OUTPUT -o enp4s0 -j   $ENP4S0_O
# sudo iptables -t filter -A FORWARD -i enp4s0 -j $ENP4S0_IF
# sudo iptables -t filter -A FORWARD -o enp4s0 -j $ENP4S0_OF
# # ## Link the chains
# sudo iptables -t filter -A INPUT -i lo -j $LO_I
# sudo iptables -t filter -A OUTPUT -o lo -j $LO_O
# sudo iptables -t filter -A FORWARD -i lo -j $LO_IF
# sudo iptables -t filter -A FORWARD -o lo -j $LO_OF
# ## Disallow SSH connections on tcp port 22
# ##
# sudo iptables -t filter -A INPUT -p tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENO1_I -p tcp --dport 22 -j DROP
# sudo iptables -t filter -A $ENP4S0_I -p tcp --dport 22 -j DROP
# sudo iptables -t filter -A $LO_I -p tcp --dport 22 -j DROP
# ##
# ## # Set access for localhost
# ##
# sudo iptables -t filter -A INPUT -i lo -j ACCEPT
# sudo iptables -t filter -A OUTPUT -o lo -j ACCEPT
# ##
# ## Accept packets belonging to established and related connections
# # * sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# sudo iptables -t filter -A $ENO1_IF -j DROP
# sudo iptables -t filter -A $ENO1_OF -j DROP
# sudo iptables -t filter -A $ENP4S0_IF -j DROP
# sudo iptables -t filter -A $ENP4S0_OF -j DROP

##
## Force the connection to reload
##
sudo ifconfig eno1 down
sudo ifconfig enp4s0 down
sleep 3
sudo ifconfig eno1 up
sudo ifconfig enp4s0 up
sleep 3

(
  sudo nmcli con reload conf eno1 &
  sudo nmcli con reload conf enp4s0 &
)
sleep 2
(
  sudo nmcli con reload dns-rc eno1 &
  sudo nmcli con reload dns-rc enp4s0 &
)
sleep 2
(
  sudo nmcli con reload dns-full eno1 &
  sudo nmcli con reload dns-full enp4s0 &
)
sleep 2

sudo nmcli con reload eno1
sleep 2
sudo nmcli con reload enp4s0
sleep 2

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
