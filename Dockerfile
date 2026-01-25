ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION:-latest}
ARG DOCKERFILE_HASH
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
LABEL org.opencontainers.image.source=https://github.com/manoj23/dockerfile-file_backup/
ARG ALPINE_VERSION
LABEL ALPINE_VERSION=${ALPINE_VERSION}
LABEL DOCKERFILE_HASH=${DOCKERFILE_HASH}
RUN apk add --no-cache coreutils git inotify-tools openssh
ADD https://raw.githubusercontent.com/manoj23/file_backup/d99847a47ecef44dc3ff27e1d367ed17bd5f4845/file_backup.sh /usr/local/bin/
COPY file_backup_main.sh /usr/local/bin/
ENTRYPOINT [ "/usr/local/bin/file_backup_main.sh" ]
