#!/bin/bash

# By default, this will run without modification, but if you want to change where the data directory gets mapped, you can do that here
# Make sure this folder exists on the host.
# This directory from the host gets passed through to the docker container.
INFLUXDB_HOST_DIRECTORY="/influxdb"


sudo docker run -d --net=host \
	-v $INFLUXDB_HOST_DIRECTORY:/var/lib/influxdb:rw \
	--hostname influxdb
 	-p 8086:8086 \
        --name influxdb influxdb:latest

