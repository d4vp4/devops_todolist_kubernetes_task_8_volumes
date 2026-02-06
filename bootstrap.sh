#!/bin/bash

echo "Starting deployment..."

kubectl apply -f .infrastructure/namespace.yml

kubectl apply -f .infrastructure/pv.yml
kubectl apply -f .infrastructure/pvc.yml

kubectl apply -f .infrastructure/configiMap.yml
kubectl apply -f .infrastructure/secret.yml

kubectl apply -f .infrastructure/deployment.yml
kubectl apply -f .infrastructure/service.yml

kubectl apply -f .infrastructure/hpa.yml
kubectl apply -f .infrastructure/daemonset.yml
kubectl apply -f .infrastructure/cronjob.yml

echo "Deployment completed successfully! Check pods in mateapp namespace."