#!/bin/sh

ME=`basename -- "$0"`

if grep docker /proc/1/cgroup -qa; then
   echo "I'm running on docker."
   redis-cli --cluster create `for i in $NODES; do ping -c1 $i | grep 'bytes from' | sed -e 's/.*bytes from \([^:]*\):.*/\1:6379/'; done` --cluster-replicas 1 --cluster-yes
   exit
fi


docker-compose up -d --scale node=6
docker run -ti --rm --network docker-redis_redis -e NODES="`docker-compose  ps | grep node  | cut -f1 -d' '`" -v "$(pwd)/${ME}:/${ME}" redis:6.0-alpine /bin/sh "/${ME}"
