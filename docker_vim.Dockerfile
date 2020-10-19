FROM alpine:latest

MAINTAINER molecula451

RUN mkdir -p /golem/vim
WORKDIR /golem/work

# Update & install packages for installing vim
RUN apk update && \
    apk add wget gcc libc-dev make acl-dev ncurses-dev

RUN wget --quiet --output-document - \
    "https://github.com/vim/vim/archive/master.tar.gz" | \
    tar xz --directory=/golem/vim --strip-components=1

VOLUME /golem/work /golem/output /golem/resource
