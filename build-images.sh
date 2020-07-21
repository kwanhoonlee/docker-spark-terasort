#!/bin/bash

set -e

docker build --no-cache -t spark-base:latest ./docker/base
docker build --no-cache -t spark-master:latest ./docker/spark-master
docker build --no-cache -t spark-worker:latest ./docker/spark-worker
docker build --no-cache -t spark-submit:latest ./docker/spark-submit
