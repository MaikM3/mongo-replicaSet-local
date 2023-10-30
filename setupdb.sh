#!/bin/bash

docker-compose up -d

sleep 10

docker exec -it mongo1 mongosh --port 27017 --eval "rs.initiate({ _id: \"myReplicaSet\", members: [   {_id: 0, host: \"mongo1\", priority: 1},   {_id: 1, host: \"mongo2\", priority: 2},   {_id: 2, host: \"mongo3\", priority: 2}]})"

sleep 10

docker exec -it mongo1 mongosh --eval "rs.status()" --port 27017