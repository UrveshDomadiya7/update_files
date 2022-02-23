#!/bin/bash

# This will take backup of test in tmp folder
mongodump -d test -o /tmp


# This will make folder name as per mention format <YYYY>-<MM>-<DD>
mv -f /tmp/test/ /tmp/test-$(date +"%F")


# This will create backup folder if it not exists
mkdir -p /var/backup


# This will move all test name file to backup directory
mv -uf /tmp/test*/ /var/backup/


# This script file will be run automatically daily at 11 AM from cornjob by below commented command in cron.
# 0 11 * * * /home/urveshdomadiya/Programming.sh

# This command will change directory
cd /var/backup/


# This below commented command will first list all files/directory with new time formate and then find will find the directroy with name test and then by tail it will list last files and then with xargs we will delete that directory.

# ls -tp | find . -type d -name "test*" | tail -n +3 | sudo xargs -d '\n' -r rm -r --






