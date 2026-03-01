# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

A collection of Docker example setups demonstrating containerization patterns with HAProxy load balancing. There is no build system, test suite, or linter — this is a scripts-and-config repo.

## Project Structure

Three independent example projects, each self-contained:

- **haproxy/** — HTTP load balancing with HAProxy across two `training/webapp` Python containers (ports 5001/5002, balanced on port 5000)
- **dropwizard/** — SSL/TCP load balancing with HAProxy across two Dropwizard Java app containers (ports 18443/28443, balanced on port 8443). Includes a Dockerfile based on `java:7` that runs DB migration then starts the server.
- **whalesay/** — Minimal Dockerfile example extending `docker/whalesay` with fortunes

## Common Commands

Each project directory (haproxy/, dropwizard/) follows the same script pattern:

| Script | Purpose |
|---|---|
| `./start.sh` | Start all nodes (and proxy for dropwizard) |
| `./start-node1.sh` | Start first backend container |
| `./start-node2.sh` | Start second backend container |
| `./start-proxy.sh` | Start HAProxy with the local config |
| `./destroy.sh` | Stop and remove all containers |

Build the dropwizard image before starting nodes:
```
cd dropwizard && docker build -t dropwizard-example .
```

Build the whalesay image:
```
cd whalesay && docker build -t docker-whale .
```

## Key Details

- HAProxy configs are local files (`haproxy.cfg.http` for HTTP mode, `haproxy.cfg.ssl` for TCP/SSL mode) — the proxy scripts run HAProxy directly on the host, not in a container.
- Container names are hardcoded in scripts (e.g., `haproxy-node-1`, `dropwizard-example-node-1`) — `destroy.sh` must match these names exactly.
- The dropwizard example uses an embedded H2 database with migration on container start (`db migrate example.yml`).
