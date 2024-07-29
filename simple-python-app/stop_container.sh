#!/bin/bash

# Stop the Docker container
echo "Stopping the Docker container..."

# Define your container name
CONTAINER_NAME="awscicd"

# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    # Stop the container
    docker stop $CONTAINER_NAME
    # Remove the container
    docker rm $CONTAINER_NAME
    echo "Container $CONTAINER_NAME stopped and removed."
else
    echo "No running container named $CONTAINER_NAME found."
fi
