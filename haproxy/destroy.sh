#!/bin/bash

docker stop haproxy-proxy
docker stop haproxy-node-2
docker stop haproxy-node-1

docker rm haproxy-proxy
docker rm haproxy-node-1
docker rm haproxy-node-2

