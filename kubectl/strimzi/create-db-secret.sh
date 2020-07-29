#!/bin/bash

kubectl -n kafka create secret generic my-sql-credentials \
  --from-file=debezium-mysql-credentials.properties
  
#secret/my-sql-credentials created
