#!/bin/bash

source .env

echo "do-view version ${VERSION}" > Container-Root/version.txt

# Build Docker image
docker image build ${BUILD_OPTS} -t ${REGISTRY}${IMAGE}${TAG} .

