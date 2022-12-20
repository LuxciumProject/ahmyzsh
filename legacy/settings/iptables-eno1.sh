# ENO1_I='ENO1_I'
# ENO1_IF='ENO1_IF'
# ENO1_OF='ENO1_OF'
# ENO1_O='ENO1_O'
# ENP4S0_I='ENP4S0_I'
# ENP4S0_O='ENP4S0_O'
# ENP4S0_IF='ENP4S0_IF'
# ENP4S0_OF='ENP4S0_OF'

source $AHMYZSH/settings/iptables.sh
##
echo 'Load main Settings for ENO1_I and ENO1_O'
# $ Main Settings ENO1_I and ENO1_O
## Accept packets belonging to established and related connections

# sudo iptables -t filter -P FORWARD ACCEPT

# sudo iptables -t filter -A $ENO1_I -m state --state ESTABLISHED,RELATED -j ACCEPT
# sudo iptables -t filter -A $ENO1_O -j ACCEPT

# sudo iptables -t filter -A $ENP4S0_I -j DROP
# sudo iptables -t filter -A $ENP4S0_O -j DROP

# sudo iptables -t filter -I $ENO1_IF -j ACCEPT
# sudo iptables -t filter -I $ENO1_OF -j ACCEPT
# sudo iptables -t filter -I $ENP4S0_IF -j ACCEPT
# sudo iptables -t filter -I $ENP4S0_OF -j ACCEPT
# sudo iptables -t filter -I $LO_IF -j ACCEPT
# sudo iptables -t filter -I $LO_OF -j ACCEPT

echo 'iptables -t nat -S'
sudo iptables -t nat -S
echo '---------------------------------------------'
echo 'iptables -t mangle -S'
sudo iptables -t mangle -S
echo '---------------------------------------------'
echo 'iptables -t raw -S'
sudo iptables -t raw -S
echo '---------------------------------------------'

echo 'ip6tables -t nat -S'
sudo ip6tables -t nat -S
echo '---------------------------------------------'
echo 'ip6tables -t mangle -S'
sudo ip6tables -t mangle -S
echo '---------------------------------------------'
echo 'ip6tables -t raw -S'
sudo ip6tables -t raw -S
echo '---------------------------------------------'

## List rules
##
echo 'sudo iptables -t filter -L'
echo 6666666666-------------------------------------------------------6666666666
sudo ip6tables -t filter -L
echo
echo 'sudo iptables -t filter -L'
echo 4444444444-------------------------------------------------------4444444444
sudo iptables -t filter -L
echo

##
## Save settings
##
#  /sbin/service iptables save
sudo iptables-save
sudo ip6tables-save

## Force the connection to reload
ipreload

## Ping from each connections
eno1_ping_test

## List connections informations and status
ipinfos

# exit 0 #
