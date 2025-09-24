This project demonstrates a complete CI/CD workflow for deploying containerized microservices on Azure Kubernetes Service (AKS) using Azure DevOps Pipelines, Azure Container Registry (ACR), and ArgoCD for GitOps-based deployment.

🚀 Features

Microservices: vote, worker, and result applications.

CI/CD: Automated build and push of Docker images to ACR via Azure DevOps pipelines.

Kubernetes Manifests: YAML specifications for deployments and services.

GitOps: ArgoCD continuously syncs Kubernetes manifests with the GitHub repo.

Custom Scripts: Shell script for automated manifest updates with new image tags.

🛠️ Tech Stack

Azure Kubernetes Service (AKS)

Azure Container Registry (ACR)

Azure DevOps Pipelines

ArgoCD

Kubernetes (kubectl, YAML)

Docker

⚙️ Workflow

Developer commits code → triggers Azure DevOps pipeline.

Pipeline builds Docker image → pushes to ACR.

Pipeline updates Kubernetes manifest with new image tag.

ArgoCD detects changes → syncs with AKS cluster.

Application is deployed and accessible via external IP/NodePort.
