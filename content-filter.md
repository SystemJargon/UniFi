## Content Filtering

This is a network layer filter solution using specific DNS servers. This uses CleanBrowsing DNS servers.

Content Filter can be set to None, Work or Family if enabled. If using the new (not legacy UI) interface in a Unifi UDM, this can be found under "Networks", "Advanced Configuration". Set it to Manual instead of Auto. You will see "Content Filtering".

This is unique per Network. You can set this to one of the following.

----

### None

As stated, none. No filtering applied via the UDM.

----

### Family

There is no control for this on the UDM. The UDM isn't doing the filtering, the external third party DNS server is. Take a look at https://cleanbrowsing.org/filters 

If you set the UDM content filtering to Family, it uses cleanbrowsing.org's Family DNS server at 185.228.168.168

Above referenced from: https://www.reddit.com/r/Ubiquiti/comments/mz7ghk/comment/gw07fmu/

```
family-filter-dns.cleanbrowsing.org
Address: 185.228.168.168
```

CleanBrowsing describes this filter as:

```
Blocks access to all adult, pornographic and explicit sites. It also blocks proxy and VPN domains that are used to bypass the filters. Mixed content sites (like Reddit) are also blocked. Google, Bing and Youtube are set to the Safe Mode. Malicious and Phishing domains are blocked.
```

----

###  Work

This appears to use CleanBrowsing also. But rather than use the filtering which comes from the "Family" DNS server IP address, it uses instead the filtering from the "Adult" DNS server IP at 185.228.168.10

```
adult-filter-dns.cleanbrowsing.org
Address: 185.228.168.10
```

CleanBrowsing describes	this filter as:

```
Blocks access to all adult, pornographic and explicit sites. It does not block proxy or VPNs, nor mixed-content sites. Sites like Reddit are allowed. Google and Bing are set to the Safe Mode. Malicious and Phishing domains are blocked.
```