#
#     docker build -t branch14/acheron .
#     docker run branch14/acheron
#
FROM ruby:2.1

MAINTAINER phil@200ok.ch

ADD . /acheron

RUN apt-get -y update \
    && apt-get install libssl-dev \
    && (cd acheron && bundle install)

WORKDIR /acheron/bin

CMD ./acheron run
