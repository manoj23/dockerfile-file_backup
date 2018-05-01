FROM alpine:3.7
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
RUN apk add --no-cache coreutils git inotify-tools openssh
ADD https://raw.githubusercontent.com/manoj23/file_backup/aaf2a8ffad5938cf9c29bfdd10a660e5d1a22101/file_backup.sh /usr/local/bin/
COPY file_backup_main.sh /usr/local/bin/
ENTRYPOINT file_backup_main.sh
