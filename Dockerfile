FROM ruby:2.7.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn

WORKDIR /projects

COPY Gemfile Gemfile.lock package.json yarn.lock ./

RUN bundle install
RUN yarn install --check-files

COPY  . .

CMD ["rails", "s", "-b", "0.0.0.0"]
