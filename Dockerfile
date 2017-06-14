FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y ruby-bundler && \
    apt-get install -y ruby-dev && \
    apt-get install -y wget && \
    apt-get install -y zlib1g-dev

RUN gem install --no-ri --no-rdoc geminabox -v 0.13.4

RUN gem install rubygems-update
RUN update_rubygems
RUN gem update --system

RUN wget https://raw.githubusercontent.com/rubygems/rubygems/master/lib/rubygems/ssl_certs/index.rubygems.org/GlobalSignRootCA.pem && mv GlobalSignRootCA.pem /usr/local/lib/site_ruby/2.3.0/rubygems/ssl_certs/GlobalSignRootCA.pem

RUN mkdir -p /webapps/geminabox/config && \
    mkdir -p /webapps/geminabox/data

WORKDIR /webapps/geminabox/config
COPY assets/config.ru /webapps/geminabox/config/config.ru

EXPOSE 9292
ENTRYPOINT ["rackup", "--host", "0.0.0.0"]
