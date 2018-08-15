FROM ruby:2.5-stretch as builder
LABEL author="Andrew Porter <partydrone@me.com>"

ENV RAILS_MAJOR 5.2
ENV RAILS_VERSION 5.2.1

RUN gem install rails -v ${RAILS_VERSION}

FROM ruby:2.5-alpine
COPY --from=builder /usr/local/bundle /usr/local/bundle

ENTRYPOINT [ "rails" ]
CMD [ "-h" ]
