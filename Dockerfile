FROM ubuntu:20.04

LABEL maintainer="haruki_yoshida"

LABEL description="ubuntu with rbenv image"

# Require to install ruby
RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev

# install rbenv
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv && \
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# install ruby-build
RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

RUN mkdir /workdir

VOLUME /workdir
WORKDIR /workdir