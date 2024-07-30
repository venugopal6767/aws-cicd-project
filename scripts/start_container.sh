#!/bin/bash

# Start the Docker container
echo "Starting the Docker container..."

# Define the container name and get the image URI from imagedefinitions.json
CONTAINER_NAME="my-pythonapp"  # Set this to your container name
IMAGE_URI=$(jq -r '.[0].imageUri' imagedefinitions.json)

# Pull the latest image
echo "Pulling image $IMAGE_URI..."
docker pull $IMAGE_URI

# Run the new container
echo "Running container $CONTAINER_NAME with image $IMAGE_URI..."
docker run -d --name $CONTAINER_NAME -p 5500:5500 $IMAGE_URI

echo "Container $CONTAINER_NAME started with image $IMAGE_URI"

