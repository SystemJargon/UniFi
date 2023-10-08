<h1>unifi-casting-firewall-rules.md</h1>

What: Configuraiton to Firewall and IP Groups needed to make Casting traffic flow and things cast OK.

----

<b>Create 3 Groups under Settings > profiles > IP Groups </b>

Create 4 groups


* IPv4 Address Group 
* Name: RFC1918
* Address values: 192.168.0.0/16, 172.16.0.0/12, 10.0.0.0/8

<br>

* IPv4 Address Group 
* Name: IP_Multicast
* Address values: 224.0.0.0/4

<br>

* Port Group 
* Name: Ports_Cast
* Port values: 8008, 8009, 5353

<br>

* IPv4 Address Group 
* Name: IP_Cast
* Address values: <Will vary, but enter the IPv4 Address for example of your Speakers/TV. Device to CAST TO>

----

<b>Create some firewall rules, Settings > Application Firewall > Firewall Rules </b>

Create 3 Rules for <b>LAN_IN</b>


* Allow RFC1918 to Address Group: IP_Multicast, Port Group: Ports_Cast

* Allow RFC1918 to Address Group: IP_Cast, Port Group: Ports_Cast

* Allow RFC1918 to Address Group: IP_Cast, Port Group: ANY, Protocol UDP

<br>
Place these 3 rules <b>prior</b> to any <b>DROP</b> rules you have made.

----

<b>Testing</b>

* Tested from Chromium browser to Smart TV for Video/Audio (Netflix, Spotify).
* Tested from iPad (iPad OS 16/17) to Smart TV for Video/Audio (Netflix, Spotify, Plex).
* Tested from Android phone (Android OS v12) to Smart TV for Video/Audio (Netflix, YouTube, Spotify, Plex).
* Works across VLAN's which are NOT Isolated (in Unifi network/wifi settings).

----

Notes on the Unifi OS - Network

- You may need to add port TCP 1900 (SSDP) to the Group named Ports_Cast depending on your devices or possibly other ports in some cases.
  
- For wifi settings, you may need to untick "Hotspot portal" as that will isolate the devices on that network from server if on your LAN.

- For Network settings, you may need to untick "isoalation" as that will isolate the devices on that network from server if on your LAN.

<br>
  
- If you are concerned about turning off "isolation", you could instead make firewall rules to block say "IOT" or "Kids" networks. 
- The above could be achieved blocking from Networks of say "IOT" to IPv4 Address Group named, RFC1918. 
- This would be a firewall rule you could name "Block InterVLAN Routing".

----

<b>References</b>

https://community.ui.com/questions/Chromecast-across-VLANS/c590a032-8931-49e9-b85e-70104d0b929c

https://support.google.com/chrome/a/answer/12256492?hl=en#:~:text=To%20contact%20a%20receiver%20to,UDP%20ports%201%20to%2065535.
