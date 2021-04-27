FROM ruby:3.0.1-alpine
LABEL maintainer="thibaut.poullain@ydrazil.fr"

ENV LANG=C.UTF-8

# Add basic packages
RUN apk add --no-cache \
      build-base \
      git \
      tzdata \
      file

WORKDIR /app

# Install standard gems
COPY Gemfile* /app

RUN bundle lock --add-platform x86_64-linux-musl && \
    bundle config --local frozen 1 && \
    bundle check || bundle install -j4 --retry 3 && \
    bundle clean --force && \
    rm -rf /usr/local/bundle/cache/*.gem && \
    find /usr/local/bundle/gems/ -name "*.c" -delete && \
    find /usr/local/bundle/gems/ -name "*.o" -delete

# Copy the whole application folder into the image
COPY . /app

EXPOSE 3000

CMD /bin/ash

