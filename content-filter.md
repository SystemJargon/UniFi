## Content Filtering

If using the new (not legacy UI) in a Unifi UDM, under "Networks", "Advanced Configuration" and set it to Manual instead of Auto. You will see "Content Filtering".

This is unique per Network. You can set this to one of the following.
```None, Work, Family```

----
### None

As stated, none. No filtering applied via the UDM.

### Family

There is no control for this on the UDM. The UDM isn't doing the filtering, the external third party DNS server is. Take a look at https://cleanbrowsing.org/filters 

If you set the UDM content filtering to Family, it uses cleanbrowsing.org's Family DNS server at 185.228.168.168

Above referenced from: https://www.reddit.com/r/Ubiquiti/comments/mz7ghk/comment/gw07fmu/


###  Work

This appears to use CleanBrowsing also. But rather than use the filtering which comes from the "Family" DNS server IP address, uses instead the filtering from "Adult" DNS server IP at 185.228.168.10