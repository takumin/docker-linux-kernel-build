FROM alpine
MAINTAINER Takumi Takahashi <takumiiinn@gmail.com>
RUN apk add --no-cache ca-certificates wget openssl gcc musl-dev make ncurses \
 && update-ca-certificates
