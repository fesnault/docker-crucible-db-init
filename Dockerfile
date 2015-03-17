FROM ubuntu:latest
MAINTAINER Frederic Esnault <esnault.frederic@gmail.com>

RUN apt-get -y -qq install postgresql-client

ADD init-db.sh /init-db.sh
RUN chmod +x /init-db.sh


CMD ["/init-db.sh"]
