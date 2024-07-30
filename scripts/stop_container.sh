#!/bin/bash
set -e

# Define the container name
CONTAINER_NAME="pythonapp"

# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping and removing the existing container..."
    # Stop the container
    docker stop $CONTAINER_NAME || true
    # Remove the container
    docker rm $CONTAINER_NAME || true
else
    echo "No running container named $CONTAINER_NAME found."
fi
