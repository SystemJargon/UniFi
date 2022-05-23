#!/bin/bash

## Example to rsync backup your UDM-PRO to a server.
## Replace username and servername with your own.
## Place the script on your UDM-PRO
## Can be a cronjob scheduled daily, weekly or similar 

## start unifi-os shell and store script in home directory
## commands un-comment

unifi-os shell
cd ~

rsync -av /data/unifi/data/backup/autobackup/*.unf username@servername:unifi-backup/

Refer to [rsync-backup.md](rsync-backup.md)
