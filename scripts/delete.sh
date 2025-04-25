#!/bin/bash
# delete application using kubectl
echo "Deleting other deployment"
kubectl delete deploy nodejs-deploy -n car-trawler || true
kubectl delete -f k8s/service.yaml || true
kubectl delete -f k8s/ingress.yaml || true
