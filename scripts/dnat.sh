#!/bin/bash
#
## redirect using iptables and DNAT for Google DNS
## Flush rules
# iptables -t nat -F PREROUTING
## List rules if you want to pause first add that
# iptables -t nat -L PREROUTING --line -v
# active rules we want
# replace <your_dns_server_ip> with your actual DNS server IP, examples pi-hole, adguard, unbound.
# standard dns
iptables -t nat -I PREROUTING -s 0.0.0.0/24 -d 8.8.4.4/32 -p udp --dport 53 -j DNAT --to-destination <your_dns_server_ip>
iptables -t nat -I PREROUTING -s 0.0.0.0/24 -d 8.8.8.8/32 -p udp --dport 53 -j DNAT --to-destination <your_dns_server_ip>
iptables -t nat -I PREROUTING -i br0 -p udp --dport 53 -j DNAT --to <your_dns_server_ip>
# DNS over TLS - DoT. This may matter if the endpoint is not using DDR for DNS
iptables -t nat -I PREROUTING -s 0.0.0.0/24 -d 8.8.4.4/32 -p udp --dport 853 -j DNAT --to-destination <your_dns_server_ip>
iptables -t nat -I PREROUTING -s 0.0.0.0/24 -d 8.8.8.8/32 -p udp --dport 853 -j DNAT --to-destination <your_dns_server_ip>
iptables -t nat -I PREROUTING -i br0 -p udp --dport 853 -j DNAT --to <your_dns_server_ip>
# other interfaces as desired
# iptables -t nat -I PREROUTING -i br<number> -p udp --dport 53 -j DNAT --to <your_dns_server_ip>

