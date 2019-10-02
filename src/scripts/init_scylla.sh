#!/usr/bin/env bash

docker volume create scylladb
docker run --rm --name scylla-db -p 9042:9042 -v scylladb:/var/lib/scylla -d scylladb/scylla