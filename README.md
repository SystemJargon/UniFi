## Unifi Dream Machine / Router (Pro/Pro SE).

[Backups via rsync](rsync-backup.md)

[Firewall Config and Groups for Casting across VLANs](unifi-casting-firewall-rules.md)

----

<b> Firewall Logs via SSH? </b>

```tail -f -n 1 /var/log/ulog/syslogemu.log```

(change -n 1 to your own syntax as required)

----

<b> Hard Disk Filling Up Quickly on the UDM-PRO? (Unifi Protect) </b>

Find the largest 20 files in /volume1

```
du -a /volume1 | sort -n -r | head -n 20
```

You may need to remove 1GB UBV files in /pool directory

```
rm /volume1/.srv/unifi-protect/video/pool/*.ubv
```

----

### Other Repo's / Useful Links

[my unifi usg repo here](https://github.com/SystemJargon/unifi-usg)

Packet Capture - [Read this on Reddit](https://www.reddit.com/r/Ubiquiti/comments/ho19aw/capturing_udm_pro_wan_traffic_directly_into/)

[UniFi Utilities](https://github.com/unifi-utilities)

[Split-VPN - Credit @Peacey](https://github.com/peacey/split-vpn)

[UDM Source Code - Credit @tusc](https://github.com/tusc/UDM-source-code)

[UDM and Wireguard-kmod - Credit @tusc](https://github.com/tusc/wireguard-kmod)

[How to Downgrade apps like Protect in Unifi OS](how-to-downgrade-apps.md)
