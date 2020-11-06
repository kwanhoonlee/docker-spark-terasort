#!/bin/bash
CPUS=2

docker-compose -f slaves.yml up -d
docker-compose -f slaves2.yml up -d
#docker-compose -f slaves3.yml up -d

docker update --cpus $CPUS spark-worker1 spark-worker2 spark-worker3
