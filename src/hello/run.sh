#!/usr/bin/env bash

echo "Building image"
docker build -t helloserver .

echo "Running container"
docker run -p 8080:8080 -p 40000:40000 --cap-add SYS_PTRACE --security-opt apparmor=unconfined helloserver