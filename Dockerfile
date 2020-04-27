FROM alpine:3.11

COPY LICENSE README.md /

RUN apk add --no-cache bash git libssh2-dev build-base

RUN wget https://curl.haxx.se/download/curl-7.69.1.tar.gz \
  && tar -xf curl-7.69.1.tar.gz \
  && cd curl-7.69.1 \
  && ./configure --with-libssh2=/usr/local \
  && make \
  && make install \
  && cd .. \
  && rm -rf curl-7.69.1.tar.gz curl-7.69.1

RUN curl https://raw.githubusercontent.com/git-ftp/git-ftp/1.6.0/git-ftp > /bin/git-ftp

RUN chmod 755 /bin/git-ftp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
