ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}
ARG DOCKERFILE_HASH
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
LABEL org.opencontainers.image.source=https://github.com/manoj23/dockerfile-file_backup/
ARG ALPINE_VERSION
LABEL ALPINE_VERSION=${ALPINE_VERSION}
LABEL DOCKERFILE_HASH=${DOCKERFILE_HASH}
RUN apk add --no-cache coreutils git inotify-tools openssh
ADD https://raw.githubusercontent.com/manoj23/file_backup/da3cce57538db7fedf10e302ea8d9569d57280ae/file_backup.sh /usr/local/bin/
COPY file_backup_main.sh /usr/local/bin/
ENTRYPOINT file_backup_main.sh
