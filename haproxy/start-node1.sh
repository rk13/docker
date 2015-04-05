#!/bin/bash

docker run --name haproxy-node-1 -d -p 5001:5000 training/webapp python app.py

