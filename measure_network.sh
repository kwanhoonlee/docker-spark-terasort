#!/bin/bash

args=("$@")

for (( i=0; i<$#; i++ ))
do
    echo "$i th parameter = ${args[$i]}"
    vnstat -l -i ${args[$i]} -tr 60 > ./results/${args[$i]}.txt &
done

sleep 60s
echo 60s
