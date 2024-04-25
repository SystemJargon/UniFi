# UniFi

My repo for [UniFi](https://www.ui.com/). Others may find some usefulness from it also.

This should work on the UDM-PRO (Unifi Dream Machine Pro), the UDR (Unifi Dream Router) and maybe other Unifi OS products.

----

## Links

[Backups via rsync info](rsync-backup.md)

[Scripts](/scripts/)

[Firewall Config and Groups for Casting across VLANs](unifi-casting-firewall-rules.md)

[How to Downgrade apps like Protect in Unifi OS](how-to-downgrade-apps.md)

[Content Filter](content-filter.md)

[Content Filter - AdBlocking](content-filtering-ad-blocking.md)

----

## CLI Syntax

### Interface Basics

```ip help``` ( Shows your the commands for IP)

```ip addr sh``` # To see interface address information

```ip route sh``` # To see routing information.

```route``` # An alternate way of seeing routes

```wg show``` Shows the WireGuard current configuration and device information. This can be used for Teleport also.

```wg showconf tlprt0``` Show the configuration for example, Teleport0 inteface (the default interface if you add Teleport VPN).

```wg help``` - List Commands for Help

----

### Firewall

<b> Firewall Logs </b>

```tail -f -n 1 /var/log/ulog/syslogemu.log```

(change -n 1 to your own syntax as required to read th number of line in tail) 


If you were logging Deny rules you've created for want to see all Denys in the firewall log, try this instead.

```tail -f -n 1 /var/log/ulog/syslogemu.log | grep Deny``` 

or

```cat /var/log/ulog/syslogemu.log | grep Deny```

----

<b>DNAT rule to redirect traffic using iptables </b>

Syntax using iptables

```iptables -t nat -A PREROUTING -i br<VLANID> -s x.x.x.x/xx -d 0.0.0.0/0 -p udp --dport yy -j DNAT --to z.z.z.z```

Example of redirecting Google DNS destination traffic to your own DNS server at 192.168.10.10 for VLAN20.

```iptables -t nat -A PREROUTING -i br20 -s 192.168.20.0/24 -d 8.8.8.8/32 -p udp --dport 53 -j DNAT --to 192.168.10.10```

```iptables -t nat -A PREROUTING -i br20 -s 192.168.20.0/24 -d 8.8.4.4/32 -p udp --dport 53 -j DNAT --to 192.168.10.10```


<b>To see the chain and rules with numbering (line simple layout) </b>

```` iptables -t nat -L PREROUTING --line ````

<b>To delete a rule in the chain </b>

````iptables -t nat -D PREROUTING <X>````

```<X>``` indicates the number of the rule in the chain to delete

----

### Storage and Paths

<b> Hard Disk Filling Up Quickly on the UDM-PRO? (Unifi Protect) </b>

Find the largest 20 files in /volume1

```` du -a /volume1 | sort -n -r | head -n 20 ````

You may need to remove 1GB UBV files in /pool directory

```` rm /volume1/.srv/unifi-protect/video/pool/*.ubv ````

<b> Paths </b>

Recordings
```du -hs /volume1/.srv/unifi-protect/video/```

Data
```du -hs /data```

----

### Other Repo's / Useful Links

[my unifi usg repo here](https://github.com/SystemJargon/unifi-usg)

Packet Capture - [Read this on Reddit](https://www.reddit.com/r/Ubiquiti/comments/ho19aw/capturing_udm_pro_wan_traffic_directly_into/)

[UniFi Utilities](https://github.com/unifi-utilities)

[Split-VPN - Credit @Peacey](https://github.com/peacey/split-vpn)

[UDM Source Code - Credit @tusc](https://github.com/tusc/UDM-source-code)

[UDM and Wireguard-kmod - Credit @tusc](https://github.com/tusc/wireguard-kmod)


