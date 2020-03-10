FROM alpine:3.11

COPY LICENSE README.md /

RUN apk add --no-cache bash curl git openssh

RUN curl https://raw.githubusercontent.com/git-ftp/git-ftp/master/git-ftp > /bin/git-ftp

RUN chmod 755 /bin/git-ftp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
