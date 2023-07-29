#!/bin/sh

cd ~/Desktop/vinay/learning/selenium-kubernetes

echo "creating deployment"
kubectl create -f selenium-hub-deployment.yaml

echo "creating service"
kubectl create -f selenium-hub-service.yaml

echo "creating service chrome"
kubectl create -f selenium-node-chrome-deployment.yaml

echo "creating service firefox"
kubectl create -f selenium-node-firefox-deployment.yaml

echo "exposing the pods"
kubectl expose deployment selenium-hub-demo --type=NodePort
