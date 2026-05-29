#!/bin/bash

mkdir -p db

docker run \
  -v ./db/:/db \
  -i -t \
  wiktorn/overpass-api