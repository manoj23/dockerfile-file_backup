#!/usr/bin/env bash

set -e

ALPINE_BUILDER_VERSION="3.20.3"
USER="manoj23"
REPO="file_backup"
DOCKERFILE_HASH=$(git rev-parse --short HEAD)
BUILDER="alpine-${ALPINE_BUILDER_VERSION}"

docker_build_tag_and_push()
{
	IMAGE="$1"
	TAG="${IMAGE}:${BUILDER}"

	docker build "https://github.com:/${USER}/dockerfile-${REPO}.git" \
		--build-arg "ALPINE_VERSION=${ALPINE_BUILDER_VERSION}" \
		--build-arg "DOCKERFILE_HASH=${DOCKERFILE_HASH}" \
		-t "$TAG"

	docker tag "${TAG}" "ghcr.io/${USER}/${TAG}"
	docker push "ghcr.io/${USER}/${TAG}"
}

docker_build_tag_and_push "file_backup"
