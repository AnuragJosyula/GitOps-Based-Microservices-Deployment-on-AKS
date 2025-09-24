#!/bin/bash
set -x
# Cleanup
rm -rf /tmp/temp_repo
# Azure DevOps Git repo with PAT (hardcoded for quick use)
REPO_URL=" "

# Clone repo
git clone "$REPO_URL" /tmp/temp_repo
cd /tmp/temp_repo

# Debug info
echo "Updating k8s-specifications/$1-deployment.yaml to use image: anuragcicdapp.azurecr.io/$2:$3"

# Update Kubernetes manifest
# $1 = app name (vote), $2 = repo name (vote), $3 = tag (build id)
sed -i "s|image:.*|image: anuragcicdapp.azurecr.io/$1:$2|g" k8s-specifications/$1-deployment.yaml

# Show updated line
grep "image:" k8s-specifications/$1-deployment.yaml

# Commit and push
git add .
git commit -m "Update Kubernetes manifest for $1:$3" || echo "No changes to commit"
git push