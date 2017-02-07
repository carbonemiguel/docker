#!/bin/bash

# Remove any stopped containers
docker rm $(docker ps -q --filter status=exited)

# Remove any dangling Docker images
docker rmi $(docker images -q --filter dangling=true)