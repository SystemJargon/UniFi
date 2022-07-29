### How to Downgrade?

Because of a bug with Protect app v2.1.2 on Unifi OS...


SSH into your UDM Pro / Pro SE etc.

```
unifi-os shell
apt-get install --reinstall --allow-downgrades unifi-protect=2.1.1 -y
```

Note you can change the version of downgrade to be 2.x.x or 1.x.x if you wish instead of 2.1.1.
