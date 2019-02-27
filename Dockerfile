FROM ruby:2.6.1-alpine3.9

ARG APP_ROOT=/ending_note
WORKDIR $APP_ROOT

RUN apk add --no-cache \
      build-base \
      curl-dev \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      less \
      mysql-dev \
      nodejs \
      ruby-dev \
      tzdata \
      yaml \
      yaml-dev

COPY Gemfile Gemfile.lock ./
RUN bundle install
