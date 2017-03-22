FROM ruby:2.4.0
MAINTAINER david.morcillo@codegram.com

ARG rails_env=production
ARG secret_key_base=

ENV APP_HOME /code
ENV RAILS_ENV $rails_env
ENV SECRET_KEY_BASE $secret_key_base

RUN apt-get update

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash && \
    apt-get install -y nodejs

ADD Gemfile /tmp/Gemfile
ADD Gemfile.lock /tmp/Gemfile.lock
RUN cd /tmp && bundle install

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME

CMD bundle exec rake db:migrate assets:precompile && bundle exec passenger start -p ${PORT:-3000} --max-pool-size ${WEB_CONCURRENCY:-5}
