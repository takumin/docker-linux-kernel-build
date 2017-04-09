FROM alpine
MAINTAINER Takumi Takahashi <takumiiinn@gmail.com>
RUN apk add --no-cache ca-certificates wget openssl gcc musl-dev linux-headers make ncurses perl gnupg pinentry jq xz \
 && update-ca-certificates \
 && export GPG_TTY=$(tty) \
 && gpg --batch --pinentry-mode loopback --passphrase '' --quick-gen-key 'John Doe' \
 && gpg --batch --keyserver hkp://keys.gnupg.net:80 --recv-keys 79BE3E4300411886 \
 && gpg --batch --keyserver hkp://keys.gnupg.net:80 --recv-keys 38DBBDC86092693E \
 && gpg --batch --quick-sign-key 'ABAF 11C6 5A29 70B1 30AB  E3C4 79BE 3E43 0041 1886' \
 && gpg --batch --quick-sign-key '647F 2865 4894 E3BD 4571  99BE 38DB BDC8 6092 693E' \
 && gpg --batch --list-sigs \
 && echo done!
