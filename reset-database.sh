#!/bin/bash

docker compose exec -T db psql -U postgres -a -f postgresql.txt
docker compose exec -T db psql -U postgres -a -f postgresql-data.txt
