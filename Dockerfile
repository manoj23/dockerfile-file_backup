FROM alpine:3.7
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
RUN apk add --no-cache coreutils git inotify-tools openssh
ADD https://raw.githubusercontent.com/manoj23/file_backup/959b4d76350186e6ccc1750d6eb022f46baedd5a/file_backup.sh /usr/local/bin/
COPY file_backup_main.sh /usr/local/bin/
ENTRYPOINT file_backup_main.sh
