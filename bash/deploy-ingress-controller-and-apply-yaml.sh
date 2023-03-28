#!/bin/bash


# deploy the ingress controller
helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace
  
  
# apply yaml files
kubectl apply -R -f /home/ubuntu/Microservices-TODO/frontend/
kubectl apply -R -f /home/ubuntu/Microservices-TODO/frontend/
kubectl apply -R -f /home/ubuntu/Microservices-TODO/log-message-processor/
kubectl apply -R -f /home/ubuntu/Microservices-TODO/todos-api/
kubectl apply -R -f /home/ubuntu/Microservices-TODO/users-api/
kubectl apply -R -f /home/ubuntu/Microservices-TODO/dns-network-policy/
kubectl apply -R -f /home/ubuntu/Microservices-TODO/redis-queue/
