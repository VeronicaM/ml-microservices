#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=veronicam/ml-services:1.0

# Step 2:  
# Authenticate & tag
docker login --username=veronicam --email=veronica.mihai90@outlook.com
echo "Docker ID and Image: $dockerpath"
docker images

docker tag 076273b441c0 veronicam/ml-services:1.0

# Step 3:
# Push image to a docker repository
docker push veronicam/ml-services:1.0