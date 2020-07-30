#!/bin/sh

kubectl -n kafka \
    apply -f https://raw.githubusercontent.com/strimzi/strimzi-kafka-operator/0.19.0/examples/kafka/kafka-persistent-single.yaml \
  && kubectl wait kafka/my-cluster --for=condition=Ready --timeout=300s -n kafka
