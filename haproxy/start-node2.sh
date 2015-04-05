#!/bin/bash

docker run --name haproxy-node-2 -d -p 5002:5000 training/webapp python app.py

