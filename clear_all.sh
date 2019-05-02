#!/bin/sh
docker-compose down
docker system prune --volumes
rm -rf data
rm -rf logs
rm -rf schemas

