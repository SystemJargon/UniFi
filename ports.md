---

Unifi Network

* 22 (SSH) TCP
* 443 (Web UI) TCP
* 8443 (Web UI) TCP
* 8900 (WiFiMan App) TCP

---

UniFi Protect / Video (Server for clients, SRC example phone/tablet/pc to manage/use UniFi apps)

* 443 (Protect HTTPS Web UI and API) TCP
* 7441 (RTSP) TCP
* 7080 (UniFi Video HTTP Web UI & API, including for Playback via Portal) TCP
* 7443 (UniFi Video HTTPS Web UI & API, including for Playback via Portal) TCP
* 7446 (Web-Media) TCP
* 7447 (SRTSP) TCP
* 7550 (Protect Streaming to UFP) TCP


---

UniFi Protect (Server for cameras, so SRC would be Camera IPs)

* 6666 (Unifi Video, relative to 7550) TCP
* 7442 (NVR Communication Management for Camera) TCP
* 7444 (Camera Firmware Updates from UDM/Controller) TCP

---

### Notes:

It is not recommended to "port forward (expose)" directly to the internet, use a VPN like wireguard, teleport or similar.

These ports have been discovered by trial and error and looking online in various places, i.e. Reddit, Ubiquiti Community forums.

There maybe others ports also, but these would be essential ports. Ubiquiti may change some of these ports from time to time.
