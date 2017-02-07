FROM ubuntu:16.04
MAINTAINER Benjamin Henrion <zoobab@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -yy virtualbox vagrant
RUN mkdir -pv /root/workdir
WORKDIR /root/workdir
RUN vagrant init hashicorp/precise64
RUN vagrant up
