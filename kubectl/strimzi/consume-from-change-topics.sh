#!/bin/bash

kubectl -n kafka exec my-cluster-kafka-0 -c kafka -i -t -- \
  bin/kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --topic dbserver1.inventory.customers
