#!/bin/bash

mkdir -p db

docker run \
  -v ./db/:/db \
  -i -t \
  --name overpass \
  -p 8989:80 \
  wiktorn/overpass-api

docker start overpass