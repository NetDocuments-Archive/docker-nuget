FROM  ubuntu:xenial-20161121
MAINTAINER Spencer Owen <sowen@netdocuments.com>

RUN apt-get update -qq; apt-get install zip curl -y

# http://jaredmarkell.com/docker-and-locales/
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 
