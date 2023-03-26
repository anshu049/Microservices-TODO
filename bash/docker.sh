#!/bin/bash

# Define the Docker image names and tags
image1="frontend"
tag1="latest"
image2="auth-api"
tag2="latest"
image3="todos-api"
tag3="latest"
image4="users-api"
tag4="vlatest"
image5="log-message-processor"
tag5="latest"

# Login to Docker Hub
docker login -u your-username -p your-password

# Build and tag the Docker images
docker build -t anshuhtwt/${image1}:${tag1} /home/ubuntu/Microservices-TODO/frontend
docker build -t anshuhtwt/${image2}:${tag2} /home/ubuntu/Microservices-TODO/auth-api
docker build -t anshuhtwt/${image3}:${tag3} /home/ubuntu/Microservices/Microservices-TODO/todos-api
docker build -t anshuhtwt/${image4}:${tag4} /home/ubuntu/Microservices/Microservices-TODO/users-api
docker build -t your-username/${image5}:${tag5} /home/ubuntu/Microservices/Microservices-TODO/log-message-processor

# Push the Docker images to Docker Hub
docker push anshuhtwt/${image1}:${tag1}
docker push anshuhtwt/${image2}:${tag2}
docker push anshuhtwt/${image3}:${tag3}
docker push anshuhtwt/${image4}:${tag4}
docker push anshuhtwt/${image5}:${tag5}

# Logout from Docker Hub
docker logout
