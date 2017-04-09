FROM alpine
MAINTAINER Takumi Takahashi <takumiiinn@gmail.com>
RUN apk add --no-cache ca-certificates wget openssl gcc musl-dev linux-headers make ncurses perl gnupg jq \
 && update-ca-certificates \
 && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 38DBBDC86092693E
