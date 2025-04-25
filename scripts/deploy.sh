#!/bin/bash
# Create if deleted
echo "Installing dependencies for deployment"
helm uninstall nodejs-app -n car-trawler-helm || true
kubectl apply -f k8s/service.yaml || true
kubectl apply -f k8s/ingress.yaml || true
