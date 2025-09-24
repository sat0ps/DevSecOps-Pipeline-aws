#!/usr/bin/env bash
set -euo pipefail
IMAGE="ghcr.io/${GITHUB_REPOSITORY_OWNER}/devsecopspipeline.aws"
TAG="${1:-dev}"
docker build -t "${IMAGE}:${TAG}" .
docker push "${IMAGE}:${TAG}"
