#!/bin/bash

docker stop haproxy-node-2
docker stop haproxy-node-1

docker rm haproxy-node-1
docker rm haproxy-node-2

