#!/bin/bash
NUM_NODES=3

for (( i=0; i<60; i++));
do

	for (( j=1; j<$NUM_NODES+1; j++));
	do
		docker stats --no-stream --format "{{.CPUPerc}}\t{{.MemUsage}}" spark-worker$j >> ./results/$j.txt &
	done;
	sleep 1s;
done
