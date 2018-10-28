#!/usr/bin/env bash

echo "Building image"
docker build -t helloserver .

echo "Running container"
docker run -p 8080:8080 -d helloserver