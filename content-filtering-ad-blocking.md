Ubiquiti Unifi Dream machines (since recent firmware updates) now introduce [content filtering](https://help.ui.com/hc/en-us/articles/12568927589143-UniFi-Gateway-Content-Filtering) and [ad-blocking](https://help.ui.com/hc/en-us/articles/9794438523799-UniFi-Gateway-Ad-Blocking).

This currently appears to uses CleanBrowsing.org DNS (free tier) to achieve the filtering and blocking.

This is referenced [here](https://www.reddit.com/r/Ubiquiti/comments/mz7ghk/udm_content_filter_settings/) as one of many possible threads about it. Search online yourself if need be.

----

<b>CleanBrowsing.org Filter - Family:</b>

Blocks access to all adult, pornographic and explicit sites. It also blocks proxy and VPN domains that are used to bypass the filters. Mixed content sites (like Reddit) are also blocked. Google, Bing and Youtube are set to the Safe Mode. Malicious and Phishing domains are blocked.

185.228.168.168
185.228.169.168

----

<b>CleanBrowsing.org Filter - Adult:</b>

Blocks access to all adult, pornographic and explicit sites. It does not block proxy or VPNs, nor mixed-content sites. Sites like Reddit are allowed. Google and Bing are set to the Safe Mode. Malicious and Phishing domains are blocked.

185.228.168.10
185.228.169.11

----

<b>CleanBrowsing.org Filter - Security:</b>

Blocks access to phishing, spam, malware and malicious domains. Our database of malicious domains is updated hourly and considered to be one of the best in the industry. Note that it does not block adult content.

185.228.168.9
185.228.169.9

----

<B>Further info / Links:</B>

* https://cleanbrowsing.org/filters
* https://cleanbrowsing.org/help/docs/disable-content-filtering-on-ubiquiti-dream-machine-pro-udmpro-controller-6-0/
