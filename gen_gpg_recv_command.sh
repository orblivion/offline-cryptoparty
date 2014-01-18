#!/bin/sh

# TODO - /var/www/allkeys.txt should be a variable

# It seems it will not be happy to do this stuff while running. At very
# least, it seems that if I do this while running, it needs to be
# restarted after. So I'll just turn it off.
sudo service sks stop

sks dump 1000 /tmp/

echo -n "" > /var/www/allkeys.txt

echo -n "gpg --keyserver cryptoparty.com --recv-keys " >> /var/www/allkeys.txt
# sed craziness: http://stackoverflow.com/a/1252191
gpg /tmp/sks-dump-0000.pgp | grep pub | cut -b 12-19 | sed ':a;N;$!ba;s/\n/ /g' >> /var/www/allkeys.txt


echo -n "\n########################################################################\n#\n# " >> /var/www/allkeys.txt
date >> /var/www/allkeys.txt
echo -n "#\n# " >> /var/www/allkeys.txt
gpg /tmp/sks-dump-0000.pgp | sed ':a;N;$!ba;s/\n/\n# /g' >> /var/www/allkeys.txt

# Restarting now that we've dumped it.
sudo service sks start
