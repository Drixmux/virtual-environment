#!/usr/bin/env bash

docker volume create postgresdb
docker run --rm --name postgres-db -p 5432:5432 -e POSTGRES_PASSWORD=admin -e POSTGRES_DB=backend_users -v postgresdb:/var/lib/postgresql/data -d postgres