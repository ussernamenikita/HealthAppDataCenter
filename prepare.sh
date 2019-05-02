#!/bin/sh
mkdir data
mkdir logs
mkdir schemas
chown 102:105 logs/
chown 102:105 data/
chown 102:105 schemas/
cp tables/* schemas/
