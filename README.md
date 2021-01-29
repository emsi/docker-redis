# docker-redis
Docker files to setup redis cluster

## Creating cluster

Well it's kinda easy. Just type:
```
sh ./cluster_create.sh 
```

You should see something like:
```
~/git/docker-redis$ sh cluster_create.sh 
Creating network "docker-redis_redis" with the default driver
Creating volume "docker-redis_data" with default driver
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
Adding replica 192.168.80.2:6379 to 192.168.80.3:6379
Adding replica 192.168.80.7:6379 to 192.168.80.6:6379
Adding replica 192.168.80.4:6379 to 192.168.80.5:6379
M: 692b6331bb716c03b73c1c004a3619e6bad8a4a5 192.168.80.3:6379
   slots:[0-5460] (5461 slots) master
M: b1176e8a782a6ac5d8f5c438e19bb59c805e9dbb 192.168.80.6:6379
   slots:[5461-10922] (5462 slots) master
M: d78df42bcd462f6c1c02feb479ed332a56bcde3c 192.168.80.5:6379
   slots:[10923-16383] (5461 slots) master
S: 6797df943dd4f7797628ea61e45be156543ee299 192.168.80.4:6379
   replicates d78df42bcd462f6c1c02feb479ed332a56bcde3c
S: 96164dfb51d2a2724aa2dfa7332d7cb3d9e2c66f 192.168.80.2:6379
   replicates 692b6331bb716c03b73c1c004a3619e6bad8a4a5
S: b9c4cb2bc0e3ba1d86876523bacfc90f2c3e9b17 192.168.80.7:6379
   replicates b1176e8a782a6ac5d8f5c438e19bb59c805e9dbb
>>> Nodes configuration updated
>>> Assign a different config epoch to each node
>>> Sending CLUSTER MEET messages to join the cluster
Waiting for the cluster to join

>>> Performing Cluster Check (using node 192.168.80.3:6379)
M: 692b6331bb716c03b73c1c004a3619e6bad8a4a5 192.168.80.3:6379
   slots:[0-5460] (5461 slots) master
   1 additional replica(s)
M: d78df42bcd462f6c1c02feb479ed332a56bcde3c 192.168.80.5:6379
   slots:[10923-16383] (5461 slots) master
   1 additional replica(s)
S: b9c4cb2bc0e3ba1d86876523bacfc90f2c3e9b17 192.168.80.7:6379
   slots: (0 slots) slave
   replicates b1176e8a782a6ac5d8f5c438e19bb59c805e9dbb
S: 6797df943dd4f7797628ea61e45be156543ee299 192.168.80.4:6379
   slots: (0 slots) slave
   replicates d78df42bcd462f6c1c02feb479ed332a56bcde3c
M: b1176e8a782a6ac5d8f5c438e19bb59c805e9dbb 192.168.80.6:6379
   slots:[5461-10922] (5462 slots) master
   1 additional replica(s)
S: 96164dfb51d2a2724aa2dfa7332d7cb3d9e2c66f 192.168.80.2:6379
   slots: (0 slots) slave
   replicates 692b6331bb716c03b73c1c004a3619e6bad8a4a5
[OK] All nodes agree about slots configuration.
>>> Check for open slots...
>>> Check slots coverage...
[OK] All 16384 slots covered.

```
