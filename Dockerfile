FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y nodejs sqlite3 git

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN gem install bundler -v "~>1.16"

RUN bundle install

COPY docker/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]