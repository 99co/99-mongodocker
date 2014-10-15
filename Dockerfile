FROM ubuntu:14.04

MAINTAINER Ruiwen <ruiwen@99.co>

RUN apt-get update && apt-get install -y mongodb=1:2.4.9-1ubuntu2
ADD files/mongodb/mongodb.conf /etc/mongodb.conf

EXPOSE 27017

CMD ["/usr/bin/mongod", "-f", "/etc/mongodb.conf", "--dbpath", "/var/lib/mongodb"]
