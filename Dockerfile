FROM debian:jessie

MAINTAINER miessos, https://github.com/miessos

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y build-essential \
libncurses5-dev \
g++ \
bison \
flex \
libmagic-dev \
libgeoip-dev \
libssl-dev \
python-dev \
libpcap-dev \
swig2.0 \
libssl-dev \
cmake \
make

# Install Bro
WORKDIR /tmp
ADD https://www.bro.org/downloads/release/bro-2.4.1.tar.gz /tmp/
RUN tar -zxf bro-2.4.1.tar.gz
WORKDIR /tmp/bro-2.4.1
RUN ./configure && make && make install





