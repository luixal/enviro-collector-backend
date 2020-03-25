#!/bin/sh

# create docker instances:
docker-compose up -d
# install nodes in Node-RED container using npm:
docker exec -it enviro-backend-node-red npm install node-red-contrib-influxdb node-red-contrib-httpauth
# restart Node-RED container:
docker-compose restart node-red
