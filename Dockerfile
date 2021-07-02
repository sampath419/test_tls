FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app 
RUN gem install bundler -v 2.1.2
ADD . /app
RUN bundle install
