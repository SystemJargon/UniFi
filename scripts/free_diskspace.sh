## free up space on Unifi UDM-PRO when it has low disk space due to the pool directory filling up with 1GB .ubv files
## largest 20 files in /volume1
# du -a /volume1 | sort -n -r | head -n 20
rm /volume1/.srv/unifi-protect/video/pool/*.ubv
