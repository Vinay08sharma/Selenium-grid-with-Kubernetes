# Selenium-grid-with-Kubernetes
Scaling test automation using selenium grid and using the power of kubernetes

## Pre-requiste
- Docker [https://docs.docker.com/]
- Text Editor
- Homebrew for mac [https://docs.brew.sh/Installation]

## Installation
- Install Minikube
```brew install minikube```
- Install kubernetes-cli to control kubernetes deployments from terminal
  ```brew install kubernetes-cli```

## Configure & start the services
- Start minikube (We will make us of minikube with docker)
  ```minikube start --vm-driver=virtualbox --insecure-registry="gcr.io"```
- Create services
  - ```kubectl create -f selenium-hub-deployment.yaml```
  - ```kubectl create -f selenium-hub-service.yaml```
  - ```kubectl create -f selenium-node-chrome-deployment.yaml```
  - ```kubectl create -f selenium-node-firefox-deployment.yaml```
  - ```kubectl expose deployment selenium-hub-demo --type=NodePort```
### By now the services should be up & running

## Get the url for the grid console
```minikube service selenium-hub --url```
(Copy & paste the url in the browser also this is the same url that you can use to connect your remotedriver)
  
## Check Service Dashboard
```minikube dashboard```




