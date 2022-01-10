#!/bin/bash

#backup home directory

clear

SRC="/home/sysadmin/"
DEST="/home/sysadmin/BACKUP"

[[ -e "DEST" ]] || mkdir $DEST
echo "You backup directory has been created to store the backup"

echo "Backing up your home directory............."
tar -cvf backup-$(date %d-%m-%Y).tar.gz $SRC $DEST
echo "Backup completed !!!"
exit 0
