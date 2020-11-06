 #!/bin/bash
 
/spark/bin/spark-submit \
--class ${SPARK_APPLICATION_MAIN_CLASS} \
#--master ${SPARK_MASTER_URL} \
--master 10.0.0.201:7077 \
--deploy-mode client \
--num-executors 1 \
--executor-cores 2 \
--executor-memory 8g \
 ${SPARK_DRIVER_HOST} \
 ${SPARK_SUBMIT_ARGS} \
 ${SPARK_APPLICATION_JAR_LOCATION} \
 ${SPARK_APPLICATION_ARGS1} \
 ${SPARK_APPLICATION_ARGS2} \
 ${SPARK_DRVIER_HOST} 
