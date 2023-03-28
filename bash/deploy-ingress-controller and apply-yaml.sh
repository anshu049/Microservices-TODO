#!/bin/bash


# deploy the ingress controller
helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace
  
  
# apply yaml files
sudo kubectl apply -R -f /auth-api
sudo kubectl apply -R -f /frontend
sudo kubectl apply -R -f /log-message-processor
sudo kubectl apply -R -f /todos-api
sudo kubectl apply -R -f /users-api
sudo kubectl apply -R -f /dns-network-policy
sudo kubectl apply -R -f /redis-queue
