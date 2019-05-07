#!/bin/sh
DIRECTORY="data/ring"
if [ -d "$DIRECTORY" ]; then
  rm -rf schemas/*
  rm -rf data/ring/*
else
  mkdir data
  mkdir logs
  mkdir schemas
  chown 102:105 logs/
  chown 102:105 data/
  chown 102:105 schemas/
  cp tables/* schemas/
fi
docker-compose up
