#!/usr/bin/env bash
set -euo pipefail

GIT_COMMIT=${GIT_COMMIT:-latest}
IMAGE="aarti1704/devops-nodejs-app:$GIT_COMMIT"

echo "Building Docker Image: $IMAGE"
docker build -t "$IMAGE" .

echo "Pushing Docker Image to DockerHub: $IMAGE"
docker push "$IMAGE"
