#!/bin/bash

array=()
for container in $(docker ps -q); do
    iflink=`docker exec -it $container bash -c 'cat /sys/class/net/eth0/iflink'`
    iflink=`echo $iflink|tr -d '\r'`
    veth=`grep -l $iflink /sys/class/net/veth*/ifindex`
    veth=`echo $veth|sed -e 's;^.*net/\(.*\)/ifindex$;\1;'`
    array+=($veth)
    echo $container:$veth
done

./measure_cpu.sh &
./measure_soft.sh & 

for i in ${array[@]}
do 
    ./measure_network.sh $i &
done
