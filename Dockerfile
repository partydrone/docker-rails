FROM ruby:2.6-stretch as builder
LABEL author="Andrew Porter <partydrone@icloud.com>"

ENV RAILS_MAJOR 6.0
ENV RAILS_VERSION 6.0.3.2

RUN gem install rails -v ${RAILS_VERSION}

ENTRYPOINT [ "rails" ]
CMD [ "-h" ]
