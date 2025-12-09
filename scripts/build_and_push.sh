#!/usr/bin/env bash
set -euo pipefail

GIT_COMMIT=${GIT_COMMIT:-latest}
IMAGE_SHA="aarti1704/devops-nodejs-app:$GIT_COMMIT"
IMAGE_LATEST="aarti1704/devops-nodejs-app:latest"

echo "Building Docker Image: $IMAGE_SHA and $IMAGE_LATEST"
docker build -t "$IMAGE_SHA" -t "$IMAGE_LATEST" .

echo "Pushing Docker Images to DockerHub"
docker push "$IMAGE_SHA"
docker push "$IMAGE_LATEST"
