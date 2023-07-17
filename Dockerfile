FROM ruby:3.1.2

# Install some utilities
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev iputils-ping

# Set /api as the main workdir
RUN mkdir -p /api
WORKDIR /api

# Install deps
ADD Gemfile /api/Gemfile
ADD Gemfile.lock /api/Gemfile.lock
RUN bundle install

ADD . /api

# Use puma as prod server
CMD bundle exec puma -C /api/config/puma.rb