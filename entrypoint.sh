#!/bin/sh
set -e

echo ""

# docker login
echo ${INPUT_PASSWORD} | docker login -u ${INPUT_USERNAME} --password-stdin docker.pkg.github.com

CURRENT_IMAGE="docker.pkg.github.com/${INPUT_REGISTRY}/${INPUT_IMAGE}:${INPUT_CURRENT_TAG}"
NEW_IMAGE="docker.pkg.github.com/${INPUT_REGISTRY}/${INPUT_IMAGE}:${INPUT_NEW_TAG}"

# pull, tag, push
docker pull ${CURRENT_IMAGE}
docker tag ${CURRENT_IMAGE} ${NEW_IMAGE}
docker push ${NEW_IMAGE}

# logout
docker logout

