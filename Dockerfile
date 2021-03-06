FROM quay.io/aptible/ubuntu:16.04
MAINTAINER Mihir Parikh <mihir787@gmail.com>

# -----------------------------------------------------
# System prerequisites
RUN apt-get update && apt-get install -y \
  curl \
  git \
  libpq-dev \
  postgresql-client \
  python-dev \
  python-pip

RUN pip install dbt==0.10.1

WORKDIR /opt/app

ADD . /opt/app
