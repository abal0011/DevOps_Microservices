#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="aravindb15/aravind_devops_proj"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag aravind_devops_proj $dockerpath
docker login --username aravindb15

# Step 3:
# Push image to a docker repository
docker push $dockerpath