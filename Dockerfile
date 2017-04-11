FROM alpine
MAINTAINER Takumi Takahashi <takumiiinn@gmail.com>
COPY *.asc /root/
RUN apk add --no-cache ca-certificates wget openssl gcc musl-dev linux-headers make ncurses perl gnupg pinentry jq xz \
 && update-ca-certificates \
 && gpg --batch --import 0x79BE3E4300411886 \
 && gpg --batch --import 0x38DBBDC86092693E \
 && echo Complete!
