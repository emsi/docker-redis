#!/bin/sh

IP=`ifconfig eth0 | grep 'inet' | awk '{print $2}' | cut -f2 -d:`
HOST=`nslookup ${IP} |  sed -e '/in-addr.arpa/!d' -e 's/^.*name = \(.*\)\..*$/\1/'`

mkdir -p /data/${HOST}

sed -e "s/REDIS_HOST/${HOST}/g" /etc/redis.conf > /data/redis_${HOST}.conf


redis-server /data/redis_${HOST}.conf
