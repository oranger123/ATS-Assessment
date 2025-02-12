# YouTube Clone Application with Kubernetes
This repository contains the code and instructions for deploying a YouTube Clone application using Kubernetes on an Amazon EKS (Elastic Kubernetes Service) cluster.

# Prerequisites
Git installed on your machine.
Docker installed on your machine.
Terraform installed on your machine.
Amazon Web Services (AWS) account and IAM credentials.
kubectl installed for Kubernetes cluster management.
# Steps to Build and Deploy the Application

1. Clone the GitHub Repository
Start by cloning the repository containing the static application code.

Clone the GitHub repository
-->git clone https://github.com/oranger123/YouTube-Clone.git

Navigate to the project directory
-->cd YouTube-Clone

2. Build the Docker Image
In the YouTube-Clone directory, create a Dockerfile and build your application’s Docker image. Then push it to Docker Hub.


Build the Docker image
-->docker build -t youtube-clone .

Log in to Docker Hub
-->docker login

Tag the image for Docker Hub
-->docker tag youtube-clone oranger1234/youtube-clone:latest

Push the image to Docker Hub
-->docker push oranger1234/youtube-clone:latest

3. Deploy to Amazon EKS using Terraform
Deploy the necessary infrastructure files using Terraform to provision resources on EKS (master node setup).


Navigate to the terraform folder
-->cd terraform/

Apply the terraform configuration to set up your EKS cluster
-->terraform init
-->terraform apply
4. Deploy Application to Kubernetes
Now that your EKS cluster is ready, deploy the application using Kubernetes manifests.

Deploy the deployment file for the YouTube clone application:

-->kubectl apply -f deployment.yaml
Deploy the service file to expose your application:

-->kubectl apply -f service.yaml

5. Monitor Application with Prometheus & Grafana
Although the Prometheus and Grafana configuration files are not included, you can manually download and configure Prometheus and Grafana to monitor your application’s health.

# Manual Process:
Download and install Prometheus and Grafana in the appropriate namespace.
Configure Prometheus to collect metrics from your Kubernetes cluster.
Access the Grafana dashboard to monitor the health status of your worker nodes and application.
