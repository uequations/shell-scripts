#!/bin/bash

curl -L https://github.com/strimzi/strimzi-kafka-operator/releases/download/0.19.0/strimzi-cluster-operator-0.19.0.yaml \
  | sed 's/namespace: .*/namespace: kafka/' \
  | kubectl apply -f - -n kafka 
