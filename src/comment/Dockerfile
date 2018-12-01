FROM ruby:2.2

LABEL \
    maintainer="justdewil@gmail.com" \
    name="Reddit App Comment service " \
    image="vstaf/comment"

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN set -x \ 
    && apt-get update -qq \
    && apt-get install --no-install-recommends --no-install-suggests -y build-essential \
    && rm -rf /var/lib/apt/lists/* 

COPY Gemfile* $APP_HOME/
RUN set -x \ 
    && bundle install --without development test \
    && apt-get autoremove -y --purge \
    && apt-get clean \
    && rm -rf /usr/lib/ruby/gems/*/cache/* /var/cache/apk/* /tmp/* /var/tmp/* 

COPY . $APP_HOME

ENV COMMENT_DATABASE_HOST comment_db
ENV COMMENT_DATABASE comments

CMD ["puma"]
