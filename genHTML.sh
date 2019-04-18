#!/bin/sh

# replace ip in /etc/hosts for domain rybalkatut.by

#run
wget -r -l 7 -p -nc -E http://rybalkatut.by/
cd rybalkatut.by
find . -type f -print0 | xargs -0 sed -i 's/http:\/\/rybalka/https:\/\/rybalka/g'
git commit -a -m "meow"
git push origin master
