#!/bin/bash
git config user.name "github-actions[bot]"
git config user.email "github-actions[bot].noreplay.github.com"

sed -i "s|$DOCKER_USERNAME/$IMAGE_NAME:.*|$DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG|g" ./k8s_manifests/deployment.yml

git add ./k8s_manifests/deployment.yml

git commit -m "upating the image tag to $IMAGE_TAG inside deployment.yml file"

git push origin main