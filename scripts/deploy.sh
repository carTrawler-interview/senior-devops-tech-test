#!/bin/bash
# Create if deleted
echo "Installing dependencies for deployment"
kubectl apply -f k8s/service.yaml || true
kubectl apply -f k8s/ingress.yaml || true
