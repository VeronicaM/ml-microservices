#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=veronicam/ml-services:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 ml-services --image=${dockerpath} --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment ml-services --type=LoadBalancer --port=80 --target-port=80

# tunnel minikube to enable external IP assignment to loadBalancer
minikube tunnel