FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y ruby-bundler && \
    apt-get install -y ruby-dev && \
    apt-get install -y zlib1g-dev

RUN gem install --no-ri --no-rdoc geminabox -v 0.13.4
RUN mkdir -p /webapps/geminabox/config && \
    mkdir -p /webapps/geminabox/data

WORKDIR /webapps/geminabox/config
COPY assets/config.ru /webapps/geminabox/config/config.ru

EXPOSE 9292
ENTRYPOINT ["rackup", "--host", "0.0.0.0"]