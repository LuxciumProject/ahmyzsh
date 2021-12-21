source $AHMYZSH/settings/iptables.sh
# #
echo "Load main Settings for $ENP4S0_I and $ENP4S0_O"
# * Main Settings $ENP4S0_I and $ENP4S0_O
sudo iptables -t filter -A $ENP4S0_I -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -t filter -A $ENP4S0_O -j ACCEPT

sudo iptables -t filter -A $ENO1_I -j DROP
sudo iptables -t filter -A $ENO1_O -j DROP

# iptables -I $ENO1_I -s nodejs.org -j ACCEPT # change the IP address as appropriate
# iptables -I $ENO1_O -s nodejs.org -j ACCEPT # change the IP address as appropriate

# iptables -I $ENP4S0_I -s nodejs.org -j DROP # change the IP address as appropriate
# iptables -I $ENP4S0_O -s nodejs.org -j DROP # change the IP address as appropriate
# nodejs.org to test

# #
# * Main Settings $ENP4S0_I and $ENP4S0_O
# #

##
# !! Alternative Settings $ENO1_I and $ENO1_O
## Accept packets belonging to established and related connections
# sudo iptables -t filter -A $ENO1_I -m state --state ESTABLISHED,RELATED -j ACCEPT
# sudo iptables -t filter -A $ENO1_O -j ACCEPT

# sudo iptables -t filter -A $ENP4S0_I -j DROP
# sudo iptables -t filter -A $ENP4S0_O -j DROP
##
# !! Alternative Settings $ENO1_I and $ENO1_O
##

##
## List rules
##
# iptables -L -v
echo 'sudo iptables -t filter -L'
echo 4444444444-------------------------------------------------------------4444444444
sudo iptables -t filter -L
echo

##
## Save settings
##
#  /sbin/service iptables save
sudo iptables-save
sudo ip6tables-save

##
## Force the connection to reload
##

# sleep 2.5
# sudo nmcli con reload eno1
# sudo nmcli con reload enp4s0
# sudo ifconfig eno1 down
# sudo ifconfig enp4s0 down
# sleep 2.5
# sudo ifconfig eno1 up
# sudo ifconfig enp4s0 up
# sleep 2.5
# sudo nmcli connection reload
# sudo nmcli connection reload conf
# sudo nmcli connection reload dns-full
# sudo nmcli connection reload dns-rc
# sleep 0.25
# sudo nmcli connection reload eno1
# sudo nmcli connection reload conf eno1
# sudo nmcli connection reload dns-full eno1
# sudo nmcli connection reload dns-rc eno1
# sleep 0.25
# sudo nmcli connection reload enp4s0
# sudo nmcli connection reload conf enp4s0
# sudo nmcli connection reload dns-full enp4s0
# sudo nmcli connection reload dns-rc enp4s0
# sleep 0.25
##
## Ping from each connections
##
echo
echo -e '\u001b[7m\u001b[37m WHITE LINK (enp4s0) \u001b[0m\u001b[37m ------------------------------------------------------------\u001b[0m'
echo
ping -W 0.51 -I enp4s0 -c 2 8.8.8.8 && echo && ping -I enp4s0 -c 2 1.1.1.1 && echo -e '\u001b[1m\u001b[32;1menp4s0 ping (ACCEPTED)\u001b[0m' || echo -e '\u001b[1m\u001b[31;1menp4s0 ping FAILURE (DROPED)\u001b[0m'
# ping -W 1 -I enp4s0 -c 2 8.8.8.8 && echo && ping -I enp4s0 -c 2 1.1.1.1 && echo -e '\u001b[1m\u001b[32;1menp4s0 ping (ACCEPTED)\u001b[0m' || echo -e '\u001b[1m\u001b[31;1menp4s0 ping FAILURE (DROPED)\u001b[0m'
# ping -W 1 -I enp4s0 -c 2 nodejs.org # to test
echo
echo -e '\u001b[7m\u001b[34mBLUE LINK (eno1) \u001b[0m\u001b[34m ---------------------------------------------------------------\u001b[0m'
echo
ping -W 0.51 -I eno1 -c 2 8.8.8.8 && echo && ping -I eno1 -c 2 1.1.1.1 && echo -e '\u001b[1m\u001b[32;1meno1 ping (ACCEPTED)\u001b[0m' || echo -e '\u001b[1m\u001b[31;1meno1 ping (DROPED)\u001b[0m'
# ping -W 1 -I eno1 -c 2 8.8.8.8 && echo && ping -I eno1 -c 2 1.1.1.1 && echo -e '\u001b[1m\u001b[32;1meno1 ping (ACCEPTED)\u001b[0m' || echo -e '\u001b[1m\u001b[31;1meno1 ping (DROPED)\u001b[0m'
# ping -W 1 -I eno1 -c 2 nodejs.org # to test
echo

##
## List connections informations and status
##
ipinfos

exit 0 #
