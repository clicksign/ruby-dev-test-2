FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y nodejs sqlite3

RUN gem install bundler

WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY . .
