# docker-redis
Docker files to setup redis cluster

## Creating cluster

Well it's kinda easy. Just type:
```
sh ./cluster_create.sh 
```

You should see something like:
```
~/git/docker-redis$ sh ./cluster_create.sh 
Creating network "docker-redis_redis" with the default driver
Creating docker-redis_node_1 ... done
Creating docker-redis_node_2 ... done
Creating docker-redis_node_3 ... done
Creating docker-redis_node_4 ... done
Creating docker-redis_node_5 ... done
Creating docker-redis_node_6 ... done
I'm running on docker.
>>> Performing hash slots allocation on 6 nodes...
Master[0] -> Slots 0 - 5460
Master[1] -> Slots 5461 - 10922
Master[2] -> Slots 10923 - 16383
Adding replica 192.168.16.2:6379 to 192.168.16.4:6379
Adding replica 192.168.16.6:6379 to 192.168.16.7:6379
Adding replica 192.168.16.5:6379 to 192.168.16.3:6379
M: 54fc594f3c2b02c7f408c38728586123fe79769f 192.168.16.4:6379
   slots:[0-5460] (5461 slots) master
M: 4d33c9f6addeca59905be8e308a52c15ca2c9146 192.168.16.7:6379
   slots:[5461-10922] (5462 slots) master
M: 5782a78e1f2dcd1509cf1ca06c80c253e6681709 192.168.16.3:6379
   slots:[10923-16383] (5461 slots) master
S: 76249376948882d1eac6dd183f52b4508992630c 192.168.16.5:6379
   replicates 5782a78e1f2dcd1509cf1ca06c80c253e6681709
S: e47098d598d50c87f4152dff70a09f87fb182260 192.168.16.2:6379
   replicates 54fc594f3c2b02c7f408c38728586123fe79769f
S: 8cc0ce07a97698176916cfaf0387686e4b803ea7 192.168.16.6:6379
   replicates 4d33c9f6addeca59905be8e308a52c15ca2c9146
>>> Nodes configuration updated
>>> Assign a different config epoch to each node
>>> Sending CLUSTER MEET messages to join the cluster
Waiting for the cluster to join
.
>>> Performing Cluster Check (using node 192.168.16.4:6379)
M: 54fc594f3c2b02c7f408c38728586123fe79769f 192.168.16.4:6379
   slots:[0-5460] (5461 slots) master
   1 additional replica(s)
M: 4d33c9f6addeca59905be8e308a52c15ca2c9146 192.168.16.7:6379
   slots:[5461-10922] (5462 slots) master
   1 additional replica(s)
S: 8cc0ce07a97698176916cfaf0387686e4b803ea7 192.168.16.6:6379
   slots: (0 slots) slave
   replicates 4d33c9f6addeca59905be8e308a52c15ca2c9146
S: e47098d598d50c87f4152dff70a09f87fb182260 192.168.16.2:6379
   slots: (0 slots) slave
   replicates 54fc594f3c2b02c7f408c38728586123fe79769f
M: 5782a78e1f2dcd1509cf1ca06c80c253e6681709 192.168.16.3:6379
   slots:[10923-16383] (5461 slots) master
   1 additional replica(s)
S: 76249376948882d1eac6dd183f52b4508992630c 192.168.16.5:6379
   slots: (0 slots) slave
   replicates 5782a78e1f2dcd1509cf1ca06c80c253e6681709
[OK] All nodes agree about slots configuration.
>>> Check for open slots...
>>> Check slots coverage...
[OK] All 16384 slots covered.
```
