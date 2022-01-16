#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath= hodayacoub/udacity-docker-project:udacity-docker-project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project-pod --image=hodayacoub/udacity-docker-project --port=80

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-project-pod  8000:80
