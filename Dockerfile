FROM ruby:2.7.5-slim
#FROM ruby:3.1.2-slim
RUN mkdir /multicare
WORKDIR /multicare
COPY . /multicare
RUN rm Gemfile.lock
RUN apt update -qq && apt install -yq --no-install-recommends \
  build-essential libsqlite3-dev \
  && rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN gem update --system && gem install bundler && bundle install
EXPOSE 3000
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
