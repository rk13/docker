#!/bin/bash

docker stop dropwizard-example-node-1
docker stop dropwizard-example-node-2

docker rm dropwizard-example-node-1
docker rm dropwizard-example-node-2

