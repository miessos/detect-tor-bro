FROM ubuntu:14.04

MAINTAINER miessos, https://github.com/miessos

ENV DEBIAN_FRONTEND noninteractive

RUN ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
