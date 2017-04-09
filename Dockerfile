FROM alpine
MAINTAINER Takumi Takahashi <takumiiinn@gmail.com>
RUN apk add --no-cache ca-certificates wget openssl gcc musl-dev linux-headers make ncurses perl jq \
 && update-ca-certificates
