FROM ruby:2.4.1-alpine

RUN apk add --update build-base nodejs tzdata postgresql-dev postgresql-client libxslt-dev libxml2-dev imagemagick sqlite-dev shared-mime-info

CMD tail -f /dev/null
