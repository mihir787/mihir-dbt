FROM quay.io/aptible/ubuntu:16.04
MAINTAINER Mihir Parikh <mihir@healthify.us>

# -----------------------------------------------------
# System prerequisites
RUN apt-get update && apt-get install -y \
  curl \
  git \
  libpq-dev \
  mysql-client \
  postgresql-client \
  python-dev \
  python-pip

RUN pip install dbt==0.10.1

WORKDIR /opt/app

ADD . /opt/app

RUN set -a && \
  dbt deps \
    --profiles-dir $DBT_PROFILES_DIR \
    --profile $DBT_PROFILE
