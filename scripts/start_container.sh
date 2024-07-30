#!/bin/bash

# Start the Docker container
echo "Starting the Docker container..."

# Define your container name and image URI
# IMAGE_URI=$(jq -r '.[0].imageUri' imagedefinitions.json)

# Pull the latest image
# docker pull $IMAGE_URI
docker pull nginx

# Run the new container
docker run -d --name nginx -p 80:80 nginx:latest

echo "Container $CONTAINER_NAME started with image"
