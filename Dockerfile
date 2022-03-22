FROM ruby:2.4.1

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential nodejs libpq-dev imagemagick zlib1g-dev apt-utils \
  libmagickwand-dev libmagickcore-dev vim

ENV INSTALL_PATH /workspace/rails_app/ruby-dev-test-2
ENV BUNDLE_PATH $INSTALL_PATH/box

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

ADD Gemfile $INSTALL_PATH/Gemfile
ADD Gemfile.lock $INSTALL_PATH/Gemfile

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .
