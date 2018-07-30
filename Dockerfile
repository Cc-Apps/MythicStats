FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /MythicStats
WORKDIR /MythicStats

COPY Gemfile /MythicStats/Gemfile
COPY Gemfile.lock /MythicStats/Gemfile.lock

RUN bundle install

COPY . /MythicStats