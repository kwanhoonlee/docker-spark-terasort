#Environment variables used by the spark workers
#Do not touch this unless you modify the compose master
SPARK_MASTER=spark://172.35.0.2:7077
#Allocation Parameters
SPARK_WORKER_CORES=4
SPARK_WORKER_MEMORY=16G
SPARK_DRIVER_MEMORY=16G
SPARK_EXECUTOR_MEMORY=16G
