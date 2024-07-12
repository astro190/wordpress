#!/bin/bash

 

echo "Create a local Kubernetes cluster"

sudo k3d cluster create amritcluster

 

echo"Addding a worker node to the cluster"

sudo k3d node create amritnode --cluster amritcluster

 

echo "Deploying Wordpress to the cluster"

sudo kubectl apply -f /home/amrit/wordpress/deployment.yaml
sudo kubectl apply -f /home/amrit/wordpress/mysql.yaml


echo "Verify the deployment"

sudo kubectl get deployments

sudo kubectl get pods

sudo kubectl get svc


