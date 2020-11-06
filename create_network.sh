#!/bin/bash

IPADDRESS=172.35.0
docker network create --gateway $IPADDRESS.1 --subnet $IPADDRESS.0/16 dockersparkterasort_br-n-spark


