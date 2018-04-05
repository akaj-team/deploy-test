FROM ruby:2.5

RUN apt-get update \
    && apt-get install -y \
        postgresql \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

CMD bundle exec rubocop --fail-level error --require rubocop/formatter/checkstyle_formatter --format RuboCop::Formatter::CheckstyleFormatter --no-color --rails --out tmp/rubocop-checkstyle.xml \
&& bundle exec danger