echo 'Set default policies for INPUT, FORWARD and OUTPUT chains'
## # Set default policies for INPUT, FORWARD and OUTPUT chains
##
sudo iptables -t filter -P INPUT DROP
sudo iptables -t filter -P FORWARD DROP
sudo iptables -t filter -P OUTPUT DROP
##
## Flush All Iptables Chains/Firewall rules
sudo iptables -t filter -F
## Delete all Iptables Chains
sudo iptables -t filter -X
## Flush all counters too
sudo iptables -t filter -Z
##
## Name the chains
sudo iptables -t filter -N ENO1_I
sudo iptables -t filter -N ENO1_O
sudo iptables -t filter -N ENO1_IF
sudo iptables -t filter -N ENO1_OF
## Name the chains
sudo iptables -t filter -N ENP4S0_I
sudo iptables -t filter -N ENP4S0_O
sudo iptables -t filter -N ENP4S0_IF
sudo iptables -t filter -N ENP4S0_OF
##
## Link the chains
sudo iptables -t filter -I INPUT -i eno1 -j ENO1_I
sudo iptables -t filter -I OUTPUT -o eno1 -j ENO1_O
sudo iptables -t filter -A FORWARD -i eno1 -j ENO1_IF
sudo iptables -t filter -A FORWARD -o eno1 -j ENO1_OF
## Link the chains
sudo iptables -t filter -A INPUT -i enp4s0 -j ENP4S0_I
sudo iptables -t filter -A OUTPUT -o enp4s0 -j ENP4S0_O
sudo iptables -t filter -A FORWARD -i enp4s0 -j ENP4S0_IF
sudo iptables -t filter -A FORWARD -o enp4s0 -j ENP4S0_OF

## Disallow SSH connections on tcp port 22
##
sudo iptables -t filter -A INPUT -p tcp --dport 22 -j DROP
sudo iptables -t filter -A ENO1_I -p tcp --dport 22 -j DROP
sudo iptables -t filter -A ENP4S0_I -p tcp --dport 22 -j DROP
##
## # Set access for localhost
##
sudo iptables -t filter -A INPUT -i lo -j ACCEPT
sudo iptables -t filter -A OUTPUT -o lo -j ACCEPT
##
## Accept packets belonging to established and related connections
# * sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

sudo iptables -t filter -A ENO1_IF -j DROP
sudo iptables -t filter -A ENO1_OF -j DROP
sudo iptables -t filter -A ENP4S0_IF -j DROP
sudo iptables -t filter -A ENP4S0_OF -j DROP
