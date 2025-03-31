#!/bin/bash

##############################################################################################
# Filename   : docker.sh                                                                       #
# Author     : Allen Yin                                                                      #
# Created    : 2025-Mar                                                                       #
# Purpose    : build and run the nginx proxy service                                                   #
##############################################################################################

# Directory structure
mkdir -p docker/{certs,logs}

# Generate PKI (one-time setup)
# openssl genrsa -out ca.key 4096
# openssl req -x509 -new -nodes -key ca.key -sha256 -days 1024 -out ca.crt
# openssl genrsa -out server.key 2048
# openssl req -new -key server.key -out server.csr
# openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 500 -sha256
# openssl genrsa -out client.key 2048
# openssl req -new -key client.key -out client.csr
# openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out client.crt -days 500 -sha256

# Build image
docker build -t bc-proxy -f docker/Dockerfile ./docker

# Run container
docker run -d \
    --name bc-proxy \
    -p 8000:8000 -p 8001:8001 \
    -v $(pwd)/docker/logs:/var/log/nginx \
    bc-proxy