FROM ruby:2.2.1

RUN apt-get update -qq && apt-get install -y build-essential
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /nipsh
WORKDIR /nipsh
COPY Gemfile* ./
RUN bundle install
ADD . /nipsh

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]