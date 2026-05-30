#!/bin/bash

mkdir -p db

docker rm -f $(docker ps -aq)

docker run \
  -v ./db/:/db \
  -i -t \
  --name overpass \
  -p 8989:80 \
  wiktorn/overpass-api

docker start overpass