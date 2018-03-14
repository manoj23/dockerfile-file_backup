#!/bin/sh

. /usr/local/bin/file_backup.sh

[ -z "$ENV_FILE" ] && echo "ENV_FILE is not defined" && exit 1
[ -z "$ENV_GIT_REPOSITORY" ] && echo "ENV_GIT_REPOSITORY" && exit 2

file_backup "$ENV_FILE" "$ENV_GIT_REPOSITORY"
