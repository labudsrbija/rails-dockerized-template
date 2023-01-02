FROM ruby:3.2.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /zilla
WORKDIR /zilla

ADD Gemfile /zilla/Gemfile
ADD Gemfile /zilla/Gemfile.lock

RUN bundle install

ADD . /zilla
