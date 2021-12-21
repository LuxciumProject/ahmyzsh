# IPv6

##
## set default policies to let everything in
sudo ip6tables --policy INPUT   ACCEPT;
sudo ip6tables --policy OUTPUT  ACCEPT;
sudo ip6tables --policy FORWARD ACCEPT;

##
## start fresh
sudo ip6tables -Z; # zero counters
sudo ip6tables -F; # flush (delete) rules
sudo ip6tables -X; # delete all extra chains

# IPv4

##
## set default policies to let everything in
sudo iptables --policy INPUT   ACCEPT;
sudo iptables --policy OUTPUT  ACCEPT;
sudo iptables --policy FORWARD ACCEPT;

##
## start fresh
sudo iptables -Z; # zero counters
sudo iptables -F; # flush (delete) rules
sudo iptables -X; # delete all extra chains
