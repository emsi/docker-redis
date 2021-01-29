#!/bin/sh

HOST="`hostname`"

mkdir -p /data/${HOST}

sed -e "s/REDIS_HOST/${HOST}/g" /etc/redis.conf > /data/redis_${HOST}.conf


redis-server /data/redis_${HOST}.conf
