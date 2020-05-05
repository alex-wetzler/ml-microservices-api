#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="alexwetzler/api"

# Step 2:  
# Authenticate & tag
docker login --username=alexwetzler
docker tag 8cbfea3f1c12 "$dockerpath:latest"
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
