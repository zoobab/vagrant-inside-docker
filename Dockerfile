FROM ubuntu:16.04
MAINTAINER Benjamin Henrion <zoobab@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -yy virtualbox vagrant virtualbox-guest-additions-iso vim
RUN mkdir -pv /root/vagrant-openwrt
WORKDIR /root/vagrant-openwrt
RUN vagrant init lifeeth/openwrt-15.05-x86
