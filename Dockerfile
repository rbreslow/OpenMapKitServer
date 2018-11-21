FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src

COPY . /usr/local/src

RUN set -ex; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
      build-essential \
      default-jre-headless \
      git \
      nodejs \
      npm \
            yarn \
      python \
      python-dev \
      python-pip \
      python-setuptools \
      python-wheel \
  ; \
  rm -rf /var/lib/apt/lists/*;

RUN set -ex; \
  pip install --no-cache-dir -r requirements.txt; \
  git submodule init; \
  git submodule update; \
  npm install; \
        npm install -g yarn;

RUN set -ex; \
        yarn build;
