#!/bin/bash

docker run --name haproxy-proxy -v /root/git/docker/haproxy/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro -d -p 5000:5000 --link haproxy-node-1:node1 --link haproxy-node-2:node2 haproxy:1.5

