#!/bin/bash

# Start the Docker container
echo "Starting the Docker container..."

# Define your container name and image URI
CONTAINER_NAME="awscicd"
# IMAGE_URI=$(jq -r '.[0].imageUri' imagedefinitions.json)

# Pull the latest image
# docker pull $IMAGE_URI
docker pull venuzs/simple-python-app:0a9d47cef3

# Run the new container
docker run -d --name $CONTAINER_NAME -p 5000:5000 venuzs/simple-python-app:0a9d47cef3

echo "Container $CONTAINER_NAME started with image $IMAGE_URI."
