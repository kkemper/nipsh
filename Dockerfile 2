# Specify ruby version
FROM ruby:2.2.1

#Set-up postgresql
RUN apt-get update -qq && apt-get install -y build-essential
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

#Create rails app in the container
RUN mkdir /nipsh
WORKDIR /nipsh
COPY Gemfile* ./
RUN bundle install
ADD . /nipsh

#Make port 3000 available.
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]