#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="likeness/prj4_ml:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prj4-ml-micro-api --image=likeness/prj4_ml:v1.0.0 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward prj4-ml-micro-api 8000:80