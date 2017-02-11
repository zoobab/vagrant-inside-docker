FROM ubuntu:16.04
MAINTAINER Benjamin Henrion <zoobab@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -yy virtualbox vagrant virtualbox-guest-additions-iso vim
# using Ubuntu xenial
RUN mkdir -pv /root/vagrant-xenial
WORKDIR /root/vagrant-xenial
RUN vagrant init ubuntu/xenial64
RUN vagrant box add ubuntu/xenial64
