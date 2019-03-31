FROM ruby:2.6

RUN apt-get update -qq && apt-get -y install \
    build-essential \
    libpq-dev \
    nodejs \
    mysql-client

RUN mkdir /rails-app

COPY rails-app/Gemfile* /rails-app/
COPY build/rails-app-entrypoint.sh /tmp

WORKDIR /rails-app

RUN gem install bundler && bundle install
ENTRYPOINT /tmp/rails-app-entrypoint.sh
